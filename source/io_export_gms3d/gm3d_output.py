import struct

def format_output(data, output_format, output_type):
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