bl_info = {
        "name": "Export GameMaker 3D Model Script (.txt)",
        "author": "Martin Crownover",
        "version": (1, 4, 6),
        "blender": (2, 7, 6),
        "location": "File > Export",
        "description": "Export 3D Model Scripts for GameMaker: Studio",
        "warning": "",
        "wiki_url": "",
        "tracker_url": "http://martincrownover.com/blender-addon-gm3d",
        "category": "Import-Export"}

'''
Usage Notes:
    Build your 3D model, select it, then go to File > Export > GameMaker 3D Model Script.
    Set options as desired, export, and then open the resulting text file and copy into a script in GameMaker.
    When run, this script will create the model and return the ID. Use the ID to draw the model like any other.
    Using Edge Split and marking sharp edges is recommended, as is setting up a proper UV map.

Additional links:
    url: http://martincrownover.com
    e-mail: martin {at} martincrownover {dot} com
    
Additional credits:
    Jeff LaMarche {http://iphonedevelopment.blogspot.com}
    BenRK

'''

import bpy
from bpy.props import *
import mathutils, math, struct
import os
from os import remove
import time
import bpy_extras
from bpy_extras.io_utils import ExportHelper 
import time
import shutil
import bpy
import mathutils
from math import radians

def prepMesh(object, flippy):
        bneedtri = False
        scene = bpy.context.scene
        bpy.ops.object.mode_set(mode='OBJECT')
        for i in scene.objects: i.select = False
        object.select = True
        scene.objects.active = object

        print("Checking mesh if needs to convert quad to Tri...")
        object.data.update(calc_tessface=True)
        for face in object.data.tessfaces:
                if (len(face.vertices) > 3):
                        bneedtri = True
                        break
        
        bpy.ops.object.mode_set(mode='OBJECT')
        #moved copy operation here so we don't do anything irreversible to the existing model
        me_da = object.data.copy()
        me_ob = object.copy()
        #note two copy two types else it will use the current data or mesh
        me_ob.data = me_da
        bpy.context.scene.objects.link(me_ob) #link the object to the scene #current object location
        #moved this stuff outside the triangulate operation
        for i in scene.objects: i.select = False #deselect all objects
        me_ob.select = True
        scene.objects.active = me_ob #set the mesh object to current
        bpy.ops.object.mode_set(mode='EDIT')
        bpy.ops.mesh.select_all(action='SELECT')
        
        if bneedtri == True:
                bpy.ops.mesh.quads_convert_to_tris()
                
        bpy.context.scene.update()
        bpy.ops.object.mode_set(mode='OBJECT') # set it in object
                                
        return me_ob

def writeString(file, string):
        file.write(bytes(string, 'UTF-8'))
        
def do_export(context, props, filepath):
        ob = context.active_object
        me_ob = prepMesh(ob, props.flip_y)
        current_scene = context.scene        
        apply_modifiers = props.apply_modifiers
        
        #apply the object in its current state
        bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
        
        if props.flip_y:
                bpy.context.object.scale[1] = -1;
                bpy.ops.object.transform_apply(location=False, rotation=False, scale=True)
                bpy.ops.object.mode_set(mode='EDIT')
                bpy.ops.mesh.flip_normals()
                bpy.ops.object.mode_set(mode='OBJECT')

        mesh = me_ob.to_mesh(current_scene, apply_modifiers, 'PREVIEW')
        
        basename = mesh.name.capitalize()
        
        #if props.world_space:
                #mesh.transform(ob.matrix_world)

        if props.rot_x90:
                mesh.transform(mathutils.Matrix.Rotation(radians(90.0), 4, 'X'))
                #should consider doing this like the Y flip in the future

        mesh.transform(mathutils.Matrix.Scale(props.mod_scale, 4))

        file = open(filepath, "wb") 

        if props.use_alt_export_style:
                writeString(file, 'var temp, tx, ty, tz;\n\
temp = argument0;\n\
tx = argument1;\n\
ty = argument2;\n\
tz = argument3;\n\
d3d_model_primitive_begin(temp,pr_trianglelist);\n')
        else:
                writeString(file, 'var temp = d3d_model_create();\n\
d3d_model_primitive_begin(temp,pr_trianglelist);\n')

        if len(mesh.uv_textures) > 0:
                uv_layer = mesh.tessface_uv_textures.active
                for face in mesh.tessfaces:
                        faceUV = uv_layer.data[face.index]
                        i=0
                        for index in face.vertices:
                                if len(face.vertices) == 3:
                                        vert = mesh.vertices[index]
                                        writeString(file, 'd3d_model_vertex_normal_texture(temp, ')
                                        if props.use_alt_export_style:
                                                  writeString(file, 'tx+(%f), ty+(%f), tz+(%f), ' % (vert.co.x, vert.co.y, vert.co.z) )
                                        else:
                                                  writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                        writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                        if props.flip_uvs:
                                                writeString(file, '%f, %f' % (faceUV.uv[i][0], 1-faceUV.uv[i][1]) )
                                        else:
                                                  writeString(file, '%f, %f' % (faceUV.uv[i][0], faceUV.uv[i][1]) )
                                        writeString(file, ');\n')
                                        i+=1
        else:
                uv_layer = mesh.tessface_uv_textures.active
                for face in mesh.tessfaces:
                        for index in face.vertices:
                                if len(face.vertices) == 3:
                                        vert = mesh.vertices[index]
                                        writeString(file, 'd3d_model_vertex_normal(temp, ')
                                        writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                        writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                        writeString(file, ');\n')
        if props.use_alt_export_style:
                writeString(file, 'd3d_model_primitive_end(temp);')
        else:
                writeString(file, 'd3d_model_primitive_end(temp);\n\
return temp;')

        file.flush()
        file.close()
        
        #delete the new copy now
        bpy.context.scene.objects.unlink(me_ob)
        #reselect the original object
        ob.select = True
        bpy.context.scene.objects.active = ob

        return True


