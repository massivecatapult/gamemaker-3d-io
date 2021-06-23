import bpy

def export_gm3d(context, filepath, apply_modifiers, flip_y, flip_uvs, scale_modifier):
    
    #make sure we're in OBJECT mode
    bpy.ops.object.mode_set(mode = 'OBJECT')
    
    #get the view layer
    view_layer = bpy.context.view_layer
    
    #mark the original object
    original_object = bpy.context.active_object
    
    #make sure only the active object is selected
    for i in bpy.context.selectable_objects:
        i.select_set(state = False)
    original_object.select_set(state = True)
    
    #make a temporary copy of the object to operate on
    temp_object = original_object.copy()
    temp_object.data = original_object.data.copy()
    view_layer.active_layer_collection.collection.objects.link(temp_object)
    
    #perform the selection routine once more, and make the new object the active one
    for i in bpy.context.selectable_objects:
        i.select_set(state = False)
    temp_object.select_set(state = True)
    bpy.context.view_layer.objects.active = temp_object
    
    #apply modifiers, if applicable
    if apply_modifiers:
        bpy.ops.object.convert(target = 'MESH')
    
    #switch to EDIT mode
    bpy.ops.object.mode_set(mode = 'EDIT')
    bpy.ops.mesh.select_all(action = 'SELECT')

    #triangulate
    bpy.ops.mesh.quads_convert_to_tris()

    #update the scene with our changes, then reset to OBJECT mode
    bpy.context.view_layer.update()
    bpy.ops.object.mode_set(mode = 'OBJECT')
        
    #apply the object
    bpy.ops.object.transform_apply()
    
    #flip the object on the Y axis, if applicable
    if flip_y:
        bpy.ops.transform.mirror(constraint_axis = (False, True, False))
        bpy.ops.object.transform_apply()
    
    #scale the object
    if scale_modifier != 1:
        bpy.ops.transform.resize(value = (scale_modifier, scale_modifier, scale_modifier))
        bpy.ops.object.transform_apply()
        
    #initialize vertex buffer output and grab object mesh and uv layers
    vertex_output = ""
    mesh = bpy.context.object.data
    uv_layer = mesh.uv_layers.active.data
    
    #iterate through the triangles of the mesh
    mesh.calc_loop_triangles()
    count = 0;
    for tri in mesh.loop_triangles:
        uvs = uv_layer[count].uv
        vertex_output = vertex_output + "### triangle " + str(count) + "\n\n"
        for vert_index in tri.vertices:
            vert = mesh.vertices[vert_index]
            #vertex_output = vertex_output + str(mesh.vertices[vert_index].co)
            vertex_output += "-# verts\n"
            vertex_output += str(round(vert.co.x, 4)) + ", "
            vertex_output += str(round(vert.co.y, 4)) + ", "
            vertex_output += str(round(vert.co.z, 4)) + "\n"
            
            vertex_output += "-# normals\n"
            vertex_output += str(round(vert.normal.x, 4)) + ", "
            vertex_output += str(round(vert.normal.y, 4)) + ", "
            vertex_output += str(round(vert.normal.z, 4)) + "\n"
            
            vertex_output += "-# uvs\n"
            vertex_output += str(round(uvs[0], 4)) + ", "
            vertex_output += str(round(uvs[1], 4)) + "\n\n"
            
        vertex_output = vertex_output + "\n"
        count += 1
        
    #delete object copy and reselect original object
    bpy.ops.object.delete()
    original_object.select_set(state = True)
    bpy.context.view_layer.objects.active = original_object
    
    f = open(filepath, 'w', encoding='utf-8')
    f.write(vertex_output)
    #f.write("Hello World %s" % use_some_setting)
    f.close()

    return {'FINISHED'}


# ExportHelper is a helper class, defines filename and
# invoke() function which calls the file selector.
from bpy_extras.io_utils import ExportHelper
from bpy.props import StringProperty, BoolProperty, EnumProperty, FloatProperty
from bpy.types import Operator


class ExportSomeData(Operator, ExportHelper):
    """This appears in the tooltip of the operator and in the generated docs"""
    bl_idname = "export.gml"  # important since its how bpy.ops.import_test.some_data is constructed
    bl_label = "Export"

    # ExportHelper mixin class uses this
    filename_ext = ".gml"

    filter_glob: StringProperty(
        default="*.gml",
        options={'HIDDEN'},
        maxlen=255,  # Max internal buffer length, longer would be clamped.
    )

    # List of operator properties, the attributes will be assigned
    # to the class instance from the operator settings before calling.
    apply_modifiers: BoolProperty(
        name="Apply Modifiers",
        description="Apply modifiers to the mesh before exporting",
        default=True,
    )
    
    flip_y: BoolProperty(
        name="Flip on Y",
        description="Flips the mesh on the Y axis",
        default=True,
    )
    
    flip_uvs: BoolProperty(
        name="Flip UV coordinates",
        description="Flips the UV coordinates on the Y axis",
        default=True,
    )
    
    scale_modifier: FloatProperty(
        name="Scale",
        description="Adjusts the scale of the model",
        default=1.0,
        min=0.01,
        soft_min=0.01,
    )
    
    def execute(self, context):
        return export_gm3d(context, self.filepath, self.apply_modifiers, self.flip_y, self.flip_uvs, self.scale_modifier)


# Only needed if you want to add into a dynamic menu
def menu_func_export(self, context):
    self.layout.operator(ExportSomeData.bl_idname, text="Export GameMaker 3D (*.gml)")


def register():
    bpy.utils.register_class(ExportSomeData)
    bpy.types.TOPBAR_MT_file_export.append(menu_func_export)


def unregister():
    bpy.utils.unregister_class(ExportSomeData)
    bpy.types.TOPBAR_MT_file_export.remove(menu_func_export)


if __name__ == "__main__":
    register()

    # test call
    bpy.ops.export.gml('INVOKE_DEFAULT')
