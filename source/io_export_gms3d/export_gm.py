import bmesh
import struct

def prepare_data(bm, flip_uvs, output_format):
    """Triangulates a mesh, then returns the vertex, normal, color, and uv data for each triangle in the list"""

    # Triangulate
    if output_format == 'triangle_list':
        # Only triangulate if we want to export faces
        bmesh.ops.triangulate(bm, faces=bm.faces[:])
    
    # Get uv active layout, if there is one
    uv_layer = bm.loops.layers.uv.active
    use_uv_layer = True if uv_layer else False
    
    # Get vertex colors, if there are any
    vert_colors = bm.loops.layers.color.active
    use_vert_colors = True if vert_colors else False
        
    # Iterate through the mesh and grab appropriate data
    output_data = []

    if output_format == 'triangle_list':
        # If we want to output a triangle list
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
            for loop in edge.loops:
                point = {}
                point["vertices"] = [round(v, 4) for v in loop.vert.co]
                if use_vert_colors:
                    point["colors"] = [int(round(c * 255)) for c in loop[vert_colors]]
                else:
                    point["colors"] = [255, 255, 255]
                output_data.append(point)

    else: 
        # If we want to output a point list
        for point in bm.points:
            for loop in point.loops:
                point = {}
                point["vertices"] = [round(v, 4) for v in loop.vert.co]
                if use_vert_colors:
                    point["colors"] = [int(round(c * 255)) for c in loop[vert_colors]]
                else:
                    point["colors"] = [255, 255, 255]
                output_data.append(point)

    return output_data

def format_data(data, output_format, output_type):
    """Formats and outputs data according to the selected model format and type"""

    # Return data as the correct type
    if output_type == 'vertex_buffer':

        # Init data
        output_list = []

        # Vertex buffer output
        if output_format == 'triangle_list':
            # Triangle list
            for p in data:
                output_list.append(struct.pack("fff", p.get("vertices")[0], p.get("vertices")[1], p.get("vertices")[2]))
                output_list.append(struct.pack("fff", p.get("normals")[0], p.get("normals")[1], p.get("normals")[2]))
                output_list.append(struct.pack("BBBB", p.get("colors")[0], p.get("colors")[1], p.get("colors")[2], 255))
                output_list.append(struct.pack("ff", p.get("uvs")[0], p.get("uvs")[1]))

        elif output_format == 'line_list':
            # Line list
            for p in data:
                output_list.append(struct.pack("fff", p.get("vertices")[0], p.get("vertices")[1], p.get("vertices")[2]))
                output_list.append(struct.pack("BBBB", p.get("colors")[0], p.get("colors")[1], p.get("colors")[2], 255))

        else:
            # Point list
            for p in data:
                output_list.append(struct.pack("fff", p.get("vertices")[0], p.get("vertices")[1], p.get("vertices")[2]))
                output_list.append(struct.pack("BBBB", p.get("colors")[0], p.get("colors")[1], p.get("colors")[2], 255))

        # Combine data
        output = b"".join(output_list)

    # Debug output to GML script
    else:
        
        # Init data
        output = ""
        count = 0

        if output_format == 'triangle_list':
            # Triangle list
            for p in data:
                if count % 3 == 0:
                    output += "\t\t//triangle " + str(count // 3) + "\n"
                output += "\t\tvertex_position_3d(buf, " + str(p.get("vertices")[0]) + ", " + str(p.get("vertices")[1]) + ", " + str(p.get("vertices")[2]) + ");\n"
                output += "\t\tvertex_normal(buf, " + str(p.get("normals")[0]) + ", " + str(p.get("normals")[1]) + ", " + str(p.get("normals")[2]) + ");\n"
                if p.get("colors")[0] + p.get("colors")[1] + p.get("colors")[2] < 765:
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

        elif output_format == 'line_list':
            # Line list
            for p in data:
                if count % 2 == 0:
                    output += "\t\t//line " + str(count // 2) + "\n"
                output += "\t\tvertex_position_3d(buf, " + str(p.get("vertices")[0]) + ", " + str(p.get("vertices")[1]) + ", " + str(p.get("vertices")[2]) + ");\n"
                if p.get("colors")[0] + p.get("colors")[1] + p.get("colors")[2] < 765:
                    output += "\t\tvertex_color(buf, make_color_rgb(" + str(p.get("colors")[0]) + ", " + str(p.get("colors")[1]) + ", " + str(p.get("colors")[2]) + "), 1);\n"
                else:
                    output += "\t\tvertex_color(buf, c_white, 1);\n"
                if (count + 1) % 2 == 0:
                    output += "\n"
                count += 1
            # Add header and footer to file
            header = "function load_model(format){\n\n\t/*\n\tuse the following format to load this model:\n\tvertex_format_begin();\n\t\tvertex_format_add_position_3d();\n\t\tvertex_format_add_color();\n\t vertex_format = vertex_format_end();\n\t*/\n\n"
            output = header + "\tvar buf = vertex_create_buffer();\n\tvertex_begin(buf, format);\n\n" + output
            output += "\tvertex_end(buf);\n\n\treturn buf;\n}"
        else:
            # Point list
            for p in data:
                output += "\t\t//point " + str(count) + "\n"
                output += "\t\tvertex_position_3d(buf, " + str(p.get("vertices")[0]) + ", " + str(p.get("vertices")[1]) + ", " + str(p.get("vertices")[2]) + ");\n"
                if p.get("colors")[0] + p.get("colors")[1] + p.get("colors")[2] < 765:
                    output += "\t\tvertex_color(buf, make_color_rgb(" + str(p.get("colors")[0]) + ", " + str(p.get("colors")[1]) + ", " + str(p.get("colors")[2]) + "), 1);\n"
                else:
                    output += "\t\tvertex_color(buf, c_white, 1);\n"
                output += "\n"
                count += 1
            # Add header and footer to file
            header = "function load_model(format){\n\n\t/*\n\tuse the following format to load this model:\n\tvertex_format_begin();\n\t\tvertex_format_add_position_3d();\n\t\tvertex_format_add_color();\n\t vertex_format = vertex_format_end();\n\t*/\n\n"
            output = header + "\tvar buf = vertex_create_buffer();\n\tvertex_begin(buf, format);\n\n" + output
            output += "\tvertex_end(buf);\n\n\treturn buf;\n}"

    return output