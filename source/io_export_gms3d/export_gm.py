import bpy
import bmesh

def get_face_data(bm, flip_uvs, output_format, output_type):
    """Triangulates a mesh, then returns the vertex, normal, color, and uv data for each triangle in the list"""

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
    return output_data