import bpy
import bmesh

def export_gm3d(context, filepath, use_world_origin, apply_modifiers, flip_y, flip_uvs, scale_modifier, output_type):
    
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
    bpy.ops.object.transform_apply(location = use_world_origin, rotation = True, scale = True)
    
    #flip the object on the Y axis, if applicable
    if flip_y:
        bpy.ops.transform.mirror(constraint_axis = (False, True, False))
        bpy.ops.object.transform_apply(location = use_world_origin, rotation = True, scale = True)
        bpy.ops.object.mode_set(mode = 'EDIT')
        bpy.ops.mesh.select_all(action = 'SELECT')
        bpy.ops.mesh.flip_normals()
        bpy.context.view_layer.update()
        bpy.ops.object.mode_set(mode = 'OBJECT')
    
    #scale the object
    if scale_modifier != 1:
        bpy.ops.transform.resize(value = (scale_modifier, scale_modifier, scale_modifier))
        bpy.ops.object.transform_apply(location = use_world_origin, rotation = True, scale = True)

    #initialize vertex buffer output
    output = ""
    use_uv_layer = False;
    use_vert_colors = False;
    
    #grab object mesh, and convert to bmesh
    mesh = bpy.context.object.data
    bm = bmesh.new()
    bm.from_mesh(mesh)
    
    #get uv active layout, if there is one
    uv_layer = bm.loops.layers.uv.active
    if uv_layer:
        use_uv_layer = True
    
    #get vertex colors, if there are any
    vert_colors = bm.loops.layers.color.active
    if vert_colors:
        use_vert_colors = True
    
    #set counter
    count = 0;
    
    #iterate through the faces of the mesh
    for face in bm.faces:
        output += "\t\t//triangle " + str(count) + "\n"
        for loop in face.loops:
            if output_type == 'vertex_buffer':
                #vertex buffer output
                output += "test"
                ###
            else:
                #debug output to GML script
                vert = loop.vert
                output += "\t\tvertex_position_3d(buf, " + str(round(vert.co.x, 4)) + ", " + str(round(vert.co.y, 4)) + ", " + str(round(vert.co.z, 4)) + ");\n"
                output += "\t\tvertex_normal(buf, " + str(round(vert.normal.x, 4)) + ", " + str(round(vert.normal.y, 4)) + ", " + str(round(vert.normal.z, 4)) + ");\n"
                if use_vert_colors:
                    colors = loop[vert_colors]
                    colors = [int(round(c * 255)) for c in colors]
                    output += "\t\tvertex_color(buf, make_color_rgb(" + str(colors[0]) + ", " + str(colors[1]) + ", " + str(colors[2]) + "), 1);\n"
                else:
                    output += "\t\tvertex_color(buf, c_white, 1);\n"
                if use_uv_layer:
                    uvs = loop[uv_layer].uv
                    if flip_uvs:
                        output += "\t\tvertex_texcoord(buf, " + str(round(uvs[0], 4)) + ", " + str(round(1 - uvs[1], 4)) + ");\n"
                    else:
                        output += "\t\tvertex_texcoord(buf, " + str(round(uvs[0], 4)) + ", " + str(round(uvs[1], 4)) + ");\n"
                else :
                    output += "\t\tvertex_texcoord(buf, 0, 0);\n"
                ###
        output += "\n"
        count += 1


    #add header and footer to file
    header = "function load_model(format){\n\n\t/*\n\tuse the following format to load this model:\n\tvertex_format_begin();\n\t\tvertex_format_add_position_3d();\n\t\tvertex_format_add_normal();\n\t\tvertex_format_add_color();\n\t\tvertex_format_add_texcoord();\n\tvar fmt = vertex_format_end();\n\t*/\n\n"
    output = header + "\tvar buf = vertex_create_buffer();\n\tvertex_begin(buf, format);\n\n" + output
    output += "\tvertex_end(buf);\n\n\treturn buf;\n}"

    #delete object copy and bmesh, and reselect original object
    bm.free()
    bpy.ops.object.delete()
    original_object.select_set(state = True)
    bpy.context.view_layer.objects.active = original_object
    
    f = open(filepath, 'w', encoding='utf-8')
    f.write(output)
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
    use_world_origin: BoolProperty(
        name="Use World Origin",
        description="Applies the position of the model relative to the world origin before exporting",
        default=True,
    )
    
    apply_modifiers: BoolProperty(
        name="Apply Modifiers",
        description="Apply modifiers to the mesh before exporting",
        default=True,
    )
    
    flip_y: BoolProperty(
        name="Flip On Y",
        description="Flips the mesh on the Y axis",
        default=True,
    )
    
    flip_uvs: BoolProperty(
        name="Flip UV Coordinates",
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
    
    output_type: EnumProperty(
        name="Output Type",
        description="The type of data to output",
        items=(
            ('vertex_buffer', "Vertex Buffer", "A vertex buffer that can be loaded into GameMaker at runtime"),
            ('debug', "GML Script (debug)", "A human-readable script that can be used to import and debug"),
        ),
        default='vertex_buffer',
    )
    
    def execute(self, context):
        return export_gm3d(context, self.filepath, self.use_world_origin, self.apply_modifiers, self.flip_y, self.flip_uvs, self.scale_modifier, self.output_type)

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
