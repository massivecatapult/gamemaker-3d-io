# Copyright 2021 Martin Crownover.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Portions of this software are based on the work of The glTF-Blender-IO
# authors. glTF-Blender-IO is licensed and available under the Apache
# License, Version 2.0.

bl_info = {
    'name': 'GameMaker Studio 2 3D format',
    'author': 'Martin Crownover',
    "version": (2, 0, 0),
    'blender': (2, 93, 0),
    'location': 'File > Export',
    'description': 'Export as GameMaker Studio 2 3D',
    'warning': '',
    'doc_url': "https://martincrownover.com/blender-addon-gm3d/",
    'tracker_url': "https://github.com/massivecatapult/gamemaker-3d-io",
    'support': 'OFFICIAL',
    'category': 'Import-Export',
}

import bpy
import bmesh
import struct

def export_gm3d(context, filepath, use_world_origin, apply_modifiers, flip_y, flip_uvs, scale_modifier, output_type):
    
    # Make sure we're in OBJECT mode
    bpy.ops.object.mode_set(mode = 'OBJECT')
    
    # Get the view layer
    view_layer = bpy.context.view_layer
    
    # Mark the original object
    original_object = bpy.context.active_object
    
    # Make sure only the active object is selected
    bpy.ops.object.select_all(action = 'DESELECT')
    original_object.select_set(True)
    
    # Make a temporary copy of the object to operate on
    temp_object = original_object.copy()
    temp_object.data = original_object.data.copy()
    view_layer.active_layer_collection.collection.objects.link(temp_object)
    
    # Perform the selection routine once more, and make the new object the active one
    bpy.ops.object.select_all(action = 'DESELECT')
    temp_object.select_set(True)
    bpy.context.view_layer.objects.active = temp_object
    
    # Apply modifiers, if applicable
    if apply_modifiers:
        bpy.ops.object.convert(target = 'MESH')
        
    # Apply the object
    bpy.ops.object.transform_apply(location = use_world_origin, rotation = True, scale = True)
    
    # Flip the object on the Y axis, if applicable
    if flip_y:
        bpy.ops.transform.mirror(constraint_axis = (False, True, False))
        bpy.ops.object.transform_apply(location = use_world_origin, rotation = True, scale = True)
        bpy.ops.object.mode_set(mode = 'EDIT')
        bpy.ops.mesh.select_all(action = 'SELECT')
        bpy.ops.mesh.flip_normals()
        bpy.context.view_layer.update()
        bpy.ops.object.mode_set(mode = 'OBJECT')
    
    # Scale the object
    if scale_modifier != 1:
        bpy.ops.transform.resize(value = (scale_modifier, scale_modifier, scale_modifier))
        bpy.ops.object.transform_apply(location = use_world_origin, rotation = True, scale = True)

    # Grab object mesh, and convert to bmesh
    mesh = bpy.context.object.data
    bm = bmesh.new()
    bm.from_mesh(mesh)
    
    # Triangulate
    bmesh.ops.triangulate(bm, faces=bm.faces[:])
    
    # Get uv active layout, if there is one
    uv_layer = bm.loops.layers.uv.active
    use_uv_layer = True if uv_layer else False
    
    # Get vertex colors, if there are any
    vert_colors = bm.loops.layers.color.active
    use_vert_colors = True if vert_colors else False
        
    # Iterate through the faces of the mesh and grab data for each point
    output_data = []
    for face in bm.faces:
        for loop in face.loops:
            point = {}
            point["vertices"] = [round(v, 4) for v in loop.vert.co]
            point["normals"] = [round(n, 4) for n in loop.vert.normal]
            if use_vert_colors:
                point["colors"] = [int(round(c * 255)) for c in loop[vert_colors]]
            else:
                point["colors"] = [255, 255, 255]
            if use_uv_layer:
                point["uvs"] = [round(u, 4) for u in loop[uv_layer].uv]
                if flip_uvs:
                    point["uvs"][1] = round(1 - loop[uv_layer].uv[1], 4)
            else:
                point["uvs"] = [0, 0]
            output_data.append(point)
        
    if output_type == 'vertex_buffer':
        # Vertex buffer output
        output_list = []
        for p in output_data:
            output_list.append(struct.pack("fff", p.get("vertices")[0], p.get("vertices")[1], p.get("vertices")[2]))
            output_list.append(struct.pack("fff", p.get("normals")[0], p.get("normals")[1], p.get("normals")[2]))
            output_list.append(struct.pack("BBBB", p.get("colors")[0], p.get("colors")[1], p.get("colors")[2], 255))
            output_list.append(struct.pack("ff", p.get("uvs")[0], p.get("uvs")[1]))
        output = b"".join(output_list)

    else:
        # Debug output to GML script
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
        # Add header and footer to file
        header = "function load_model(format){\n\n\t/*\n\tuse the following format to load this model:\n\tvertex_format_begin();\n\t\tvertex_format_add_position_3d();\n\t\tvertex_format_add_normal();\n\t\tvertex_format_add_color();\n\t\tvertex_format_add_texcoord();\n\t vertex_format = vertex_format_end();\n\t*/\n\n"
        output = header + "\tvar buf = vertex_create_buffer();\n\tvertex_begin(buf, format);\n\n" + output
        output += "\tvertex_end(buf);\n\n\treturn buf;\n}"

    # Delete object copy and bmesh, and reselect original object
    bm.free()
    bpy.ops.object.delete()
    original_object.select_set(True)
    bpy.context.view_layer.objects.active = original_object
    
    # Output the data
    if output_type == 'vertex_buffer':
        f = open(filepath, 'wb')
    else:
        f = open(filepath, 'w', encoding = 'utf-8')
    f.write(output)
    f.close()

    return {'FINISHED'}

