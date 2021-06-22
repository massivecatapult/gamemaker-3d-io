bl_info = {
    "name": "Export for GameMaker (.gml)",
    "author": "Martin Crownover",
    "version": (1, 6, 5),
    "blender": (2, 93, 0),
    "location": "File > Export",
    "description": "Export 3D models for use GameMaker: Studio 2, as scripts, models, and raw comma-separated data",
    "warning": "",
    "wiki_url": "",
    "tracker_url": "http://martincrownover.com/blender-addon-gm3d",
    "category": "Import-Export"
}

import bpy
from bpy.props import *
import mathutils, math, struct
import os
#from os import remove
#import bpy_extras
from bpy_extras.io_utils import ExportHelper
#import shutil
from math import radians

#define the prepMech function, which copies the targeted object and performs operations on it to prepare it for export
def prepMesh(object, apply_modifiers):
    #this function copies the current object, then cleans it up before returning it for export
    need_to_triangulate = False

    #enter object mode and deselect all other objects
    bpy.ops.object.mode_set(mode = 'OBJECT')
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
        bpy.ops.object.convert(target = 'MESH')

    #check to see if the object needs to have quads converted to triangles
    object.data.update(calc_tessface=True)
    for face in object.data.tessfaces:
        if (len(face.vertices) > 3):
            need_to_triangulate = True
            break
        
    #enter edit mode and select all verts
    bpy.ops.object.mode_set(mode = 'EDIT')
    bpy.ops.mesh.select_all(action = 'SELECT')

    #if we need to triangulate the object, do it now
    if need_to_triangulate == True:
            bpy.ops.mesh.quads_convert_to_tris()
            
    #update the scene to reflect the changes we've made, then enter object mode again
    bpy.context.scene.update()
    bpy.ops.object.mode_set(mode = 'OBJECT') # set it in object
                            
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
    bpy.ops.object.transform_apply(location = True, rotation = True, scale = True)
        
    #if we want to flip the object on its Y axis, do it now, then apply the model and flip the normals
    if props.flip_y:
        bpy.context.object.scale[1] = -1
        bpy.ops.object.transform_apply(location = False, rotation = False, scale = True)
        bpy.ops.object.mode_set(mode = 'EDIT')
        bpy.ops.mesh.flip_normals()
        bpy.ops.object.mode_set(mode = 'OBJECT')

    #STOPPING HERE

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

    #get script name from the filepath - may want to check if this is blank at some point in t  future?
    base_name = os.path.basename(filepath)
    script_name = os.path.splitext(base_name)[0]
                
    #add extra variables to the script if we're using the alternate/realtive output style
    #writeString(file, 'var temp = d3d_model_create();\n')
        
    #start writing the mesh data to the file

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
                    writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                    writeString(file, '%f, %f, %f, ' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                    if props.flip_uvs:
                        writeString(file, '%f, %f' % (faceUV.uv[i][0], 1-faceUV.uv[i][1]) )
                    else:
                        writeString(file, '%f, %f' % (faceUV.uv[i][0], faceUV.uv[i][1]) )
                    writeString(file, ');\n')
                    i += 1
    else:
    #else if the model has no UV map
        uv_layer = mesh.tessface_uv_textures.active
        for face in mesh.tessfaces:
            for index in face.vertices:
                if len(face.vertices) == 3:
                    vert = mesh.vertices[index]
                    writeString(file, 'd3d_model_vertex_normal(temp, ')
                    writeString(file, '%f, %f, %f, ' % (vert.co.x, vert.co.y, vert.co.z) )
                    writeString(file, '%f, %f, %f' % (vert.normal.x, vert.normal.y, vert.normal.z) )
                    writeString(file, ');\n')

    #end the model output
    writeString(file, 'd3d_model_primitive_end(temp);\nreturn temp;')

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

#removed model_format, model_type, make_importable, use_alt_export_style

class Export_gm3d(bpy.types.Operator, ExportHelper):
    """Save a GameMaker Studio 2 3D File"""

    bl_idname = "export.gml"
    bl_label = "Export for GameMaker"
    bl_options = {'PRESET'}

    filename_ext = ".gml"
    filter_glob: StringProperty(
            default = "*.obj",
            options = {'HIDDEN'},
            )

    apply_modifiers: BoolProperty(
            name = "Apply Modifiers",
            description = "Applies Modifiers to the Object before exporting",
            default = True,
            )
        
    rot_x90: BoolProperty(
            name = "Rotate X by 90",
            description = "Rotate 90 degrees around X to convert to Y-up",
            default = False,
            )
        
    flip_y: BoolProperty(
            name = "Mirror on Y Axis",
            description = "Mirrors the Y coordinates of the object",
            default = True,
            )

    flip_uvs: BoolProperty(
            name = "Flip UV Vertically",
            description = "Flips the UV coordinates on the Y axis",
            default = True,
            )
        
    mod_scale: FloatProperty(
            name = "Scale",
            description = "Adjusts the scale of the model",
            default = 1.0,
            )

    path_mode: path_reference_mode

    check_extension = True
        
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
        layout.prop(self, "apply_modifiers")
        layout.prop(self, "rot_x90")
        layout.prop(self, "flip_y")
        layout.prop(self, "flip_uvs")
        layout.prop(self, "mod_scale")

###### REGISTER ######

def menu_func_export(self, context):
    self.layout.operator(Export_gm3d.bl_idname, text = "GameMaker 3D (.gml)")

classes = (
    Export_gm3d,
)

def register():
    for cls in classes:
        bpy.utils.register_class(cls)
    bpy.types.TOPBAR_MT_file_export.append(menu_func_export)

def unregister():
    bpy.types.TOPBAR_MT_file_export.remove(menu_func_export)

if __name__ == "__main__":
    register()