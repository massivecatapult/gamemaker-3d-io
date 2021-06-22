bl_info = {
        "name": "Export for GameMaker (.gml)",
        "author": "Martin Crownover",
        "version": (1, 6, 1),
        "blender": (2, 7, 9),
        "location": "File > Export",
        "description": "Export 3D models for use GameMaker: Studio, as scripts, models, and raw comma-separated data",
        "warning": "",
        "wiki_url": "",
        "tracker_url": "http://martincrownover.com/blender-addon-gm3d",
        "category": "Import-Export"}

"""
Usage Notes:
    Build your 3D model, select it, then go to File > Export > GameMaker 3D.
    Set options as desired, export, and then if you export the object as:
    - A GML script, open the file and add it to GameMaker as a script. When run inside your game, this script will create the model and return the ID. Use the ID to draw the model like any other.
    - A D3D model, change the extension to whatever you like, then use the d3d_model_load() function in GameMaker to load the model.
    - Raw data, you can use your own method to load up the resulting vertex data however you need.
    Using Edge Split and marking sharp edges is recommended, as is setting up a proper UV map.

Additional links:
    url: http://martincrownover.com
    e-mail: martin {at} martincrownover {dot} com
    
Additional credits:
    Jeff LaMarche {http://iphonedevelopment.blogspot.com}
    BenRK
    Arnold Vermeulen
"""

import bpy
from bpy.props import *
import mathutils, math, struct
import os
from os import remove
import bpy_extras
from bpy_extras.io_utils import ExportHelper
import shutil
from math import radians

#define the prepMech function, which copies the targeted object and performs operations on it to prepare it for export
def prepMesh(object, apply_modifiers):
        #this function copies the current object, then cleans it up before returning it for export
        need_to_triangulate = False
        
        #enter object mode and deselect all other objects
        bpy.ops.object.mode_set(mode='OBJECT')
        for i in bpy.context.scene.objects: i.select = False
        object.select = True
        bpy.context.scene.objects.active = object
        
        #copy the object and its data so that we don't perform any permanent operations on the original model
        object_copy = object.copy()
        object_copy.data = object.data.copy()
        bpy.context.scene.objects.link(object_copy)
        
        #deselect all again and then set the object copy to be the selected object
        for i in bpy.context.scene.objects: i.select = False
        object_copy.select = True
        bpy.context.scene.objects.active = object_copy
        
        #apply all modifiers, if requested
        if apply_modifiers:
                bpy.ops.object.convert(target='MESH')

        #check to see if the object needs to have quads converted to triangles
        object.data.update(calc_tessface=True)
        for face in object.data.tessfaces:
                if (len(face.vertices) > 3):
                        need_to_triangulate = True
                        break
        
        #enter edit mode and select all verts
        bpy.ops.object.mode_set(mode='EDIT')
        bpy.ops.mesh.select_all(action='SELECT')
        
        #if we need to triangulate the object, do it now
        if need_to_triangulate == True:
                bpy.ops.mesh.quads_convert_to_tris()
                
        #update the scene to reflect the changes we've made, then enter object mode again
        bpy.context.scene.update()
        bpy.ops.object.mode_set(mode='OBJECT') # set it in object
                                
        return object_copy

#define the writeString function, which writes the indicated string to the target file
def writeString(file, string):
        #a simple function for writing strings to an open file
        file.write(bytes(string, 'UTF-8'))

