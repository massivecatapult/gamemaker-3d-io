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
    "version": (2, 1, 2),
    'blender': (2, 93, 0),
    'location': 'File > Export',
    'description': 'Export as GameMaker Studio 2 3D',
    'warning': '',
    'doc_url': "https://github.com/massivecatapult/gamemaker-3d-io#readme",
    'tracker_url': "https://github.com/massivecatapult/gamemaker-3d-io",
    'support': 'OFFICIAL',
    'category': 'Import-Export',
}

import bpy
import bmesh
from . import gm3d_prep
from . import gm3d_output

def export_gm3d(context, filepath, use_world_origin, apply_modifiers, flip_y, flip_uvs, scale_modifier, vertex_color_override, output_format, output_type):
    """Export the active object as a GameMaker Studio 2 compatible 3D file"""

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

    output_data = gm3d_prep.prep_mesh_data(bm, flip_uvs, vertex_color_override, output_format)
    output = gm3d_output.format_output(output_data, output_format, output_type)

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
from bpy.props import StringProperty, BoolProperty, EnumProperty, FloatProperty, FloatVectorProperty
from bpy.types import Operator, Panel

def align_output_format(filepath, output_type):
    """Format filename appropriately to the selected output type"""
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
    """Update the filename in the file browser when the format changes"""
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

class ExportGM3D(Operator, ExportHelper):
    """Export the active object to the selected GameMaker 3D format"""
    bl_idname = "export.gml"
    bl_label = "Export"
    
    filename_ext = ''
    filter_glob: StringProperty(
        default = "*.buf;*.gml",
        options = {'HIDDEN'},
        maxlen = 255,
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

    vertex_color_override: FloatVectorProperty(
        name = "Vertex Color",
        description = "Multiply or set vertex colors to this color",
        default = (1.0, 1.0, 1.0),
        min = 0.0,
        max = 1.0,
        precision = 3,
        soft_min = 0.0,
        soft_max = 1.0,
        subtype = 'COLOR',
        size = 3,
    )

    output_format: EnumProperty(
        name = "Format",
        description="The format of the model to output",
        items = (
            ('triangle_list', "Triangle List", "Format the model as a triangle list"),
            ('line_list', "Line List", "Format the model as a line list"),
            ('point_list', "Point List", "Format the model as a point list"),
        ),
        default = 'triangle_list',
    )

    output_type: EnumProperty(
        name = "Type",
        description="The type of data to output",
        items = (
            ('vertex_buffer', "Vertex Buffer", "A vertex buffer that can be loaded into GameMaker at runtime"),
            ('debug', "GML Script (debug)", "A human-readable script that can be used to import and debug"),
        ),
        default = 'vertex_buffer',
        update = update_ext,
    )

    def check(self, context):
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
            self.vertex_color_override,
            self.output_format,
            self.output_type
        )
    
    def draw(self, context):
        layout = self.layout

        sfile = context.space_data
        operator = sfile.active_operator

        layout.prop(operator, "output_format")
        if self.output_format != 'triangle_list':
            layout.prop(operator, "vertex_color_override")

        layout.label(text = "Transform:")
        box = layout.box()
        box.prop(operator, "use_world_origin")
        box.prop(operator, "flip_y")
        box.prop(operator, "flip_uvs")
        box.prop(operator, "apply_modifiers")
        box.prop(operator, "scale_modifier")

        layout.prop(operator, "output_type")

# Only needed if you want to add into a dynamic menu
def menu_func_export(self, context):
    self.layout.operator(ExportGM3D.bl_idname, text="GameMaker 3D (.buf, .gml)")

classes = (
    ExportGM3D,
)

def register():
    for cls in classes:
        bpy.utils.register_class(cls)
    bpy.types.TOPBAR_MT_file_export.append(menu_func_export)

def unregister():
    for cls in classes:
        bpy.utils.unregister_class(cls)
    bpy.types.TOPBAR_MT_file_export.remove(menu_func_export)

if __name__ == "__main__":
    register()