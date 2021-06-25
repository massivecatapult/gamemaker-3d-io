import bpy
import bmesh
import struct
from pathlib import Path

def export_gm3d(context, filepath, use_world_origin, apply_modifiers, flip_y, flip_uvs, scale_modifier, output_type):
    
    #make sure we're in OBJECT mode
    bpy.ops.object.mode_set(mode = 'OBJECT')
    
    #get the view layer
    view_layer = bpy.context.view_layer
    
    #mark the original object
    original_object = bpy.context.active_object
    
    #make sure only the active object is selected
    bpy.ops.object.select_all(action = 'DESELECT')
    original_object.select_set(True)
    
    #make a temporary copy of the object to operate on
    temp_object = original_object.copy()
    temp_object.data = original_object.data.copy()
    view_layer.active_layer_collection.collection.objects.link(temp_object)
    
    #perform the selection routine once more, and make the new object the active one
    bpy.ops.object.select_all(action = 'DESELECT')
    temp_object.select_set(True)
    bpy.context.view_layer.objects.active = temp_object
    
    #apply modifiers, if applicable
    if apply_modifiers:
        bpy.ops.object.convert(target = 'MESH')
    
    #triangulate
    bpy.ops.object.mode_set(mode = 'EDIT')
    bpy.ops.mesh.select_all(action = 'SELECT')
    bpy.ops.mesh.quads_convert_to_tris()
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

    #grab object mesh, and convert to bmesh
    mesh = bpy.context.object.data
    bm = bmesh.new()
    bm.from_mesh(mesh)
    
    #get uv active layout, if there is one
    uv_layer = bm.loops.layers.uv.active
    use_uv_layer = True if uv_layer else False
    
    #get vertex colors, if there are any
    vert_colors = bm.loops.layers.color.active
    use_vert_colors = True if vert_colors else False
        
    #iterate through the faces of the mesh and grab data for each point
    output_data = []
    for face in bm.faces:
        for loop in face.loops:
            point = {}
            point["vertices"] = [round(v, 4) for v in loop.vert.co]
            point["normals"] = [round(n, 4) for n in loop.vert.normal]
            if use_vert_colors:
                #colors = loop[vert_colors]
                point["colors"] = [int(round(c * 255)) for c in loop[vert_colors]]
            else:
                point["colors"] = [255, 255, 255]
            if use_uv_layer:
                #uvs = loop[uv_layer].uv
                point["uvs"] = [round(u, 4) for u in loop[uv_layer].uv]
                if flip_uvs:
                    point["uvs"][1] = round(1 - loop[uv_layer].uv[1], 4)
            else:
                point["uvs"] = [0, 0]
            output_data.append(point)
        
    if output_type == 'vertex_buffer':
        #vertex buffer output
        output_list = []
        for p in output_data:
            output_list.append(struct.pack("fff", p.get("vertices")[0], p.get("vertices")[1], p.get("vertices")[2]))
            output_list.append(struct.pack("fff", p.get("normals")[0], p.get("normals")[1], p.get("normals")[2]))
            output_list.append(struct.pack("BBBB", p.get("colors")[0], p.get("colors")[1], p.get("colors")[2], 255))
            output_list.append(struct.pack("ff", p.get("uvs")[0], p.get("uvs")[1]))
        output = b"".join(output_list)

    else:
        #debug output to GML script
        output = ""
        count = 0;
        for p in output_data:
            if count % 3 == 0:
                output += "\t\t//triangle " + str(count // 3) + "\n"
            output += "\t\tvertex_position_3d(buf, " + str(p.get("vertices")[0]) + ", " + str(p.get("vertices")[1]) + ", " + str(p.get("vertices")[2]) + ");\n"
            output += "\t\tvertex_normal(buf, " + str(p.get("normals")[0]) + ", " + str(p.get("normals")[1]) + ", " + str(p.get("normals")[2]) + ");\n"
            if use_vert_colors:
                output += "\t\tvertex_color(buf, make_color_rgb(" + str(p.get("colors")[0]) + ", " + str(p.get("colors")[1]) + ", " + str(p.get("colors")[2]) + "), 1);\n"
            else:
                output += "\t\tvertex_color(buf, c_white, 1);\n"
            output += "\t\tvertex_texcoord(buf, " + str(p.get("uvs")[0]) + ", " + str(p.get("uvs")[1]) + ");\n"
            if (count + 1) % 3 == 0:
                output += "\n"
            count += 1
        #add header and footer to file
        header = "function load_model(format){\n\n\t/*\n\tuse the following format to load this model:\n\tvertex_format_begin();\n\t\tvertex_format_add_position_3d();\n\t\tvertex_format_add_normal();\n\t\tvertex_format_add_color();\n\t\tvertex_format_add_texcoord();\n\t vertex_format = vertex_format_end();\n\t*/\n\n"
        output = header + "\tvar buf = vertex_create_buffer();\n\tvertex_begin(buf, format);\n\n" + output
        output += "\tvertex_end(buf);\n\n\treturn buf;\n}"

    #delete object copy and bmesh, and reselect original object
    bm.free()
    bpy.ops.object.delete()
    original_object.select_set(state = True)
    bpy.context.view_layer.objects.active = original_object
    
    #output the data
    if output_type == 'vertex_buffer':
        f = open(filepath, 'wb')
    else:
        f = open(filepath, 'w', encoding='utf-8')
    f.write(output)
    f.close()

    return {'FINISHED'}

# ExportHelper is a helper class, defines filename and
# invoke() function which calls the file selector.
from bpy_extras.io_utils import ExportHelper
from bpy.props import StringProperty, BoolProperty, EnumProperty, FloatProperty
from bpy.types import Operator



class ExportData(Operator, ExportHelper):
    """This appears in the tooltip of the operator and in the generated docs"""
    bl_idname = "export.gml"  # important since its how bpy.ops.import_test.some_data is constructed
    bl_label = "Export"
    
    def update_ext(self, context):
        new_ext = ".buf"
        if self.output_type == 'vertex_buffer':
            print("buf")
            new_ext = "buf"
            #self.filename_ext = ".buf"
        else:
            print("gml")
            new_ext = "gml"
            #self.filename_ext = ".gml"
        #for k in dir(self):
            #print(k, getattr(self, k))
        params = context.space_data.params
        params.filename = f"{Path(self.filepath).stem}.{new_ext}"
        #print(f"{Path(self.filepath).stem}.{new_ext}")

    # ExportHelper mixin class uses this
    filename_ext = ".buf"
    
    filter_glob: StringProperty(
        default="*.gml;*.buf;*.dat",
        options={'HIDDEN'},
        maxlen=255,  # Max internal buffer length, longer would be clamped.
    )

    # List of operator properties, the attributes will be assigned
    # to the class instance from the operator settings before calling.
    use_world_origin: BoolProperty(
        name = "Use World Origin",
        description = "Applies the position of the model relative to the world origin before exporting",
        default = True,
    )
    
    apply_modifiers: BoolProperty(
        name = "Apply Modifiers",
        description = "Apply modifiers to the mesh before exporting",
        default = True,
    )
    
    flip_y: BoolProperty(
        name = "Flip On Y",
        description = "Flips the mesh on the Y axis",
        default = True,
    )
    
    flip_uvs: BoolProperty(
        name = "Flip UV Coordinates",
        description = "Flips the UV coordinates on the Y axis",
        default = True,
    )
    
    scale_modifier: FloatProperty(
        name = "Scale",
        description = "Adjusts the scale of the model",
        default = 1.0,
        min = 0.01,
        soft_min = 0.01,
    )
    
    output_type: EnumProperty(
        name = "Output Type",
        description="The type of data to output",
        items = (
            ('vertex_buffer', "Vertex Buffer", "A vertex buffer that can be loaded into GameMaker at runtime"),
            ('debug', "GML Script (debug)", "A human-readable script that can be used to import and debug"),
        ),
        default = 'vertex_buffer',
        update = update_ext,
    )
    
    def execute(self, context):
        return export_gm3d(context, self.filepath, self.use_world_origin, self.apply_modifiers, self.flip_y, self.flip_uvs, self.scale_modifier, self.output_type)

# Only needed if you want to add into a dynamic menu
def menu_func_export(self, context):
    self.layout.operator(ExportData.bl_idname, text="Export GameMaker 3D")

def register():
    bpy.utils.register_class(ExportData)
    bpy.types.TOPBAR_MT_file_export.append(menu_func_export)

def unregister():
    bpy.utils.unregister_class(ExportData)
    bpy.types.TOPBAR_MT_file_export.remove(menu_func_export)

if __name__ == "__main__":
    register()

    # test call
    bpy.ops.export.gml('INVOKE_DEFAULT')