#define the do_export function, which runs prepMesh, performs a few other prep operations, and actually outputs the new file
def do_export(context, props, filepath):
        #perform additional operations and export the object script for GameMaker
        
        #run the prepMesh function on the object, optionally applying all modifiers
        object_original = context.active_object
        object_copy = prepMesh(object_original, props.apply_modifiers)
        
        #apply the object in its current state
        bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
        
        #if we want to flip the object on its Y axis, do it now, then apply the model and flip the normals
        if props.flip_y:
                bpy.context.object.scale[1] = -1;
                bpy.ops.object.transform_apply(location=False, rotation=False, scale=True)
                bpy.ops.object.mode_set(mode='EDIT')
                bpy.ops.mesh.flip_normals()
                bpy.ops.object.mode_set(mode='OBJECT')

        #grab mesh data for further operations
        mesh = object_copy.to_mesh(context.scene, False, 'PREVIEW')
        
        #if we want to rotate the object 90 degrees on the X axis, do it now
        if props.rot_x90:
                mesh.transform(mathutils.Matrix.Rotation(radians(90.0), 4, 'X'))
                #should consider doing this like the Y flip in the future

        #if we want to adjust the scale of the object before output, do it now
        mesh.transform(mathutils.Matrix.Scale(props.mod_scale, 4))

        #open the file for writing
        file = open(filepath, "wb")
        
        #get script name from the filepath - may want to check if this is blank at some point int he future?
        base_name = os.path.basename(filepath)
        script_name = os.path.splitext(base_name)[0]
                
        #branch the output here, depending on what the user wants to export
        if props.output_format == 'SCRIPT':
        #script output
                #add extra text to the script if it's supposed to be importable
                if props.make_importable:
                        writeString(file, '#define scr_'+script_name+'\n\n')
                #add extra variables to the script if we're using the alternate/realtive output style
                if props.use_alt_export_style:
                        writeString(file, 'var temp, tx, ty, tz;\ntemp = argument0;\ntx = argument1;\nty = argument2;\ntz = argument3;\n')
                else:
                        writeString(file, 'var temp = d3d_model_create();\n')
                    
                #start writing the mesh data to the file
                if props.model_type == 'TRILIST':
                #if outputting a triangle list...
                        writeString(file, 'd3d_model_primitive_begin(temp,pr_trianglelist);\n')
                        if len(mesh.uv_textures) > 0:
                        #if the model has a UV map
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
                        #else if the model has no UV map
                                uv_layer = mesh.tessface_uv_textures.active
                                for face in mesh.tessfaces:
                                        for index in face.vertices:
                                                if len(face.vertices) == 3:
                                                        vert = mesh.vertices[index]
                                                        writeString(file, 'd3d_model_vertex_normal(temp, ')
                                                        if props.use_alt_export_style:
                                                                writeString(file, 'tx+(%f), ty+(%f), tz+(%f), ' % (vert.co.x, vert.co.y, vert.co.z) )
                                                        else:
                                                                writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                                        writeString(file, '%f, %f, %f' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                                        writeString(file, ');\n')
                        #end the model output
                        if props.use_alt_export_style:
                                writeString(file, 'd3d_model_primitive_end(temp);')
                        else:
                                writeString(file, 'd3d_model_primitive_end(temp);\nreturn temp;')
                                
                elif props.model_type == 'LINELIST':
                #if outputting a line list...
                        writeString(file, 'd3d_model_primitive_begin(temp,pr_linelist);\n')
                        for edge in object_copy.data.edges:
                                for index in edge.vertices:
                                        if len(edge.vertices) == 2:
                                                vert = mesh.vertices[index]
                                                writeString(file, 'd3d_model_vertex(temp, ')
                                                if props.use_alt_export_style:
                                                        writeString(file, 'tx+(%f), ty+(%f), tz+(%f)' % (vert.co.x, vert.co.y, vert.co.z) )
                                                else:
                                                        writeString(file, '%f, %f, %f' % (vert.co.x, vert.co.y, vert.co.z) )
                                                writeString(file, ');\n')
                        #end the model output
                        if props.use_alt_export_style:
                                writeString(file, 'd3d_model_primitive_end(temp);')
                        else:
                                writeString(file, 'd3d_model_primitive_end(temp);\nreturn temp;')
                                
                else:
                #if outputting a point list...
                        writeString(file, 'd3d_model_primitive_begin(temp,pr_pointlist);\n')
                        for vert in object_copy.data.vertices:
                                writeString(file, 'd3d_model_vertex(temp, ')
                                if props.use_alt_export_style:
                                        writeString(file, 'tx+(%f), ty+(%f), tz+(%f)' % (vert.co.x, vert.co.y, vert.co.z) )
                                else:
                                        writeString(file, '%f, %f, %f' % (vert.co.x, vert.co.y, vert.co.z) )
                                writeString(file, ');\n')
                        #end the model output
                        if props.use_alt_export_style:
                                writeString(file, 'd3d_model_primitive_end(temp);')
                        else:
                                writeString(file, 'd3d_model_primitive_end(temp);\nreturn temp;')
                                
        elif props.output_format == 'MODEL':
        #model output
                writeString(file, '100\n')
                model_output_string = '';
                model_type_num = 4;
                vert_count = 2;
                #build the model into a string, then write that to the file later
                #start writing the mesh data to the file
                if props.model_type == 'TRILIST':
                #if outputting a triangle list...
                        model_type_num = 4;
                        if len(mesh.uv_textures) > 0:
                        #if the model has a UV map
                                uv_layer = mesh.tessface_uv_textures.active
                                for face in mesh.tessfaces:
                                        faceUV = uv_layer.data[face.index]
                                        i=0
                                        for index in face.vertices:
                                                if len(face.vertices) == 3:
                                                        vert = mesh.vertices[index]
                                                        model_output_string += '9     '
                                                        model_output_string += '%f     %f     %f     ' % (vert.co.x, vert.co.y, vert.co.z)
                                                        model_output_string += '%f     %f     %f     ' % (vert.normal.x, vert.normal.y, vert.normal.z)
                                                        if props.flip_uvs:
                                                                model_output_string += '%f     %f     ' % (faceUV.uv[i][0], 1-faceUV.uv[i][1])
                                                        else:
                                                                model_output_string += '%f     %f     ' % (faceUV.uv[i][0], faceUV.uv[i][1])
                                                        model_output_string += '16777215     1'
                                                        model_output_string += '\n'
                                                        vert_count+=1
                                                        i+=1
                        else:
                        #else if the model has no UV map
                                uv_layer = mesh.tessface_uv_textures.active
                                for face in mesh.tessfaces:
                                        for index in face.vertices:
                                                if len(face.vertices) == 3:
                                                        vert = mesh.vertices[index]
                                                        model_output_string += '9     '
                                                        model_output_string += '%f     %f     %f     ' % (vert.co.x, vert.co.y, vert.co.z)
                                                        model_output_string += '%f     %f     %f     ' % (vert.normal.x, vert.normal.y, vert.normal.z)
                                                        model_output_string += '0     0     '
                                                        model_output_string += '16777215     1'
                                                        model_output_string += '\n'
                                                        vert_count+=1

                elif props.model_type == 'LINELIST':
                #if outputting a line list...
                        model_type_num = 2;
                        for edge in object_copy.data.edges:
                                for index in edge.vertices:
                                        if len(edge.vertices) == 2:
                                                vert = mesh.vertices[index]
                                                model_output_string += '9     '
                                                model_output_string += '%f     %f     %f     ' % (vert.co.x, vert.co.y, vert.co.z)
                                                model_output_string += '0     0     0     '
                                                model_output_string += '0     0     '
                                                model_output_string += '16777215     1'
                                                model_output_string += '\n'
                                                vert_count+=1

                else:
                #if outputting a point list...
                        model_type_num = 1;
                        for vert in object_copy.data.vertices:
                                model_output_string += '9     '
                                model_output_string += '%f     %f     %f     ' % (vert.co.x, vert.co.y, vert.co.z)
                                model_output_string += '0     0     0     '
                                model_output_string += '0     0     '
                                model_output_string += '16777215     1'
                                model_output_string += '\n'
                                vert_count+=1

                writeString(file, str(vert_count) + '\n')
                writeString(file, '0     ' + str(model_type_num) + '.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000\n')
                writeString(file, model_output_string)
                #end the model output
                writeString(file, '1     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000     0.0000')
                
        else:
        #raw output
                #start writing the mesh data to the file
                if props.model_type == 'TRILIST':
                #if outputting a triangle list...
                        if len(mesh.uv_textures) > 0:
                        #if the model has a UV map
                                uv_layer = mesh.tessface_uv_textures.active
                                for face in mesh.tessfaces:
                                        faceUV = uv_layer.data[face.index]
                                        i=0
                                        for index in face.vertices:
                                                if len(face.vertices) == 3:
                                                        vert = mesh.vertices[index]
                                                        writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                                        writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                                        if props.flip_uvs:
                                                                writeString(file, '%f, %f' % (faceUV.uv[i][0], 1-faceUV.uv[i][1]) )
                                                        else:
                                                                writeString(file, '%f, %f' % (faceUV.uv[i][0], faceUV.uv[i][1]) )
                                                        writeString(file, '\n')
                                                        i+=1
                        else:
                        #else if the model has no UV map
                                uv_layer = mesh.tessface_uv_textures.active
                                for face in mesh.tessfaces:
                                        for index in face.vertices:
                                                if len(face.vertices) == 3:
                                                        vert = mesh.vertices[index]
                                                        writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                                        writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                                        writeString(file, '0, 0')
                                                        writeString(file, '\n')
                        #end the model output

                elif props.model_type == 'LINELIST':
                #if outputting a line list...
                        for edge in object_copy.data.edges:
                                for index in edge.vertices:
                                        if len(edge.vertices) == 2:
                                                vert = mesh.vertices[index]
                                                writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                                writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                                writeString(file, '0, 0')
                                                writeString(file, '\n')
                        #end the model output

                else:
                #if outputting a point list...
                        for vert in object_copy.data.vertices:
                                writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                                writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                                writeString(file, '0, 0')
                                writeString(file, '\n')
                        #end the model output
                
        #output the file and close it for editing
        file.flush()
        file.close()
        
        #delete the new copy of the object now
        bpy.context.scene.objects.unlink(object_copy)
        
        #reselect the original object
        object_original.select = True
        bpy.context.scene.objects.active = object_original

        return True


###### EXPORT OPERATOR #######

class Export_gm3d(bpy.types.Operator, ExportHelper):
        """Exports the active object as a GameMaker: Studio 3D model script"""
        bl_idname = "export.gml"
        bl_label = "Export for GameMaker"
        filename_ext = ".gml"
        
        filter_glob = StringProperty(default="*.gml", options={'HIDDEN'})

        output_format = EnumProperty(name="Format",
          description="The format of the output script",
          items=(
              ('SCRIPT',"GML Script", ""),
              ('MODEL',"GameMaker Model", ""),
              ('RAW',"Raw Vertex Data", ""),
            ),
            default='SCRIPT'
           )

        model_type = EnumProperty(name="Model Type",
          description="The vertex format to use for the model",
          items=(
              ('POINTLIST',"Point List", ""),
              ('LINELIST',"Line List", ""),
              ('TRILIST',"Triangle List", "")
            ),
            default='TRILIST'
           )
           
        make_importable = BoolProperty(name="Make Importable",
          description="Adds text at the beginning of the file to make it importable as a script",
          default=True)
        
        apply_modifiers = BoolProperty(name="Apply Modifiers",
          description="Applies Modifiers to the Object before exporting",
          default=True)
          
        rot_x90 = BoolProperty(name="Rotate X by 90",
          description="Rotate 90 degrees around X to convert to Y-up",
          default=False)
          
        flip_y = BoolProperty(name="Mirror on Y Axis",
          description="Mirrors the Y coordinates of the object",
          default=True)
        
        flip_uvs = BoolProperty(name="Flip UV Vertically",
          description="Flips the UV coordinates on the Y axis",
          default=True)
          
        mod_scale = FloatProperty(name="Scale",
          description="Adjusts the scale of the model",
          default=1.0)

        use_alt_export_style = BoolProperty(name="Make Coordinates Relative",
          description="Outputs the model script with extra placement arguments baked in, allowing for more easily modular pieces to be added to existing models",
          default=False)
          
        @classmethod
        def poll(cls, context):
                return context.active_object.type in ['MESH', 'CURVE', 'SURFACE', 'FONT']

        def execute(self, context):
                props = self.properties
                filepath = self.filepath
                filepath = bpy.path.ensure_ext(filepath, self.filename_ext)
                exported = do_export(context, props, filepath)
                
                if exported:
                        print("GML script output to: " + filepath)
                        
                return {'FINISHED'}

        def invoke(self, context, event):
            wm = context.window_manager
            wm.fileselect_add(self)
            return {'RUNNING_MODAL'}
                        
        def draw(self, context):
                layout = self.layout
                layout.prop(self, "output_format")
                if self.output_format == 'SCRIPT':
                        layout.prop(self, "model_type")
                        layout.prop(self, "make_importable")
                        layout.prop(self, "apply_modifiers")
                        layout.prop(self, "rot_x90")
                        layout.prop(self, "flip_y")
                        if self.model_type == 'TRILIST':
                                layout.prop(self, "flip_uvs")
                        layout.prop(self, "mod_scale")
                        layout.prop(self,"use_alt_export_style")
                elif self.output_format == 'MODEL':
                        layout.prop(self, "model_type")
                        layout.prop(self, "apply_modifiers")
                        layout.prop(self, "rot_x90")
                        layout.prop(self, "flip_y")
                        if self.model_type == 'TRILIST':
                                layout.prop(self, "flip_uvs")
                        layout.prop(self, "mod_scale")
                else:
                        layout.prop(self, "model_type")
                        layout.prop(self, "apply_modifiers")
                        layout.prop(self, "rot_x90")
                        layout.prop(self, "flip_y")
                        if self.model_type == 'TRILIST':
                                layout.prop(self, "flip_uvs")
                        layout.prop(self, "mod_scale")

###### REGISTER ######

def menu_func(self, context):
        self.layout.operator(Export_gm3d.bl_idname, text="GameMaker 3D (.gml)")

def register():
        bpy.utils.register_module(__name__)

        bpy.types.INFO_MT_file_export.append(menu_func)

def unregister():
        bpy.utils.unregister_module(__name__)

        bpy.types.INFO_MT_file_export.remove(menu_func)

if __name__ == "__main__":
        register()