###### EXPORT OPERATOR #######
class Export_gm3d(bpy.types.Operator, ExportHelper):
        '''Exports the active object as a GameMaker: Studio 3D model script'''
        bl_idname = "export_object.txt"
        bl_label = "Export GameMaker 3D Model Script"
        filename_ext = ".txt"
        filter_glob = StringProperty(
                default="*.txt",
                options={'HIDDEN'},
                )
        
        apply_modifiers = BoolProperty(name="Apply modifiers",
          description="Applies Modifiers to the Object before exporting",
          default=True)

        rot_x90 = BoolProperty(name="Rotate X by 90",
          description="Rotate 90 degrees around X to convert to Y-up",
          default=False)
                                                        
        flip_y = BoolProperty(name="Flip Y coordinates",
          description="Flips the Y coordinates of the object",
          default=True)
                                                        
        flip_uvs = BoolProperty(name="Flip UV vertically",
          description="Flips the UV coordinates on the Y axis",
          default=True)
                                                        
        mod_scale = FloatProperty(name="Scale",
          description="Adjusts the scale of the model",
          default=1.0)
          
        use_alt_export_style = BoolProperty(name="Use alternate script style",
          description="Outputs the model script with extra placement arguments baked in, allowing for more easily modular pieces to be added to existing models",
          default=False)
        
        @classmethod
        def poll(cls, context):
                return context.active_object.type in ['MESH', 'CURVE', 'SURFACE', 'FONT']

        def execute(self, context):
                start_time = time.time()
                print('\n_____START_____')
                props = self.properties
                filepath = self.filepath
                filepath = bpy.path.ensure_ext(filepath, self.filename_ext)

                exported = do_export(context, props, filepath)
                
                if exported:
                        print('finished export in %s seconds' %((time.time() - start_time)))
                        print(filepath)
                        
                return {'FINISHED'}

        def invoke(self, context, event):
                wm = context.window_manager

                if True:
                        # File selector
                        wm.fileselect_add(self) # will run self.execute()
                        return {'RUNNING_MODAL'}
                elif True:
                        # search the enum
                        wm.invoke_search_popup(self)
                        return {'RUNNING_MODAL'}
                elif False:
                        # Redo popup
                        return wm.invoke_props_popup(self, event) #
                elif False:
                        return self.execute(context)


### REGISTER ###

def menu_func(self, context):
        self.layout.operator(Export_gm3d.bl_idname, text="GameMaker 3D Model Script (.txt)")

def register():
        bpy.utils.register_module(__name__)

        bpy.types.INFO_MT_file_export.append(menu_func)

def unregister():
        bpy.utils.unregister_module(__name__)

        bpy.types.INFO_MT_file_export.remove(menu_func)

if __name__ == "__main__":
        register()