from bpy_extras.io_utils import ExportHelper
from bpy.props import StringProperty, BoolProperty, EnumProperty, FloatProperty
from bpy.types import Operator

def align_output_format(filepath, output_type):
    # Format filename appropriately to the selected output type
    import os
    filename = os.path.basename(filepath)
    if not filename:
        return filepath

    stem, ext = os.path.splitext(filename)
    if stem.startswith('.') and not ext:
        stem, ext = '', stem

    desired_ext = '.buf' if output_type == 'vertex_buffer' else '.gml'
    ext_lower = ext.lower()
    if ext_lower not in ['.buf', '.gml']:
        return filepath + desired_ext
    elif ext_lower != desired_ext:
        # Strip extension
        filepath = filepath[:-len(ext)]
        return filepath + desired_ext
    else:
        return filepath

def update_ext(self, context):
    # Update the filename in the file browser when the format changes
    sfile = context.space_data
    if not isinstance(sfile, bpy.types.SpaceFileBrowser):
        return
    if not sfile.active_operator:
        return
    if sfile.active_operator.bl_idname != 'EXPORT_OT_GML':
        return

    sfile.params.filename = align_output_format(
        sfile.params.filename,
        self.output_type,
    )

class ExportData(Operator, ExportHelper):
    """Export the active object to the selected GameMaker 3D format"""
    bl_idname = "export.gml"
    bl_label = "Export"
    
    filename_ext = ''

    filter_glob: StringProperty(
        default="*.buf;*.gm;*.gml",
        options={'HIDDEN'},
        maxlen=255,
    )

    # Operator properties
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
    
    def check(self, _context):
        # Force the filename to update appropriately
        old_filepath = self.filepath
        self.filepath = align_output_format(
            self.filepath,
            self.output_type,
        )
        return self.filepath != old_filepath
    
    def execute(self, context):
        return export_gm3d(
            context,
            self.filepath,
            self.use_world_origin,
            self.apply_modifiers,
            self.flip_y,
            self.flip_uvs,
            self.scale_modifier,
            self.output_type
        )

# Only needed if you want to add into a dynamic menu
def menu_func_export(self, context):
    self.layout.operator(ExportData.bl_idname, text="Export GameMaker 3D (.buf, .gml)")

def register():
    bpy.utils.register_class(ExportData)
    bpy.types.TOPBAR_MT_file_export.append(menu_func_export)

def unregister():
    bpy.utils.unregister_class(ExportData)
    bpy.types.TOPBAR_MT_file_export.remove(menu_func_export)

if __name__ == "__main__":
    register()