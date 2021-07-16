import bmesh

def prep_mesh_data(bm, flip_uvs, vertex_color_override, output_format):
    """Triangulates a mesh (when appropriate), then returns the model data in the requested format"""

    # Triangulate, if we want to export faces
    if output_format == 'triangle_list':
        bmesh.ops.triangulate(bm, faces=bm.faces[:])
    
    # Get uv active layout, if there is one
    uv_layer = bm.loops.layers.uv.active
    use_uv_layer = True if uv_layer else False
        
    # Iterate through the mesh and grab appropriate data
    output_data = []

    if output_format == 'triangle_list':
        # If we want to output a triangle list

        # Get vertex colors, if there are any
        vert_colors = bm.loops.layers.color.active
        use_vert_colors = True if vert_colors else False

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

    elif output_format == 'line_list':
        # If we want to output a line list
        for edge in bm.edges:
            for vert in edge.verts:
                point = {}
                point["vertices"] = [round(v, 4) for v in vert.co]
                point["colors"] = [int(round(c * 255)) for c in vertex_color_override]
                output_data.append(point)

    else: 
        # If we want to output a point list
        for vert in bm.verts:
            point = {}
            point["vertices"] = [round(v, 4) for v in vert.co]
            point["colors"] = [int(round(c * 255)) for c in vertex_color_override]
            output_data.append(point)

    return output_data