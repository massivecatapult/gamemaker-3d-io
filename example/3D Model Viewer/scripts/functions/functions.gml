function vb_grid(){
	var size = 100;
	var color = grid_color;
	var buf = vertex_create_buffer();
	vertex_begin(buf, global.vtf_lite);
		for (var i = -size; i <= size; i += 1){
			if (i == 0){
				color = y_axis_color;
			} else if (i mod 10 == 0){
				color = grid_color;
			} else {
				color = grid_color_lite;
			}
			vertex_position_3d(buf, i, -size, 0);
			vertex_color(buf, color, 1);
			vertex_position_3d(buf, i, size, 0);
			vertex_color(buf, color, 1);
		}
		for (var i = -size; i <= size; i += 1){
			if (i == 0){
				color = x_axis_color;
			} else if (i mod 10 == 0){
				color = grid_color;
			} else {
				color = grid_color_lite;
			}
			vertex_position_3d(buf, -size, i, 0);
			vertex_color(buf, color, 1);
			vertex_position_3d(buf, size, i, 0);
			vertex_color(buf, color, 1);
		}
	vertex_end(buf);
	vertex_freeze(buf);
	return buf;
}

function vertex_buffer_sphere(format, freeze){
	
var buf = vertex_create_buffer();
vertex_begin(buf, format);
	//triangle 0

	vertex_position_3d(buf, 0.0, 0.3827, 0.9239);
	vertex_normal(buf, 0.0, 0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.875);
	vertex_position_3d(buf, 0.0, 0.1951, 0.9808);
	vertex_normal(buf, 0.0, 0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.875);
	vertex_position_3d(buf, 0.0381, 0.1913, 0.9808);
	vertex_normal(buf, 0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.875);

	//triangle 1

	vertex_position_3d(buf, 0.1802, 0.9061, -0.3827);
	vertex_normal(buf, 0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.9375);
	vertex_position_3d(buf, 0.0, 0.9239, -0.3827);
	vertex_normal(buf, 0.0, 0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.9375);
	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.9375);

	//triangle 2

	vertex_position_3d(buf, 0.0, 0.5556, 0.8315);
	vertex_normal(buf, 0.0, 0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.0, 0.3827, 0.9239);
	vertex_normal(buf, 0.0, 0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.0747, 0.3753, 0.9239);
	vertex_normal(buf, 0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);

	//triangle 3

	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);
	vertex_position_3d(buf, 0.0, 0.8315, -0.5556);
	vertex_normal(buf, 0.0, 0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);
	vertex_position_3d(buf, 0.0, 0.9239, -0.3827);
	vertex_normal(buf, 0.0, 0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);

	//triangle 4

	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.375);
	vertex_position_3d(buf, 0.0, 0.5556, 0.8315);
	vertex_normal(buf, 0.0, 0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.375);
	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.375);

	//triangle 5

	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.4375);
	vertex_position_3d(buf, 0.0, 0.8315, -0.5556);
	vertex_normal(buf, 0.0, 0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.4375);
	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.4375);

	//triangle 6

	vertex_position_3d(buf, 0.1622, 0.8155, 0.5556);
	vertex_normal(buf, 0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.8125);
	vertex_position_3d(buf, 0.0, 0.8315, 0.5556);
	vertex_normal(buf, 0.0, 0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.8125);
	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.8125);

	//triangle 7

	vertex_position_3d(buf, 0.1084, 0.5449, -0.8315);
	vertex_normal(buf, 0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.875);
	vertex_position_3d(buf, 0.0, 0.5556, -0.8315);
	vertex_normal(buf, 0.0, 0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.875);
	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.875);

	//triangle 8

	vertex_position_3d(buf, 0.1802, 0.9061, 0.3827);
	vertex_normal(buf, 0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);
	vertex_position_3d(buf, 0.0, 0.9239, 0.3827);
	vertex_normal(buf, 0.0, 0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);
	vertex_position_3d(buf, 0.0, 0.8315, 0.5556);
	vertex_normal(buf, 0.0, 0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);

	//triangle 9

	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.0, 0.3827, -0.9239);
	vertex_normal(buf, 0.0, 0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.0, 0.5556, -0.8315);
	vertex_normal(buf, 0.0, 0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);

	//triangle 10

	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.3125);
	vertex_position_3d(buf, 0.0, 0.9808, 0.1951);
	vertex_normal(buf, 0.0, 0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.3125);
	vertex_position_3d(buf, 0.0, 0.9239, 0.3827);
	vertex_normal(buf, 0.0, 0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.3125);

	//triangle 11

	vertex_position_3d(buf, 0.0381, 0.1913, -0.9808);
	vertex_normal(buf, 0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.375);
	vertex_position_3d(buf, 0.0, 0.1951, -0.9808);
	vertex_normal(buf, 0.0, 0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.375);
	vertex_position_3d(buf, 0.0, 0.3827, -0.9239);
	vertex_normal(buf, 0.0, 0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.375);

	//triangle 12

	vertex_position_3d(buf, 0.0, 1.0, -0.0);
	vertex_normal(buf, 0.0, 1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.75);
	vertex_position_3d(buf, 0.0, 0.9808, 0.1951);
	vertex_normal(buf, 0.0, 0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.75);
	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.75);

	//triangle 13

	vertex_position_3d(buf, 0.0, 0.1951, 0.9808);
	vertex_normal(buf, 0.0, 0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.8125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.8125);
	vertex_position_3d(buf, 0.0381, 0.1913, 0.9808);
	vertex_normal(buf, 0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.8125);

	//triangle 14

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);
	vertex_position_3d(buf, 0.0, 0.1951, -0.9808);
	vertex_normal(buf, 0.0, 0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);
	vertex_position_3d(buf, 0.0381, 0.1913, -0.9808);
	vertex_normal(buf, 0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);

	//triangle 15

	vertex_position_3d(buf, 0.1913, 0.9619, -0.1951);
	vertex_normal(buf, 0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.25);
	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.25);
	vertex_position_3d(buf, 0.0, 1.0, -0.0);
	vertex_normal(buf, 0.0, 1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.25);

	//triangle 16

	vertex_position_3d(buf, 0.0381, 0.1913, 0.9808);
	vertex_normal(buf, 0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.3125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.3125);
	vertex_position_3d(buf, 0.0747, 0.1802, 0.9808);
	vertex_normal(buf, 0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.3125);

	//triangle 17

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.0381, 0.1913, -0.9808);
	vertex_normal(buf, 0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.0747, 0.1802, -0.9808);
	vertex_normal(buf, 0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);

	//triangle 18

	vertex_position_3d(buf, 0.3753, 0.9061, -0.1951);
	vertex_normal(buf, 0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);
	vertex_position_3d(buf, 0.1913, 0.9619, -0.1951);
	vertex_normal(buf, 0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);
	vertex_position_3d(buf, 0.1951, 0.9808, -0.0);
	vertex_normal(buf, 0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);

	//triangle 19

	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.6875);
	vertex_position_3d(buf, 0.0747, 0.3753, 0.9239);
	vertex_normal(buf, 0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.6875);
	vertex_position_3d(buf, 0.0381, 0.1913, 0.9808);
	vertex_normal(buf, 0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.6875);

	//triangle 20

	vertex_position_3d(buf, 0.3536, 0.8536, -0.3827);
	vertex_normal(buf, 0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.75);
	vertex_position_3d(buf, 0.1802, 0.9061, -0.3827);
	vertex_normal(buf, 0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.75);
	vertex_position_3d(buf, 0.1913, 0.9619, -0.1951);
	vertex_normal(buf, 0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.75);

	//triangle 21

	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);
	vertex_position_3d(buf, 0.0747, 0.3753, 0.9239);
	vertex_normal(buf, 0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);
	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);

	//triangle 22

	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.1875);
	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.1875);
	vertex_position_3d(buf, 0.1802, 0.9061, -0.3827);
	vertex_normal(buf, 0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.1875);

	//triangle 23

	vertex_position_3d(buf, 0.2706, 0.6533, 0.7071);
	vertex_normal(buf, 0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.25);
	vertex_position_3d(buf, 0.1379, 0.6935, 0.7071);
	vertex_normal(buf, 0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.25);
	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.25);

	//triangle 24

	vertex_position_3d(buf, 0.2706, 0.6533, -0.7071);
	vertex_normal(buf, 0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);
	vertex_position_3d(buf, 0.1379, 0.6935, -0.7071);
	vertex_normal(buf, 0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);
	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);

	//triangle 25

	vertex_position_3d(buf, 0.3182, 0.7682, 0.5556);
	vertex_normal(buf, 0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.625);
	vertex_position_3d(buf, 0.1622, 0.8155, 0.5556);
	vertex_normal(buf, 0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.625);
	vertex_position_3d(buf, 0.1379, 0.6935, 0.7071);
	vertex_normal(buf, 0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.625);

	//triangle 26

	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.6875);
	vertex_position_3d(buf, 0.1084, 0.5449, -0.8315);
	vertex_normal(buf, 0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.6875);
	vertex_position_3d(buf, 0.1379, 0.6935, -0.7071);
	vertex_normal(buf, 0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.6875);

	//triangle 27

	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);
	vertex_position_3d(buf, 0.1802, 0.9061, 0.3827);
	vertex_normal(buf, 0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);
	vertex_position_3d(buf, 0.1622, 0.8155, 0.5556);
	vertex_normal(buf, 0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);

	//triangle 28

	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.125);
	vertex_position_3d(buf, 0.1084, 0.5449, -0.8315);
	vertex_normal(buf, 0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.125);
	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.125);

	//triangle 29

	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.1875);
	vertex_position_3d(buf, 0.1802, 0.9061, 0.3827);
	vertex_normal(buf, 0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.1875);
	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.1875);

	//triangle 30

	vertex_position_3d(buf, 0.0747, 0.1802, -0.9808);
	vertex_normal(buf, 0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.0381, 0.1913, -0.9808);
	vertex_normal(buf, 0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);

	//triangle 31

	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5625);
	vertex_position_3d(buf, 0.1951, 0.9808, -0.0);
	vertex_normal(buf, 0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5625);
	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5625);

	//triangle 32

	vertex_position_3d(buf, 0.4619, 0.6913, 0.5556);
	vertex_normal(buf, 0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.625);
	vertex_position_3d(buf, 0.3182, 0.7682, 0.5556);
	vertex_normal(buf, 0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.625);
	vertex_position_3d(buf, 0.2706, 0.6533, 0.7071);
	vertex_normal(buf, 0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.625);

	//triangle 33

	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.2706, 0.6533, -0.7071);
	vertex_normal(buf, 0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);

	//triangle 34

	vertex_position_3d(buf, 0.5133, 0.7682, 0.3827);
	vertex_normal(buf, 0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.0625);
	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.0625);
	vertex_position_3d(buf, 0.3182, 0.7682, 0.5556);
	vertex_normal(buf, 0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.0625);

	//triangle 35

	vertex_position_3d(buf, 0.2126, 0.3182, -0.9239);
	vertex_normal(buf, 0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.125);
	vertex_position_3d(buf, 0.1464, 0.3536, -0.9239);
	vertex_normal(buf, 0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.125);
	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.125);

	//triangle 36

	vertex_position_3d(buf, 0.5449, 0.8155, 0.1951);
	vertex_normal(buf, 0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5);
	vertex_position_3d(buf, 0.3753, 0.9061, 0.1951);
	vertex_normal(buf, 0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5);
	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5);

	//triangle 37

	vertex_position_3d(buf, 0.1084, 0.1622, -0.9808);
	vertex_normal(buf, 0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5625);
	vertex_position_3d(buf, 0.0747, 0.1802, -0.9808);
	vertex_normal(buf, 0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5625);
	vertex_position_3d(buf, 0.1464, 0.3536, -0.9239);
	vertex_normal(buf, 0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5625);

	//triangle 38

	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.3753, 0.9061, 0.1951);
	vertex_normal(buf, 0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.5449, 0.8155, 0.1951);
	vertex_normal(buf, 0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);

	//triangle 39

	vertex_position_3d(buf, 0.0747, 0.1802, 0.9808);
	vertex_normal(buf, 0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.9375);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.9375);
	vertex_position_3d(buf, 0.1084, 0.1622, 0.9808);
	vertex_normal(buf, 0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.9375);

	//triangle 40

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7344, 1.0);
	vertex_position_3d(buf, 0.0747, 0.1802, -0.9808);
	vertex_normal(buf, 0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7344, 1.0);
	vertex_position_3d(buf, 0.1084, 0.1622, -0.9808);
	vertex_normal(buf, 0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7344, 1.0);

	//triangle 41

	vertex_position_3d(buf, 0.5449, 0.8155, -0.1951);
	vertex_normal(buf, 0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.3753, 0.9061, -0.1951);
	vertex_normal(buf, 0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);

	//triangle 42

	vertex_position_3d(buf, 0.2126, 0.3182, 0.9239);
	vertex_normal(buf, 0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7344, 0.0);
	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7344, 0.0);
	vertex_position_3d(buf, 0.0747, 0.1802, 0.9808);
	vertex_normal(buf, 0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7344, 0.0);

	//triangle 43

	vertex_position_3d(buf, 0.3536, 0.8536, -0.3827);
	vertex_normal(buf, 0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.0625);
	vertex_position_3d(buf, 0.3753, 0.9061, -0.1951);
	vertex_normal(buf, 0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.0625);
	vertex_position_3d(buf, 0.5449, 0.8155, -0.1951);
	vertex_normal(buf, 0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.0625);

	//triangle 44

	vertex_position_3d(buf, 0.3087, 0.4619, 0.8315);
	vertex_normal(buf, 0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.2126, 0.5133, 0.8315);
	vertex_normal(buf, 0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);

	//triangle 45

	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);
	vertex_position_3d(buf, 0.3536, 0.8536, -0.3827);
	vertex_normal(buf, 0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);
	vertex_position_3d(buf, 0.5133, 0.7682, -0.3827);
	vertex_normal(buf, 0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);

	//triangle 46

	vertex_position_3d(buf, 0.3928, 0.5879, 0.7071);
	vertex_normal(buf, 0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.4375);
	vertex_position_3d(buf, 0.2706, 0.6533, 0.7071);
	vertex_normal(buf, 0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.4375);
	vertex_position_3d(buf, 0.2126, 0.5133, 0.8315);
	vertex_normal(buf, 0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.4375);

	//triangle 47

	vertex_position_3d(buf, 0.3928, 0.5879, -0.7071);
	vertex_normal(buf, 0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5);
	vertex_position_3d(buf, 0.2706, 0.6533, -0.7071);
	vertex_normal(buf, 0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5);
	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.75, 0.5);

	//triangle 48

	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.5449, 0.8155, -0.1951);
	vertex_normal(buf, 0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.5556, 0.8315, -0.0);
	vertex_normal(buf, 0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);

	//triangle 49

	vertex_position_3d(buf, 0.2706, 0.2706, 0.9239);
	vertex_normal(buf, 0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7031, 1.0);
	vertex_position_3d(buf, 0.2126, 0.3182, 0.9239);
	vertex_normal(buf, 0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7031, 1.0);
	vertex_position_3d(buf, 0.1084, 0.1622, 0.9808);
	vertex_normal(buf, 0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7031, 1.0);

	//triangle 50

	vertex_position_3d(buf, 0.5133, 0.7682, -0.3827);
	vertex_normal(buf, 0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);
	vertex_position_3d(buf, 0.5449, 0.8155, -0.1951);
	vertex_normal(buf, 0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);
	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);

	//triangle 51

	vertex_position_3d(buf, 0.3928, 0.3928, 0.8315);
	vertex_normal(buf, 0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7031, 0.0);
	vertex_position_3d(buf, 0.3087, 0.4619, 0.8315);
	vertex_normal(buf, 0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7031, 0.0);
	vertex_position_3d(buf, 0.2126, 0.3182, 0.9239);
	vertex_normal(buf, 0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7031, 0.0);

	//triangle 52

	vertex_position_3d(buf, 0.4619, 0.6913, -0.5556);
	vertex_normal(buf, 0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.5133, 0.7682, -0.3827);
	vertex_normal(buf, 0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.6533, 0.6533, -0.3827);
	vertex_normal(buf, 0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);

	//triangle 53

	vertex_position_3d(buf, 0.5, 0.5, 0.7071);
	vertex_normal(buf, 0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.3928, 0.5879, 0.7071);
	vertex_normal(buf, 0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.3087, 0.4619, 0.8315);
	vertex_normal(buf, 0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);

	//triangle 54

	vertex_position_3d(buf, 0.3928, 0.5879, -0.7071);
	vertex_normal(buf, 0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);
	vertex_position_3d(buf, 0.4619, 0.6913, -0.5556);
	vertex_normal(buf, 0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);
	vertex_position_3d(buf, 0.5879, 0.5879, -0.5556);
	vertex_normal(buf, 0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);

	//triangle 55

	vertex_position_3d(buf, 0.5879, 0.5879, 0.5556);
	vertex_normal(buf, 0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);
	vertex_position_3d(buf, 0.4619, 0.6913, 0.5556);
	vertex_normal(buf, 0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);
	vertex_position_3d(buf, 0.3928, 0.5879, 0.7071);
	vertex_normal(buf, 0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);

	//triangle 56

	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5);
	vertex_position_3d(buf, 0.3928, 0.5879, -0.7071);
	vertex_normal(buf, 0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5);
	vertex_position_3d(buf, 0.5, 0.5, -0.7071);
	vertex_normal(buf, 0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5);

	//triangle 57

	vertex_position_3d(buf, 0.6533, 0.6533, 0.3827);
	vertex_normal(buf, 0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.5133, 0.7682, 0.3827);
	vertex_normal(buf, 0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.4619, 0.6913, 0.5556);
	vertex_normal(buf, 0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);

	//triangle 58

	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);
	vertex_position_3d(buf, 0.2126, 0.3182, -0.9239);
	vertex_normal(buf, 0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);
	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);

	//triangle 59

	vertex_position_3d(buf, 0.6935, 0.6935, 0.1951);
	vertex_normal(buf, 0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.5449, 0.8155, 0.1951);
	vertex_normal(buf, 0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);
	vertex_position_3d(buf, 0.5133, 0.7682, 0.3827);
	vertex_normal(buf, 0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.9375);

	//triangle 60

	vertex_position_3d(buf, 0.1379, 0.1379, -0.9808);
	vertex_normal(buf, 0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);
	vertex_position_3d(buf, 0.1084, 0.1622, -0.9808);
	vertex_normal(buf, 0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);
	vertex_position_3d(buf, 0.2126, 0.3182, -0.9239);
	vertex_normal(buf, 0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);

	//triangle 61

	vertex_position_3d(buf, 0.5556, 0.8315, -0.0);
	vertex_normal(buf, 0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);
	vertex_position_3d(buf, 0.5449, 0.8155, 0.1951);
	vertex_normal(buf, 0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);
	vertex_position_3d(buf, 0.6935, 0.6935, 0.1951);
	vertex_normal(buf, 0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);

	//triangle 62

	vertex_position_3d(buf, 0.1084, 0.1622, 0.9808);
	vertex_normal(buf, 0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);
	vertex_position_3d(buf, 0.1379, 0.1379, 0.9808);
	vertex_normal(buf, 0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.4375);

	//triangle 63

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);
	vertex_position_3d(buf, 0.1084, 0.1622, -0.9808);
	vertex_normal(buf, 0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);
	vertex_position_3d(buf, 0.1379, 0.1379, -0.9808);
	vertex_normal(buf, 0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);

	//triangle 64

	vertex_position_3d(buf, 0.3928, 0.3928, -0.8315);
	vertex_normal(buf, 0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);
	vertex_position_3d(buf, 0.5, 0.5, -0.7071);
	vertex_normal(buf, 0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);
	vertex_position_3d(buf, 0.5879, 0.3928, -0.7071);
	vertex_normal(buf, 0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.875);

	//triangle 65

	vertex_position_3d(buf, 0.7682, 0.5133, 0.3827);
	vertex_normal(buf, 0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.6533, 0.6533, 0.3827);
	vertex_normal(buf, 0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.5879, 0.5879, 0.5556);
	vertex_normal(buf, 0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);

	//triangle 66

	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);
	vertex_position_3d(buf, 0.3928, 0.3928, -0.8315);
	vertex_normal(buf, 0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);
	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);

	//triangle 67

	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.6935, 0.6935, 0.1951);
	vertex_normal(buf, 0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.6533, 0.6533, 0.3827);
	vertex_normal(buf, 0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);

	//triangle 68

	vertex_position_3d(buf, 0.1622, 0.1084, -0.9808);
	vertex_normal(buf, 0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);
	vertex_position_3d(buf, 0.1379, 0.1379, -0.9808);
	vertex_normal(buf, 0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);
	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.375);

	//triangle 69

	vertex_position_3d(buf, 0.7071, 0.7071, -0.0);
	vertex_normal(buf, 0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);
	vertex_position_3d(buf, 0.6935, 0.6935, 0.1951);
	vertex_normal(buf, 0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);
	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);

	//triangle 70

	vertex_position_3d(buf, 0.1379, 0.1379, 0.9808);
	vertex_normal(buf, 0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.75);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.75);
	vertex_position_3d(buf, 0.1622, 0.1084, 0.9808);
	vertex_normal(buf, 0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.75);

	//triangle 71

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);
	vertex_position_3d(buf, 0.1379, 0.1379, -0.9808);
	vertex_normal(buf, 0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);
	vertex_position_3d(buf, 0.1622, 0.1084, -0.9808);
	vertex_normal(buf, 0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.8125);

	//triangle 72

	vertex_position_3d(buf, 0.8155, 0.5449, -0.1951);
	vertex_normal(buf, 0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);
	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);
	vertex_position_3d(buf, 0.7071, 0.7071, -0.0);
	vertex_normal(buf, 0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);

	//triangle 73

	vertex_position_3d(buf, 0.3182, 0.2126, 0.9239);
	vertex_normal(buf, 0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.25);
	vertex_position_3d(buf, 0.2706, 0.2706, 0.9239);
	vertex_normal(buf, 0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.25);
	vertex_position_3d(buf, 0.1379, 0.1379, 0.9808);
	vertex_normal(buf, 0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.25);

	//triangle 74

	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.6533, 0.6533, -0.3827);
	vertex_normal(buf, 0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);
	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.3125);

	//triangle 75

	vertex_position_3d(buf, 0.4619, 0.3087, 0.8315);
	vertex_normal(buf, 0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);
	vertex_position_3d(buf, 0.3928, 0.3928, 0.8315);
	vertex_normal(buf, 0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);
	vertex_position_3d(buf, 0.2706, 0.2706, 0.9239);
	vertex_normal(buf, 0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);

	//triangle 76

	vertex_position_3d(buf, 0.6913, 0.4619, -0.5556);
	vertex_normal(buf, 0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);
	vertex_position_3d(buf, 0.5879, 0.5879, -0.5556);
	vertex_normal(buf, 0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);
	vertex_position_3d(buf, 0.6533, 0.6533, -0.3827);
	vertex_normal(buf, 0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);

	//triangle 77

	vertex_position_3d(buf, 0.5879, 0.3928, 0.7071);
	vertex_normal(buf, 0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.75);
	vertex_position_3d(buf, 0.5, 0.5, 0.7071);
	vertex_normal(buf, 0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.75);
	vertex_position_3d(buf, 0.3928, 0.3928, 0.8315);
	vertex_normal(buf, 0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.75);

	//triangle 78

	vertex_position_3d(buf, 0.5879, 0.3928, -0.7071);
	vertex_normal(buf, 0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.5, 0.5, -0.7071);
	vertex_normal(buf, 0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.5879, 0.5879, -0.5556);
	vertex_normal(buf, 0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);

	//triangle 79

	vertex_position_3d(buf, 0.6913, 0.4619, 0.5556);
	vertex_normal(buf, 0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);
	vertex_position_3d(buf, 0.5879, 0.5879, 0.5556);
	vertex_normal(buf, 0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);
	vertex_position_3d(buf, 0.5, 0.5, 0.7071);
	vertex_normal(buf, 0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);

	//triangle 80

	vertex_position_3d(buf, 0.3536, 0.1464, 0.9239);
	vertex_normal(buf, 0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.25);
	vertex_position_3d(buf, 0.3182, 0.2126, 0.9239);
	vertex_normal(buf, 0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.25);
	vertex_position_3d(buf, 0.1622, 0.1084, 0.9808);
	vertex_normal(buf, 0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.25);

	//triangle 81

	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.8155, 0.5449, -0.1951);
	vertex_normal(buf, 0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.9061, 0.3753, -0.1951);
	vertex_normal(buf, 0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);

	//triangle 82

	vertex_position_3d(buf, 0.5133, 0.2126, 0.8315);
	vertex_normal(buf, 0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);
	vertex_position_3d(buf, 0.4619, 0.3087, 0.8315);
	vertex_normal(buf, 0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);
	vertex_position_3d(buf, 0.3182, 0.2126, 0.9239);
	vertex_normal(buf, 0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);

	//triangle 83

	vertex_position_3d(buf, 0.7682, 0.3182, -0.5556);
	vertex_normal(buf, 0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);
	vertex_position_3d(buf, 0.6913, 0.4619, -0.5556);
	vertex_normal(buf, 0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);
	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.6875);

	//triangle 84

	vertex_position_3d(buf, 0.6533, 0.2706, 0.7071);
	vertex_normal(buf, 0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);
	vertex_position_3d(buf, 0.5879, 0.3928, 0.7071);
	vertex_normal(buf, 0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);
	vertex_position_3d(buf, 0.4619, 0.3087, 0.8315);
	vertex_normal(buf, 0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);

	//triangle 85

	vertex_position_3d(buf, 0.6533, 0.2706, -0.7071);
	vertex_normal(buf, 0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);
	vertex_position_3d(buf, 0.5879, 0.3928, -0.7071);
	vertex_normal(buf, 0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);
	vertex_position_3d(buf, 0.6913, 0.4619, -0.5556);
	vertex_normal(buf, 0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.1875);

	//triangle 86

	vertex_position_3d(buf, 0.7682, 0.3182, 0.5556);
	vertex_normal(buf, 0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.6913, 0.4619, 0.5556);
	vertex_normal(buf, 0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.5879, 0.3928, 0.7071);
	vertex_normal(buf, 0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);

	//triangle 87

	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.5879, 0.3928, -0.7071);
	vertex_normal(buf, 0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.6533, 0.2706, -0.7071);
	vertex_normal(buf, 0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);

	//triangle 88

	vertex_position_3d(buf, 0.8536, 0.3536, 0.3827);
	vertex_normal(buf, 0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);
	vertex_position_3d(buf, 0.7682, 0.5133, 0.3827);
	vertex_normal(buf, 0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);
	vertex_position_3d(buf, 0.6913, 0.4619, 0.5556);
	vertex_normal(buf, 0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.625);

	//triangle 89

	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.3182, 0.2126, -0.9239);
	vertex_normal(buf, 0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);

	//triangle 90

	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.7682, 0.5133, 0.3827);
	vertex_normal(buf, 0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.8536, 0.3536, 0.3827);
	vertex_normal(buf, 0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);

	//triangle 91

	vertex_position_3d(buf, 0.1622, 0.1084, -0.9808);
	vertex_normal(buf, 0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.3182, 0.2126, -0.9239);
	vertex_normal(buf, 0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);
	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.0625);

	//triangle 92

	vertex_position_3d(buf, 0.8315, 0.5556, -0.0);
	vertex_normal(buf, 0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);
	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);
	vertex_position_3d(buf, 0.9061, 0.3753, 0.1951);
	vertex_normal(buf, 0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.125);

	//triangle 93

	vertex_position_3d(buf, 0.1622, 0.1084, 0.9808);
	vertex_normal(buf, 0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);
	vertex_position_3d(buf, 0.1802, 0.0747, 0.9808);
	vertex_normal(buf, 0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);

	//triangle 94

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5);
	vertex_position_3d(buf, 0.1622, 0.1084, -0.9808);
	vertex_normal(buf, 0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5);
	vertex_position_3d(buf, 0.1802, 0.0747, -0.9808);
	vertex_normal(buf, 0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5);

	//triangle 95

	vertex_position_3d(buf, 0.9061, 0.3753, -0.1951);
	vertex_normal(buf, 0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.8155, 0.5449, -0.1951);
	vertex_normal(buf, 0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);
	vertex_position_3d(buf, 0.8315, 0.5556, -0.0);
	vertex_normal(buf, 0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.7188, 0.5625);

	//triangle 96

	vertex_position_3d(buf, 0.9061, 0.1802, 0.3827);
	vertex_normal(buf, 0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);
	vertex_position_3d(buf, 0.8536, 0.3536, 0.3827);
	vertex_normal(buf, 0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);
	vertex_position_3d(buf, 0.7682, 0.3182, 0.5556);
	vertex_normal(buf, 0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);

	//triangle 97

	vertex_position_3d(buf, 0.3753, 0.0747, -0.9239);
	vertex_normal(buf, 0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);
	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);
	vertex_position_3d(buf, 0.5133, 0.2126, -0.8315);
	vertex_normal(buf, 0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);

	//triangle 98

	vertex_position_3d(buf, 0.9061, 0.3753, 0.1951);
	vertex_normal(buf, 0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);
	vertex_position_3d(buf, 0.8536, 0.3536, 0.3827);
	vertex_normal(buf, 0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);
	vertex_position_3d(buf, 0.9061, 0.1802, 0.3827);
	vertex_normal(buf, 0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);

	//triangle 99

	vertex_position_3d(buf, 0.1913, 0.0381, -0.9808);
	vertex_normal(buf, 0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);
	vertex_position_3d(buf, 0.1802, 0.0747, -0.9808);
	vertex_normal(buf, 0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);
	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);

	//triangle 100

	vertex_position_3d(buf, 0.9239, 0.3827, -0.0);
	vertex_normal(buf, 0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.9061, 0.3753, 0.1951);
	vertex_normal(buf, 0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.9619, 0.1913, 0.1951);
	vertex_normal(buf, 0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);

	//triangle 101

	vertex_position_3d(buf, 0.1802, 0.0747, 0.9808);
	vertex_normal(buf, 0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);
	vertex_position_3d(buf, 0.1913, 0.0381, 0.9808);
	vertex_normal(buf, 0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);

	//triangle 102

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);
	vertex_position_3d(buf, 0.1802, 0.0747, -0.9808);
	vertex_normal(buf, 0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);
	vertex_position_3d(buf, 0.1913, 0.0381, -0.9808);
	vertex_normal(buf, 0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);

	//triangle 103

	vertex_position_3d(buf, 0.9619, 0.1913, -0.1951);
	vertex_normal(buf, 0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.9061, 0.3753, -0.1951);
	vertex_normal(buf, 0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.9239, 0.3827, -0.0);
	vertex_normal(buf, 0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);

	//triangle 104

	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);
	vertex_position_3d(buf, 0.3536, 0.1464, 0.9239);
	vertex_normal(buf, 0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);
	vertex_position_3d(buf, 0.1802, 0.0747, 0.9808);
	vertex_normal(buf, 0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.6875);

	//triangle 105

	vertex_position_3d(buf, 0.8536, 0.3536, -0.3827);
	vertex_normal(buf, 0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);
	vertex_position_3d(buf, 0.9061, 0.3753, -0.1951);
	vertex_normal(buf, 0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);
	vertex_position_3d(buf, 0.9619, 0.1913, -0.1951);
	vertex_normal(buf, 0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);

	//triangle 106

	vertex_position_3d(buf, 0.5449, 0.1084, 0.8315);
	vertex_normal(buf, 0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.125);
	vertex_position_3d(buf, 0.5133, 0.2126, 0.8315);
	vertex_normal(buf, 0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.125);
	vertex_position_3d(buf, 0.3536, 0.1464, 0.9239);
	vertex_normal(buf, 0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.125);

	//triangle 107

	vertex_position_3d(buf, 0.8155, 0.1622, -0.5556);
	vertex_normal(buf, 0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.7682, 0.3182, -0.5556);
	vertex_normal(buf, 0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);
	vertex_position_3d(buf, 0.8536, 0.3536, -0.3827);
	vertex_normal(buf, 0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.1875);

	//triangle 108

	vertex_position_3d(buf, 0.6935, 0.1379, 0.7071);
	vertex_normal(buf, 0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.6533, 0.2706, 0.7071);
	vertex_normal(buf, 0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.5133, 0.2126, 0.8315);
	vertex_normal(buf, 0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);

	//triangle 109

	vertex_position_3d(buf, 0.6935, 0.1379, -0.7071);
	vertex_normal(buf, 0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5625);
	vertex_position_3d(buf, 0.6533, 0.2706, -0.7071);
	vertex_normal(buf, 0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5625);
	vertex_position_3d(buf, 0.7682, 0.3182, -0.5556);
	vertex_normal(buf, 0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5625);

	//triangle 110

	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.7682, 0.3182, 0.5556);
	vertex_normal(buf, 0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);
	vertex_position_3d(buf, 0.6533, 0.2706, 0.7071);
	vertex_normal(buf, 0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.625);

	//triangle 111

	vertex_position_3d(buf, 0.5133, 0.2126, -0.8315);
	vertex_normal(buf, 0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.6533, 0.2706, -0.7071);
	vertex_normal(buf, 0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.6935, 0.1379, -0.7071);
	vertex_normal(buf, 0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);

	//triangle 112

	vertex_position_3d(buf, 0.9061, 0.1802, -0.3827);
	vertex_normal(buf, 0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.9619, 0.1913, -0.1951);
	vertex_normal(buf, 0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.9808, -0.0, -0.1951);
	vertex_normal(buf, 0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);

	//triangle 113

	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.125);
	vertex_position_3d(buf, 0.5449, 0.1084, 0.8315);
	vertex_normal(buf, 0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.125);
	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.125);

	//triangle 114

	vertex_position_3d(buf, 0.8315, -0.0, -0.5556);
	vertex_normal(buf, 0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);
	vertex_position_3d(buf, 0.8155, 0.1622, -0.5556);
	vertex_normal(buf, 0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);
	vertex_position_3d(buf, 0.9061, 0.1802, -0.3827);
	vertex_normal(buf, 0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);

	//triangle 115

	vertex_position_3d(buf, 0.7071, -0.0, 0.7071);
	vertex_normal(buf, 0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5625);
	vertex_position_3d(buf, 0.6935, 0.1379, 0.7071);
	vertex_normal(buf, 0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5625);
	vertex_position_3d(buf, 0.5449, 0.1084, 0.8315);
	vertex_normal(buf, 0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5625);

	//triangle 116

	vertex_position_3d(buf, 0.7071, -0.0, -0.7071);
	vertex_normal(buf, 0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.6935, 0.1379, -0.7071);
	vertex_normal(buf, 0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.8155, 0.1622, -0.5556);
	vertex_normal(buf, 0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);

	//triangle 117

	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);
	vertex_position_3d(buf, 0.6935, 0.1379, 0.7071);
	vertex_normal(buf, 0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);
	vertex_position_3d(buf, 0.7071, -0.0, 0.7071);
	vertex_normal(buf, 0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);

	//triangle 118

	vertex_position_3d(buf, 0.5449, 0.1084, -0.8315);
	vertex_normal(buf, 0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6719, 1.0);
	vertex_position_3d(buf, 0.6935, 0.1379, -0.7071);
	vertex_normal(buf, 0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6719, 1.0);
	vertex_position_3d(buf, 0.7071, -0.0, -0.7071);
	vertex_normal(buf, 0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6719, 1.0);

	//triangle 119

	vertex_position_3d(buf, 0.9239, -0.0, 0.3827);
	vertex_normal(buf, 0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);
	vertex_position_3d(buf, 0.9061, 0.1802, 0.3827);
	vertex_normal(buf, 0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);
	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);

	//triangle 120

	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6719, 0.0);
	vertex_position_3d(buf, 0.3753, 0.0747, -0.9239);
	vertex_normal(buf, 0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6719, 0.0);
	vertex_position_3d(buf, 0.5449, 0.1084, -0.8315);
	vertex_normal(buf, 0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6719, 0.0);

	//triangle 121

	vertex_position_3d(buf, 0.9619, 0.1913, 0.1951);
	vertex_normal(buf, 0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.9061, 0.1802, 0.3827);
	vertex_normal(buf, 0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);
	vertex_position_3d(buf, 0.9239, -0.0, 0.3827);
	vertex_normal(buf, 0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.0625);

	//triangle 122

	vertex_position_3d(buf, 0.1913, 0.0381, -0.9808);
	vertex_normal(buf, 0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.3753, 0.0747, -0.9239);
	vertex_normal(buf, 0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);

	//triangle 123

	vertex_position_3d(buf, 0.9808, 0.1951, -0.0);
	vertex_normal(buf, 0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.9619, 0.1913, 0.1951);
	vertex_normal(buf, 0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.9808, -0.0, 0.1951);
	vertex_normal(buf, 0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);

	//triangle 124

	vertex_position_3d(buf, 0.1913, 0.0381, 0.9808);
	vertex_normal(buf, 0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);
	vertex_position_3d(buf, 0.1951, -0.0, 0.9808);
	vertex_normal(buf, 0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);

	//triangle 125

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);
	vertex_position_3d(buf, 0.1913, 0.0381, -0.9808);
	vertex_normal(buf, 0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);
	vertex_position_3d(buf, 0.1951, -0.0, -0.9808);
	vertex_normal(buf, 0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.5);

	//triangle 126

	vertex_position_3d(buf, 0.9808, -0.0, -0.1951);
	vertex_normal(buf, 0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);
	vertex_position_3d(buf, 0.9619, 0.1913, -0.1951);
	vertex_normal(buf, 0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);
	vertex_position_3d(buf, 0.9808, 0.1951, -0.0);
	vertex_normal(buf, 0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);

	//triangle 127

	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.1913, 0.0381, 0.9808);
	vertex_normal(buf, 0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.1951, -0.0, 0.9808);
	vertex_normal(buf, 0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);

	//triangle 128

	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);
	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);
	vertex_position_3d(buf, 0.5556, -0.0, -0.8315);
	vertex_normal(buf, 0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.9375);

	//triangle 129

	vertex_position_3d(buf, 0.9808, -0.0, 0.1951);
	vertex_normal(buf, 0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);
	vertex_position_3d(buf, 0.9239, -0.0, 0.3827);
	vertex_normal(buf, 0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);
	vertex_position_3d(buf, 0.9061, -0.1802, 0.3827);
	vertex_normal(buf, 0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);

	//triangle 130

	vertex_position_3d(buf, 0.1913, -0.0381, -0.9808);
	vertex_normal(buf, 0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);
	vertex_position_3d(buf, 0.1951, -0.0, -0.9808);
	vertex_normal(buf, 0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);
	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.4375);

	//triangle 131

	vertex_position_3d(buf, 1.0, -0.0, -0.0);
	vertex_normal(buf, 1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.9808, -0.0, 0.1951);
	vertex_normal(buf, 0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.9619, -0.1913, 0.1951);
	vertex_normal(buf, 0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);

	//triangle 132

	vertex_position_3d(buf, 0.1951, -0.0, 0.9808);
	vertex_normal(buf, 0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);
	vertex_position_3d(buf, 0.1913, -0.0381, 0.9808);
	vertex_normal(buf, 0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);

	//triangle 133

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.8125);
	vertex_position_3d(buf, 0.1951, -0.0, -0.9808);
	vertex_normal(buf, 0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.8125);
	vertex_position_3d(buf, 0.1913, -0.0381, -0.9808);
	vertex_normal(buf, 0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.8125);

	//triangle 134

	vertex_position_3d(buf, 0.9619, -0.1913, -0.1951);
	vertex_normal(buf, 0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 0.9808, -0.0, -0.1951);
	vertex_normal(buf, 0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);
	vertex_position_3d(buf, 1.0, -0.0, -0.0);
	vertex_normal(buf, 1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.875);

	//triangle 135

	vertex_position_3d(buf, 0.3827, -0.0, 0.9239);
	vertex_normal(buf, 0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);
	vertex_position_3d(buf, 0.1951, -0.0, 0.9808);
	vertex_normal(buf, 0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);
	vertex_position_3d(buf, 0.1913, -0.0381, 0.9808);
	vertex_normal(buf, 0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);

	//triangle 136

	vertex_position_3d(buf, 0.9239, -0.0, -0.3827);
	vertex_normal(buf, 0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);
	vertex_position_3d(buf, 0.9808, -0.0, -0.1951);
	vertex_normal(buf, 0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);
	vertex_position_3d(buf, 0.9619, -0.1913, -0.1951);
	vertex_normal(buf, 0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.375);

	//triangle 137

	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);
	vertex_position_3d(buf, 0.3827, -0.0, 0.9239);
	vertex_normal(buf, 0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);
	vertex_position_3d(buf, 0.3753, -0.0747, 0.9239);
	vertex_normal(buf, 0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);

	//triangle 138

	vertex_position_3d(buf, 0.8155, -0.1622, -0.5556);
	vertex_normal(buf, 0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);
	vertex_position_3d(buf, 0.8315, -0.0, -0.5556);
	vertex_normal(buf, 0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);
	vertex_position_3d(buf, 0.9239, -0.0, -0.3827);
	vertex_normal(buf, 0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);

	//triangle 139

	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);
	vertex_position_3d(buf, 0.7071, -0.0, 0.7071);
	vertex_normal(buf, 0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);
	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.75);

	//triangle 140

	vertex_position_3d(buf, 0.6935, -0.1379, -0.7071);
	vertex_normal(buf, 0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.8125);
	vertex_position_3d(buf, 0.7071, -0.0, -0.7071);
	vertex_normal(buf, 0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.8125);
	vertex_position_3d(buf, 0.8315, -0.0, -0.5556);
	vertex_normal(buf, 0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.8125);

	//triangle 141

	vertex_position_3d(buf, 0.8315, -0.0, 0.5556);
	vertex_normal(buf, 0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);
	vertex_position_3d(buf, 0.7071, -0.0, 0.7071);
	vertex_normal(buf, 0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);
	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);

	//triangle 142

	vertex_position_3d(buf, 0.5556, -0.0, -0.8315);
	vertex_normal(buf, 0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);
	vertex_position_3d(buf, 0.7071, -0.0, -0.7071);
	vertex_normal(buf, 0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);
	vertex_position_3d(buf, 0.6935, -0.1379, -0.7071);
	vertex_normal(buf, 0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.25);

	//triangle 143

	vertex_position_3d(buf, 0.9061, -0.1802, 0.3827);
	vertex_normal(buf, 0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);
	vertex_position_3d(buf, 0.9239, -0.0, 0.3827);
	vertex_normal(buf, 0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);
	vertex_position_3d(buf, 0.8315, -0.0, 0.5556);
	vertex_normal(buf, 0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6875, 0.3125);

	//triangle 144

	vertex_position_3d(buf, 0.7682, -0.3182, -0.5556);
	vertex_normal(buf, 0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.8155, -0.1622, -0.5556);
	vertex_normal(buf, 0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.9061, -0.1802, -0.3827);
	vertex_normal(buf, 0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);

	//triangle 145

	vertex_position_3d(buf, 0.6533, -0.2706, 0.7071);
	vertex_normal(buf, 0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.5449, -0.1084, 0.8315);
	vertex_normal(buf, 0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);

	//triangle 146

	vertex_position_3d(buf, 0.6533, -0.2706, -0.7071);
	vertex_normal(buf, 0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5);
	vertex_position_3d(buf, 0.6935, -0.1379, -0.7071);
	vertex_normal(buf, 0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5);
	vertex_position_3d(buf, 0.8155, -0.1622, -0.5556);
	vertex_normal(buf, 0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5);

	//triangle 147

	vertex_position_3d(buf, 0.7682, -0.3182, 0.5556);
	vertex_normal(buf, 0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);
	vertex_position_3d(buf, 0.8155, -0.1622, 0.5556);
	vertex_normal(buf, 0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);
	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);

	//triangle 148

	vertex_position_3d(buf, 0.5449, -0.1084, -0.8315);
	vertex_normal(buf, 0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);
	vertex_position_3d(buf, 0.6935, -0.1379, -0.7071);
	vertex_normal(buf, 0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);
	vertex_position_3d(buf, 0.6533, -0.2706, -0.7071);
	vertex_normal(buf, 0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);

	//triangle 149

	vertex_position_3d(buf, 0.8536, -0.3536, 0.3827);
	vertex_normal(buf, 0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);
	vertex_position_3d(buf, 0.9061, -0.1802, 0.3827);
	vertex_normal(buf, 0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);
	vertex_position_3d(buf, 0.8155, -0.1622, 0.5556);
	vertex_normal(buf, 0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);

	//triangle 150

	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);
	vertex_position_3d(buf, 0.5449, -0.1084, -0.8315);
	vertex_normal(buf, 0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);
	vertex_position_3d(buf, 0.5133, -0.2126, -0.8315);
	vertex_normal(buf, 0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);

	//triangle 151

	vertex_position_3d(buf, 0.9619, -0.1913, 0.1951);
	vertex_normal(buf, 0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.9061, -0.1802, 0.3827);
	vertex_normal(buf, 0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);
	vertex_position_3d(buf, 0.8536, -0.3536, 0.3827);
	vertex_normal(buf, 0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.4375);

	//triangle 152

	vertex_position_3d(buf, 0.1802, -0.0747, -0.9808);
	vertex_normal(buf, 0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.1913, -0.0381, -0.9808);
	vertex_normal(buf, 0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);

	//triangle 153

	vertex_position_3d(buf, 0.9808, -0.1951, -0.0);
	vertex_normal(buf, 0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);
	vertex_position_3d(buf, 0.9619, -0.1913, 0.1951);
	vertex_normal(buf, 0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);
	vertex_position_3d(buf, 0.9061, -0.3753, 0.1951);
	vertex_normal(buf, 0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);

	//triangle 154

	vertex_position_3d(buf, 0.1913, -0.0381, 0.9808);
	vertex_normal(buf, 0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);
	vertex_position_3d(buf, 0.1802, -0.0747, 0.9808);
	vertex_normal(buf, 0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);

	//triangle 155

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);
	vertex_position_3d(buf, 0.1913, -0.0381, -0.9808);
	vertex_normal(buf, 0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);
	vertex_position_3d(buf, 0.1802, -0.0747, -0.9808);
	vertex_normal(buf, 0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.875);

	//triangle 156

	vertex_position_3d(buf, 0.9061, -0.3753, -0.1951);
	vertex_normal(buf, 0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.3125);
	vertex_position_3d(buf, 0.9619, -0.1913, -0.1951);
	vertex_normal(buf, 0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.3125);
	vertex_position_3d(buf, 0.9808, -0.1951, -0.0);
	vertex_normal(buf, 0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.3125);

	//triangle 157

	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);
	vertex_position_3d(buf, 0.3753, -0.0747, 0.9239);
	vertex_normal(buf, 0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);
	vertex_position_3d(buf, 0.1913, -0.0381, 0.9808);
	vertex_normal(buf, 0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.375);

	//triangle 158

	vertex_position_3d(buf, 0.9061, -0.1802, -0.3827);
	vertex_normal(buf, 0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);
	vertex_position_3d(buf, 0.9619, -0.1913, -0.1951);
	vertex_normal(buf, 0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);
	vertex_position_3d(buf, 0.9061, -0.3753, -0.1951);
	vertex_normal(buf, 0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);

	//triangle 159

	vertex_position_3d(buf, 0.5133, -0.2126, 0.8315);
	vertex_normal(buf, 0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);
	vertex_position_3d(buf, 0.5449, -0.1084, 0.8315);
	vertex_normal(buf, 0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);
	vertex_position_3d(buf, 0.3753, -0.0747, 0.9239);
	vertex_normal(buf, 0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);

	//triangle 160

	vertex_position_3d(buf, 0.1802, -0.0747, -0.9808);
	vertex_normal(buf, 0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);
	vertex_position_3d(buf, 0.3536, -0.1464, -0.9239);
	vertex_normal(buf, 0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);
	vertex_position_3d(buf, 0.3182, -0.2126, -0.9239);
	vertex_normal(buf, 0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);

	//triangle 161

	vertex_position_3d(buf, 0.9239, -0.3827, -0.0);
	vertex_normal(buf, 0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);
	vertex_position_3d(buf, 0.9061, -0.3753, 0.1951);
	vertex_normal(buf, 0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);
	vertex_position_3d(buf, 0.8155, -0.5449, 0.1951);
	vertex_normal(buf, 0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.8125);

	//triangle 162

	vertex_position_3d(buf, 0.1802, -0.0747, 0.9808);
	vertex_normal(buf, 0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);
	vertex_position_3d(buf, 0.1622, -0.1084, 0.9808);
	vertex_normal(buf, 0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);

	//triangle 163

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.3125);
	vertex_position_3d(buf, 0.1802, -0.0747, -0.9808);
	vertex_normal(buf, 0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.3125);
	vertex_position_3d(buf, 0.1622, -0.1084, -0.9808);
	vertex_normal(buf, 0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.3125);

	//triangle 164

	vertex_position_3d(buf, 0.8155, -0.5449, -0.1951);
	vertex_normal(buf, 0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);
	vertex_position_3d(buf, 0.9061, -0.3753, -0.1951);
	vertex_normal(buf, 0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);
	vertex_position_3d(buf, 0.9239, -0.3827, -0.0);
	vertex_normal(buf, 0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);

	//triangle 165

	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);
	vertex_position_3d(buf, 0.1802, -0.0747, 0.9808);
	vertex_normal(buf, 0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);
	vertex_position_3d(buf, 0.1622, -0.1084, 0.9808);
	vertex_normal(buf, 0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);

	//triangle 166

	vertex_position_3d(buf, 0.8536, -0.3536, -0.3827);
	vertex_normal(buf, 0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);
	vertex_position_3d(buf, 0.9061, -0.3753, -0.1951);
	vertex_normal(buf, 0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);
	vertex_position_3d(buf, 0.8155, -0.5449, -0.1951);
	vertex_normal(buf, 0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);

	//triangle 167

	vertex_position_3d(buf, 0.4619, -0.3087, 0.8315);
	vertex_normal(buf, 0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);
	vertex_position_3d(buf, 0.5133, -0.2126, 0.8315);
	vertex_normal(buf, 0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);
	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.75);

	//triangle 168

	vertex_position_3d(buf, 0.6913, -0.4619, -0.5556);
	vertex_normal(buf, 0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);
	vertex_position_3d(buf, 0.7682, -0.3182, -0.5556);
	vertex_normal(buf, 0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);
	vertex_position_3d(buf, 0.8536, -0.3536, -0.3827);
	vertex_normal(buf, 0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);

	//triangle 169

	vertex_position_3d(buf, 0.5879, -0.3928, 0.7071);
	vertex_normal(buf, 0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);
	vertex_position_3d(buf, 0.6533, -0.2706, 0.7071);
	vertex_normal(buf, 0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);
	vertex_position_3d(buf, 0.5133, -0.2126, 0.8315);
	vertex_normal(buf, 0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.25);

	//triangle 170

	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);
	vertex_position_3d(buf, 0.6533, -0.2706, -0.7071);
	vertex_normal(buf, 0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);
	vertex_position_3d(buf, 0.7682, -0.3182, -0.5556);
	vertex_normal(buf, 0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);

	//triangle 171

	vertex_position_3d(buf, 0.6913, -0.4619, 0.5556);
	vertex_normal(buf, 0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);
	vertex_position_3d(buf, 0.7682, -0.3182, 0.5556);
	vertex_normal(buf, 0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);
	vertex_position_3d(buf, 0.6533, -0.2706, 0.7071);
	vertex_normal(buf, 0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);

	//triangle 172

	vertex_position_3d(buf, 0.5133, -0.2126, -0.8315);
	vertex_normal(buf, 0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);
	vertex_position_3d(buf, 0.6533, -0.2706, -0.7071);
	vertex_normal(buf, 0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);
	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);

	//triangle 173

	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);
	vertex_position_3d(buf, 0.8536, -0.3536, 0.3827);
	vertex_normal(buf, 0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);
	vertex_position_3d(buf, 0.7682, -0.3182, 0.5556);
	vertex_normal(buf, 0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.6875);

	//triangle 174

	vertex_position_3d(buf, 0.3536, -0.1464, -0.9239);
	vertex_normal(buf, 0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);
	vertex_position_3d(buf, 0.5133, -0.2126, -0.8315);
	vertex_normal(buf, 0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);
	vertex_position_3d(buf, 0.4619, -0.3087, -0.8315);
	vertex_normal(buf, 0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);

	//triangle 175

	vertex_position_3d(buf, 0.9061, -0.3753, 0.1951);
	vertex_normal(buf, 0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);
	vertex_position_3d(buf, 0.8536, -0.3536, 0.3827);
	vertex_normal(buf, 0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);
	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);

	//triangle 176

	vertex_position_3d(buf, 0.5, -0.5, 0.7071);
	vertex_normal(buf, 0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);
	vertex_position_3d(buf, 0.5879, -0.3928, 0.7071);
	vertex_normal(buf, 0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);
	vertex_position_3d(buf, 0.4619, -0.3087, 0.8315);
	vertex_normal(buf, 0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.1875);

	//triangle 177

	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.6913, -0.4619, -0.5556);
	vertex_normal(buf, 0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);

	//triangle 178

	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.6913, -0.4619, 0.5556);
	vertex_normal(buf, 0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.5879, -0.3928, 0.7071);
	vertex_normal(buf, 0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);

	//triangle 179

	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);
	vertex_position_3d(buf, 0.4619, -0.3087, -0.8315);
	vertex_normal(buf, 0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);
	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.625);

	//triangle 180

	vertex_position_3d(buf, 0.6533, -0.6533, 0.3827);
	vertex_normal(buf, 0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.6913, -0.4619, 0.5556);
	vertex_normal(buf, 0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);

	//triangle 181

	vertex_position_3d(buf, 0.2706, -0.2706, -0.9239);
	vertex_normal(buf, 0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.3182, -0.2126, -0.9239);
	vertex_normal(buf, 0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.4619, -0.3087, -0.8315);
	vertex_normal(buf, 0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);

	//triangle 182

	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);
	vertex_position_3d(buf, 0.8155, -0.5449, 0.1951);
	vertex_normal(buf, 0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);
	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.125);

	//triangle 183

	vertex_position_3d(buf, 0.1379, -0.1379, -0.9808);
	vertex_normal(buf, 0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5);
	vertex_position_3d(buf, 0.1622, -0.1084, -0.9808);
	vertex_normal(buf, 0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5);
	vertex_position_3d(buf, 0.3182, -0.2126, -0.9239);
	vertex_normal(buf, 0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5);

	//triangle 184

	vertex_position_3d(buf, 0.8315, -0.5556, -0.0);
	vertex_normal(buf, 0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.8155, -0.5449, 0.1951);
	vertex_normal(buf, 0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);
	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.5625);

	//triangle 185

	vertex_position_3d(buf, 0.1622, -0.1084, 0.9808);
	vertex_normal(buf, 0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.1379, -0.1379, 0.9808);
	vertex_normal(buf, 0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);

	//triangle 186

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);
	vertex_position_3d(buf, 0.1622, -0.1084, -0.9808);
	vertex_normal(buf, 0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);
	vertex_position_3d(buf, 0.1379, -0.1379, -0.9808);
	vertex_normal(buf, 0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.9375);

	//triangle 187

	vertex_position_3d(buf, 0.6935, -0.6935, -0.1951);
	vertex_normal(buf, 0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6406, 1.0);
	vertex_position_3d(buf, 0.8155, -0.5449, -0.1951);
	vertex_normal(buf, 0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6406, 1.0);
	vertex_position_3d(buf, 0.8315, -0.5556, -0.0);
	vertex_normal(buf, 0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6406, 1.0);

	//triangle 188

	vertex_position_3d(buf, 0.2706, -0.2706, 0.9239);
	vertex_normal(buf, 0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);
	vertex_position_3d(buf, 0.3182, -0.2126, 0.9239);
	vertex_normal(buf, 0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);
	vertex_position_3d(buf, 0.1622, -0.1084, 0.9808);
	vertex_normal(buf, 0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);

	//triangle 189

	vertex_position_3d(buf, 0.7682, -0.5133, -0.3827);
	vertex_normal(buf, 0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6406, 0.0);
	vertex_position_3d(buf, 0.8155, -0.5449, -0.1951);
	vertex_normal(buf, 0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6406, 0.0);
	vertex_position_3d(buf, 0.6935, -0.6935, -0.1951);
	vertex_normal(buf, 0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6406, 0.0);

	//triangle 190

	vertex_position_3d(buf, 0.3928, -0.3928, 0.8315);
	vertex_normal(buf, 0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.4619, -0.3087, 0.8315);
	vertex_normal(buf, 0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);
	vertex_position_3d(buf, 0.3182, -0.2126, 0.9239);
	vertex_normal(buf, 0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6562, 0.0625);

	//triangle 191

	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.6913, -0.4619, -0.5556);
	vertex_normal(buf, 0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.7682, -0.5133, -0.3827);
	vertex_normal(buf, 0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);

	//triangle 192

	vertex_position_3d(buf, 0.7071, -0.7071, -0.0);
	vertex_normal(buf, 0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.1875);
	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.1875);
	vertex_position_3d(buf, 0.5449, -0.8155, 0.1951);
	vertex_normal(buf, 0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.1875);

	//triangle 193

	vertex_position_3d(buf, 0.1379, -0.1379, 0.9808);
	vertex_normal(buf, 0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);
	vertex_position_3d(buf, 0.1084, -0.1622, 0.9808);
	vertex_normal(buf, 0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);

	//triangle 194

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, 0.1379, -0.1379, -0.9808);
	vertex_normal(buf, 0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, 0.1084, -0.1622, -0.9808);
	vertex_normal(buf, 0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);

	//triangle 195

	vertex_position_3d(buf, 0.5449, -0.8155, -0.1951);
	vertex_normal(buf, 0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);
	vertex_position_3d(buf, 0.6935, -0.6935, -0.1951);
	vertex_normal(buf, 0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);
	vertex_position_3d(buf, 0.7071, -0.7071, -0.0);
	vertex_normal(buf, 0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);

	//triangle 196

	vertex_position_3d(buf, 0.2126, -0.3182, 0.9239);
	vertex_normal(buf, 0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);
	vertex_position_3d(buf, 0.2706, -0.2706, 0.9239);
	vertex_normal(buf, 0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);
	vertex_position_3d(buf, 0.1379, -0.1379, 0.9808);
	vertex_normal(buf, 0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);

	//triangle 197

	vertex_position_3d(buf, 0.6533, -0.6533, -0.3827);
	vertex_normal(buf, 0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);
	vertex_position_3d(buf, 0.6935, -0.6935, -0.1951);
	vertex_normal(buf, 0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);
	vertex_position_3d(buf, 0.5449, -0.8155, -0.1951);
	vertex_normal(buf, 0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);

	//triangle 198

	vertex_position_3d(buf, 0.3087, -0.4619, 0.8315);
	vertex_normal(buf, 0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);
	vertex_position_3d(buf, 0.3928, -0.3928, 0.8315);
	vertex_normal(buf, 0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);
	vertex_position_3d(buf, 0.2706, -0.2706, 0.9239);
	vertex_normal(buf, 0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);

	//triangle 199

	vertex_position_3d(buf, 0.4619, -0.6913, -0.5556);
	vertex_normal(buf, 0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.1875);
	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.1875);
	vertex_position_3d(buf, 0.6533, -0.6533, -0.3827);
	vertex_normal(buf, 0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.1875);

	//triangle 200

	vertex_position_3d(buf, 0.3928, -0.5879, 0.7071);
	vertex_normal(buf, 0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);
	vertex_position_3d(buf, 0.5, -0.5, 0.7071);
	vertex_normal(buf, 0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);
	vertex_position_3d(buf, 0.3928, -0.3928, 0.8315);
	vertex_normal(buf, 0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);

	//triangle 201

	vertex_position_3d(buf, 0.3928, -0.5879, -0.7071);
	vertex_normal(buf, 0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, 0.5, -0.5, -0.7071);
	vertex_normal(buf, 0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);

	//triangle 202

	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.5, -0.5, 0.7071);
	vertex_normal(buf, 0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.3928, -0.5879, 0.7071);
	vertex_normal(buf, 0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);

	//triangle 203

	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);
	vertex_position_3d(buf, 0.5, -0.5, -0.7071);
	vertex_normal(buf, 0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);
	vertex_position_3d(buf, 0.3928, -0.5879, -0.7071);
	vertex_normal(buf, 0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.625);

	//triangle 204

	vertex_position_3d(buf, 0.5133, -0.7682, 0.3827);
	vertex_normal(buf, 0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, 0.6533, -0.6533, 0.3827);
	vertex_normal(buf, 0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);

	//triangle 205

	vertex_position_3d(buf, 0.2126, -0.3182, -0.9239);
	vertex_normal(buf, 0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.2706, -0.2706, -0.9239);
	vertex_normal(buf, 0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);

	//triangle 206

	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);
	vertex_position_3d(buf, 0.6533, -0.6533, 0.3827);
	vertex_normal(buf, 0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);
	vertex_position_3d(buf, 0.5133, -0.7682, 0.3827);
	vertex_normal(buf, 0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.125);

	//triangle 207

	vertex_position_3d(buf, 0.1084, -0.1622, -0.9808);
	vertex_normal(buf, 0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5);
	vertex_position_3d(buf, 0.1379, -0.1379, -0.9808);
	vertex_normal(buf, 0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5);
	vertex_position_3d(buf, 0.2706, -0.2706, -0.9239);
	vertex_normal(buf, 0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5);

	//triangle 208

	vertex_position_3d(buf, 0.2706, -0.6533, -0.7071);
	vertex_normal(buf, 0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.3928, -0.5879, -0.7071);
	vertex_normal(buf, 0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);
	vertex_position_3d(buf, 0.4619, -0.6913, -0.5556);
	vertex_normal(buf, 0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5625);

	//triangle 209

	vertex_position_3d(buf, 0.4619, -0.6913, 0.5556);
	vertex_normal(buf, 0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, 0.3928, -0.5879, 0.7071);
	vertex_normal(buf, 0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, 0.2706, -0.6533, 0.7071);
	vertex_normal(buf, 0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);

	//triangle 210

	vertex_position_3d(buf, 0.3087, -0.4619, -0.8315);
	vertex_normal(buf, 0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);
	vertex_position_3d(buf, 0.3928, -0.5879, -0.7071);
	vertex_normal(buf, 0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);
	vertex_position_3d(buf, 0.2706, -0.6533, -0.7071);
	vertex_normal(buf, 0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);

	//triangle 211

	vertex_position_3d(buf, 0.3536, -0.8536, 0.3827);
	vertex_normal(buf, 0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6094, 1.0);
	vertex_position_3d(buf, 0.5133, -0.7682, 0.3827);
	vertex_normal(buf, 0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6094, 1.0);
	vertex_position_3d(buf, 0.4619, -0.6913, 0.5556);
	vertex_normal(buf, 0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6094, 1.0);

	//triangle 212

	vertex_position_3d(buf, 0.1464, -0.3536, -0.9239);
	vertex_normal(buf, 0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);
	vertex_position_3d(buf, 0.2126, -0.3182, -0.9239);
	vertex_normal(buf, 0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);
	vertex_position_3d(buf, 0.3087, -0.4619, -0.8315);
	vertex_normal(buf, 0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);

	//triangle 213

	vertex_position_3d(buf, 0.5449, -0.8155, 0.1951);
	vertex_normal(buf, 0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6094, 0.0);
	vertex_position_3d(buf, 0.5133, -0.7682, 0.3827);
	vertex_normal(buf, 0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6094, 0.0);
	vertex_position_3d(buf, 0.3536, -0.8536, 0.3827);
	vertex_normal(buf, 0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.6094, 0.0);

	//triangle 214

	vertex_position_3d(buf, 0.0747, -0.1802, -0.9808);
	vertex_normal(buf, 0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.1084, -0.1622, -0.9808);
	vertex_normal(buf, 0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);
	vertex_position_3d(buf, 0.2126, -0.3182, -0.9239);
	vertex_normal(buf, 0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.0625);

	//triangle 215

	vertex_position_3d(buf, 0.5556, -0.8315, -0.0);
	vertex_normal(buf, 0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, 0.5449, -0.8155, 0.1951);
	vertex_normal(buf, 0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, 0.3753, -0.9061, 0.1951);
	vertex_normal(buf, 0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);

	//triangle 216

	vertex_position_3d(buf, 0.1084, -0.1622, 0.9808);
	vertex_normal(buf, 0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);
	vertex_position_3d(buf, 0.0747, -0.1802, 0.9808);
	vertex_normal(buf, 0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);

	//triangle 217

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.1084, -0.1622, -0.9808);
	vertex_normal(buf, 0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.0747, -0.1802, -0.9808);
	vertex_normal(buf, 0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);

	//triangle 218

	vertex_position_3d(buf, 0.3753, -0.9061, -0.1951);
	vertex_normal(buf, 0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5);
	vertex_position_3d(buf, 0.5449, -0.8155, -0.1951);
	vertex_normal(buf, 0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5);
	vertex_position_3d(buf, 0.5556, -0.8315, -0.0);
	vertex_normal(buf, 0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.5);

	//triangle 219

	vertex_position_3d(buf, 0.1464, -0.3536, 0.9239);
	vertex_normal(buf, 0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);
	vertex_position_3d(buf, 0.2126, -0.3182, 0.9239);
	vertex_normal(buf, 0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);
	vertex_position_3d(buf, 0.1084, -0.1622, 0.9808);
	vertex_normal(buf, 0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);

	//triangle 220

	vertex_position_3d(buf, 0.5133, -0.7682, -0.3827);
	vertex_normal(buf, 0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);
	vertex_position_3d(buf, 0.5449, -0.8155, -0.1951);
	vertex_normal(buf, 0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);
	vertex_position_3d(buf, 0.3753, -0.9061, -0.1951);
	vertex_normal(buf, 0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);

	//triangle 221

	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);
	vertex_position_3d(buf, 0.3087, -0.4619, 0.8315);
	vertex_normal(buf, 0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);
	vertex_position_3d(buf, 0.2126, -0.3182, 0.9239);
	vertex_normal(buf, 0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.9375);

	//triangle 222

	vertex_position_3d(buf, 0.3182, -0.7682, -0.5556);
	vertex_normal(buf, 0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);
	vertex_position_3d(buf, 0.4619, -0.6913, -0.5556);
	vertex_normal(buf, 0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);
	vertex_position_3d(buf, 0.5133, -0.7682, -0.3827);
	vertex_normal(buf, 0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);

	//triangle 223

	vertex_position_3d(buf, 0.2706, -0.6533, 0.7071);
	vertex_normal(buf, 0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);
	vertex_position_3d(buf, 0.3928, -0.5879, 0.7071);
	vertex_normal(buf, 0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);
	vertex_position_3d(buf, 0.3087, -0.4619, 0.8315);
	vertex_normal(buf, 0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);

	//triangle 224

	vertex_position_3d(buf, 0.0747, -0.1802, 0.9808);
	vertex_normal(buf, 0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);
	vertex_position_3d(buf, 0.0381, -0.1913, 0.9808);
	vertex_normal(buf, 0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.4375);

	//triangle 225

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);
	vertex_position_3d(buf, 0.0747, -0.1802, -0.9808);
	vertex_normal(buf, 0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);
	vertex_position_3d(buf, 0.0381, -0.1913, -0.9808);
	vertex_normal(buf, 0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);

	//triangle 226

	vertex_position_3d(buf, 0.1913, -0.9619, -0.1951);
	vertex_normal(buf, 0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);
	vertex_position_3d(buf, 0.3753, -0.9061, -0.1951);
	vertex_normal(buf, 0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);
	vertex_position_3d(buf, 0.3827, -0.9239, -0.0);
	vertex_normal(buf, 0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);

	//triangle 227

	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);
	vertex_position_3d(buf, 0.1464, -0.3536, 0.9239);
	vertex_normal(buf, 0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);
	vertex_position_3d(buf, 0.0747, -0.1802, 0.9808);
	vertex_normal(buf, 0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.875);

	//triangle 228

	vertex_position_3d(buf, 0.3536, -0.8536, -0.3827);
	vertex_normal(buf, 0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);
	vertex_position_3d(buf, 0.3753, -0.9061, -0.1951);
	vertex_normal(buf, 0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);
	vertex_position_3d(buf, 0.1913, -0.9619, -0.1951);
	vertex_normal(buf, 0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);

	//triangle 229

	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);
	vertex_position_3d(buf, 0.1464, -0.3536, 0.9239);
	vertex_normal(buf, 0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);
	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);

	//triangle 230

	vertex_position_3d(buf, 0.1622, -0.8155, -0.5556);
	vertex_normal(buf, 0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);
	vertex_position_3d(buf, 0.3182, -0.7682, -0.5556);
	vertex_normal(buf, 0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);
	vertex_position_3d(buf, 0.3536, -0.8536, -0.3827);
	vertex_normal(buf, 0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.375);

	//triangle 231

	vertex_position_3d(buf, 0.1379, -0.6935, 0.7071);
	vertex_normal(buf, 0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);
	vertex_position_3d(buf, 0.2706, -0.6533, 0.7071);
	vertex_normal(buf, 0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);
	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);

	//triangle 232

	vertex_position_3d(buf, 0.1379, -0.6935, -0.7071);
	vertex_normal(buf, 0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);
	vertex_position_3d(buf, 0.2706, -0.6533, -0.7071);
	vertex_normal(buf, 0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);
	vertex_position_3d(buf, 0.3182, -0.7682, -0.5556);
	vertex_normal(buf, 0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);

	//triangle 233

	vertex_position_3d(buf, 0.3182, -0.7682, 0.5556);
	vertex_normal(buf, 0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);
	vertex_position_3d(buf, 0.2706, -0.6533, 0.7071);
	vertex_normal(buf, 0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);
	vertex_position_3d(buf, 0.1379, -0.6935, 0.7071);
	vertex_normal(buf, 0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.8125);

	//triangle 234

	vertex_position_3d(buf, 0.2126, -0.5133, -0.8315);
	vertex_normal(buf, 0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, 0.2706, -0.6533, -0.7071);
	vertex_normal(buf, 0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, 0.1379, -0.6935, -0.7071);
	vertex_normal(buf, 0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);

	//triangle 235

	vertex_position_3d(buf, 0.1802, -0.9061, 0.3827);
	vertex_normal(buf, 0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);
	vertex_position_3d(buf, 0.3536, -0.8536, 0.3827);
	vertex_normal(buf, 0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);
	vertex_position_3d(buf, 0.3182, -0.7682, 0.5556);
	vertex_normal(buf, 0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.25);

	//triangle 236

	vertex_position_3d(buf, 0.0747, -0.3753, -0.9239);
	vertex_normal(buf, 0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);
	vertex_position_3d(buf, 0.1464, -0.3536, -0.9239);
	vertex_normal(buf, 0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);
	vertex_position_3d(buf, 0.2126, -0.5133, -0.8315);
	vertex_normal(buf, 0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.3125);

	//triangle 237

	vertex_position_3d(buf, 0.3753, -0.9061, 0.1951);
	vertex_normal(buf, 0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);
	vertex_position_3d(buf, 0.3536, -0.8536, 0.3827);
	vertex_normal(buf, 0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);
	vertex_position_3d(buf, 0.1802, -0.9061, 0.3827);
	vertex_normal(buf, 0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);

	//triangle 238

	vertex_position_3d(buf, 0.0747, -0.1802, -0.9808);
	vertex_normal(buf, 0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);
	vertex_position_3d(buf, 0.1464, -0.3536, -0.9239);
	vertex_normal(buf, 0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);
	vertex_position_3d(buf, 0.0747, -0.3753, -0.9239);
	vertex_normal(buf, 0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.6875);

	//triangle 239

	vertex_position_3d(buf, 0.3827, -0.9239, -0.0);
	vertex_normal(buf, 0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);
	vertex_position_3d(buf, 0.3753, -0.9061, 0.1951);
	vertex_normal(buf, 0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);
	vertex_position_3d(buf, 0.1913, -0.9619, 0.1951);
	vertex_normal(buf, 0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.625, 0.75);

	//triangle 240

	vertex_position_3d(buf, 0.1622, -0.8155, 0.5556);
	vertex_normal(buf, 0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);
	vertex_position_3d(buf, 0.1379, -0.6935, 0.7071);
	vertex_normal(buf, 0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);
	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);

	//triangle 241

	vertex_position_3d(buf, 0.1084, -0.5449, -0.8315);
	vertex_normal(buf, 0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);
	vertex_position_3d(buf, 0.1379, -0.6935, -0.7071);
	vertex_normal(buf, 0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);
	vertex_position_3d(buf, 0.0, -0.7071, -0.7071);
	vertex_normal(buf, 0.0, -0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);

	//triangle 242

	vertex_position_3d(buf, 0.0, -0.9239, 0.3827);
	vertex_normal(buf, 0.0, -0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);
	vertex_position_3d(buf, 0.1802, -0.9061, 0.3827);
	vertex_normal(buf, 0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);
	vertex_position_3d(buf, 0.1622, -0.8155, 0.5556);
	vertex_normal(buf, 0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);

	//triangle 243

	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);
	vertex_position_3d(buf, 0.0747, -0.3753, -0.9239);
	vertex_normal(buf, 0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);
	vertex_position_3d(buf, 0.1084, -0.5449, -0.8315);
	vertex_normal(buf, 0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);

	//triangle 244

	vertex_position_3d(buf, 0.1913, -0.9619, 0.1951);
	vertex_normal(buf, 0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);
	vertex_position_3d(buf, 0.1802, -0.9061, 0.3827);
	vertex_normal(buf, 0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);
	vertex_position_3d(buf, 0.0, -0.9239, 0.3827);
	vertex_normal(buf, 0.0, -0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);

	//triangle 245

	vertex_position_3d(buf, 0.0381, -0.1913, -0.9808);
	vertex_normal(buf, 0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, 0.0747, -0.3753, -0.9239);
	vertex_normal(buf, 0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);

	//triangle 246

	vertex_position_3d(buf, 0.1951, -0.9808, -0.0);
	vertex_normal(buf, 0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);
	vertex_position_3d(buf, 0.1913, -0.9619, 0.1951);
	vertex_normal(buf, 0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);
	vertex_position_3d(buf, -0.0, -0.9808, 0.1951);
	vertex_normal(buf, 0.0, -0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);

	//triangle 247

	vertex_position_3d(buf, 0.0381, -0.1913, 0.9808);
	vertex_normal(buf, 0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);
	vertex_position_3d(buf, 0.0, -0.1951, 0.9808);
	vertex_normal(buf, 0.0, -0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);

	//triangle 248

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);
	vertex_position_3d(buf, 0.0381, -0.1913, -0.9808);
	vertex_normal(buf, 0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);
	vertex_position_3d(buf, -0.0, -0.1951, -0.9808);
	vertex_normal(buf, 0.0, -0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.875);

	//triangle 249

	vertex_position_3d(buf, -0.0, -0.9808, -0.1951);
	vertex_normal(buf, 0.0, -0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);
	vertex_position_3d(buf, 0.1913, -0.9619, -0.1951);
	vertex_normal(buf, 0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);
	vertex_position_3d(buf, 0.1951, -0.9808, -0.0);
	vertex_normal(buf, 0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);

	//triangle 250

	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);
	vertex_position_3d(buf, 0.0381, -0.1913, 0.9808);
	vertex_normal(buf, 0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);
	vertex_position_3d(buf, 0.0, -0.1951, 0.9808);
	vertex_normal(buf, 0.0, -0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);

	//triangle 251

	vertex_position_3d(buf, 0.1802, -0.9061, -0.3827);
	vertex_normal(buf, 0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);
	vertex_position_3d(buf, 0.1913, -0.9619, -0.1951);
	vertex_normal(buf, 0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);
	vertex_position_3d(buf, -0.0, -0.9808, -0.1951);
	vertex_normal(buf, 0.0, -0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.375);

	//triangle 252

	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);
	vertex_position_3d(buf, 0.1084, -0.5449, 0.8315);
	vertex_normal(buf, 0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);
	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);

	//triangle 253

	vertex_position_3d(buf, -0.0, -0.8315, -0.5556);
	vertex_normal(buf, 0.0, -0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);
	vertex_position_3d(buf, 0.1622, -0.8155, -0.5556);
	vertex_normal(buf, 0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);
	vertex_position_3d(buf, 0.1802, -0.9061, -0.3827);
	vertex_normal(buf, 0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);

	//triangle 254

	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);
	vertex_position_3d(buf, 0.1379, -0.6935, 0.7071);
	vertex_normal(buf, 0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);
	vertex_position_3d(buf, 0.1084, -0.5449, 0.8315);
	vertex_normal(buf, 0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.8125);

	//triangle 255

	vertex_position_3d(buf, 0.0, -0.7071, -0.7071);
	vertex_normal(buf, 0.0, -0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, 0.1379, -0.6935, -0.7071);
	vertex_normal(buf, 0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, 0.1622, -0.8155, -0.5556);
	vertex_normal(buf, 0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);

	//triangle 256

	vertex_position_3d(buf, -0.1913, -0.9619, -0.1951);
	vertex_normal(buf, -0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, -0.0, -0.9808, -0.1951);
	vertex_normal(buf, 0.0, -0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, -0.0, -1.0, -0.0);
	vertex_normal(buf, 0.0, -1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);

	//triangle 257

	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);
	vertex_position_3d(buf, -0.0, -0.3827, 0.9239);
	vertex_normal(buf, 0.0, -0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);
	vertex_position_3d(buf, 0.0, -0.1951, 0.9808);
	vertex_normal(buf, 0.0, -0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.3125);

	//triangle 258

	vertex_position_3d(buf, -0.0, -0.9239, -0.3827);
	vertex_normal(buf, 0.0, -0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);
	vertex_position_3d(buf, -0.0, -0.9808, -0.1951);
	vertex_normal(buf, 0.0, -0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);
	vertex_position_3d(buf, -0.1913, -0.9619, -0.1951);
	vertex_normal(buf, -0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);

	//triangle 259

	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);
	vertex_position_3d(buf, -0.0, -0.3827, 0.9239);
	vertex_normal(buf, 0.0, -0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);
	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);

	//triangle 260

	vertex_position_3d(buf, -0.1622, -0.8155, -0.5556);
	vertex_normal(buf, -0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);
	vertex_position_3d(buf, -0.0, -0.8315, -0.5556);
	vertex_normal(buf, 0.0, -0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);
	vertex_position_3d(buf, -0.0, -0.9239, -0.3827);
	vertex_normal(buf, 0.0, -0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.75);

	//triangle 261

	vertex_position_3d(buf, -0.1379, -0.6935, 0.7071);
	vertex_normal(buf, -0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);
	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);
	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);

	//triangle 262

	vertex_position_3d(buf, -0.1379, -0.6935, -0.7071);
	vertex_normal(buf, -0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, 0.0, -0.7071, -0.7071);
	vertex_normal(buf, 0.0, -0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);
	vertex_position_3d(buf, -0.0, -0.8315, -0.5556);
	vertex_normal(buf, 0.0, -0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.25);

	//triangle 263

	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, -0.0, -0.8315, 0.5556);
	vertex_normal(buf, 0.0, -0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);

	//triangle 264

	vertex_position_3d(buf, -0.0, -0.5556, -0.8315);
	vertex_normal(buf, 0.0, -0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, 0.0, -0.7071, -0.7071);
	vertex_normal(buf, 0.0, -0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.1379, -0.6935, -0.7071);
	vertex_normal(buf, -0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);

	//triangle 265

	vertex_position_3d(buf, -0.1802, -0.9061, 0.3827);
	vertex_normal(buf, -0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);
	vertex_position_3d(buf, 0.0, -0.9239, 0.3827);
	vertex_normal(buf, 0.0, -0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);
	vertex_position_3d(buf, -0.0, -0.8315, 0.5556);
	vertex_normal(buf, 0.0, -0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);

	//triangle 266

	vertex_position_3d(buf, -0.0747, -0.3753, -0.9239);
	vertex_normal(buf, -0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);
	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);
	vertex_position_3d(buf, -0.0, -0.5556, -0.8315);
	vertex_normal(buf, 0.0, -0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.6875);

	//triangle 267

	vertex_position_3d(buf, -0.0, -0.9808, 0.1951);
	vertex_normal(buf, 0.0, -0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, 0.0, -0.9239, 0.3827);
	vertex_normal(buf, 0.0, -0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.1802, -0.9061, 0.3827);
	vertex_normal(buf, -0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);

	//triangle 268

	vertex_position_3d(buf, -0.0381, -0.1913, -0.9808);
	vertex_normal(buf, -0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.125);
	vertex_position_3d(buf, -0.0, -0.1951, -0.9808);
	vertex_normal(buf, 0.0, -0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.125);
	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.125);

	//triangle 269

	vertex_position_3d(buf, -0.0, -1.0, -0.0);
	vertex_normal(buf, 0.0, -1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);
	vertex_position_3d(buf, -0.0, -0.9808, 0.1951);
	vertex_normal(buf, 0.0, -0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);
	vertex_position_3d(buf, -0.1913, -0.9619, 0.1951);
	vertex_normal(buf, -0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.1875);

	//triangle 270

	vertex_position_3d(buf, 0.0, -0.1951, 0.9808);
	vertex_normal(buf, 0.0, -0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, -0.0381, -0.1913, 0.9808);
	vertex_normal(buf, -0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);

	//triangle 271

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);
	vertex_position_3d(buf, -0.0, -0.1951, -0.9808);
	vertex_normal(buf, 0.0, -0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);
	vertex_position_3d(buf, -0.0381, -0.1913, -0.9808);
	vertex_normal(buf, -0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.625);

	//triangle 272

	vertex_position_3d(buf, -0.1084, -0.5449, -0.8315);
	vertex_normal(buf, -0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.1379, -0.6935, -0.7071);
	vertex_normal(buf, -0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.2706, -0.6533, -0.7071);
	vertex_normal(buf, -0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);

	//triangle 273

	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, -0.1802, -0.9061, 0.3827);
	vertex_normal(buf, -0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);

	//triangle 274

	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.125);
	vertex_position_3d(buf, -0.0747, -0.3753, -0.9239);
	vertex_normal(buf, -0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.125);
	vertex_position_3d(buf, -0.1084, -0.5449, -0.8315);
	vertex_normal(buf, -0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.125);

	//triangle 275

	vertex_position_3d(buf, -0.1913, -0.9619, 0.1951);
	vertex_normal(buf, -0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.1802, -0.9061, 0.3827);
	vertex_normal(buf, -0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);

	//triangle 276

	vertex_position_3d(buf, -0.0381, -0.1913, -0.9808);
	vertex_normal(buf, -0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5);
	vertex_position_3d(buf, -0.0747, -0.3753, -0.9239);
	vertex_normal(buf, -0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5);
	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5);

	//triangle 277

	vertex_position_3d(buf, -0.1951, -0.9808, -0.0);
	vertex_normal(buf, -0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, -0.1913, -0.9619, 0.1951);
	vertex_normal(buf, -0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);
	vertex_position_3d(buf, -0.3753, -0.9061, 0.1951);
	vertex_normal(buf, -0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5625);

	//triangle 278

	vertex_position_3d(buf, -0.0381, -0.1913, 0.9808);
	vertex_normal(buf, -0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);
	vertex_position_3d(buf, -0.0747, -0.1802, 0.9808);
	vertex_normal(buf, -0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);

	//triangle 279

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);
	vertex_position_3d(buf, -0.0381, -0.1913, -0.9808);
	vertex_normal(buf, -0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);
	vertex_position_3d(buf, -0.0747, -0.1802, -0.9808);
	vertex_normal(buf, -0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.9375);

	//triangle 280

	vertex_position_3d(buf, -0.3753, -0.9061, -0.1951);
	vertex_normal(buf, -0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5781, 1.0);
	vertex_position_3d(buf, -0.1913, -0.9619, -0.1951);
	vertex_normal(buf, -0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5781, 1.0);
	vertex_position_3d(buf, -0.1951, -0.9808, -0.0);
	vertex_normal(buf, -0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5781, 1.0);

	//triangle 281

	vertex_position_3d(buf, -0.1464, -0.3536, 0.9239);
	vertex_normal(buf, -0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);
	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);
	vertex_position_3d(buf, -0.0381, -0.1913, 0.9808);
	vertex_normal(buf, -0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);

	//triangle 282

	vertex_position_3d(buf, -0.1802, -0.9061, -0.3827);
	vertex_normal(buf, -0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5781, 0.0);
	vertex_position_3d(buf, -0.1913, -0.9619, -0.1951);
	vertex_normal(buf, -0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5781, 0.0);
	vertex_position_3d(buf, -0.3753, -0.9061, -0.1951);
	vertex_normal(buf, -0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5781, 0.0);

	//triangle 283

	vertex_position_3d(buf, -0.2126, -0.5133, 0.8315);
	vertex_normal(buf, -0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, -0.1084, -0.5449, 0.8315);
	vertex_normal(buf, -0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);
	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5937, 0.0625);

	//triangle 284

	vertex_position_3d(buf, -0.3182, -0.7682, -0.5556);
	vertex_normal(buf, -0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);
	vertex_position_3d(buf, -0.1622, -0.8155, -0.5556);
	vertex_normal(buf, -0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);
	vertex_position_3d(buf, -0.1802, -0.9061, -0.3827);
	vertex_normal(buf, -0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);

	//triangle 285

	vertex_position_3d(buf, -0.2706, -0.6533, 0.7071);
	vertex_normal(buf, -0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, -0.1379, -0.6935, 0.7071);
	vertex_normal(buf, -0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, -0.1084, -0.5449, 0.8315);
	vertex_normal(buf, -0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);

	//triangle 286

	vertex_position_3d(buf, -0.2706, -0.6533, -0.7071);
	vertex_normal(buf, -0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);
	vertex_position_3d(buf, -0.1379, -0.6935, -0.7071);
	vertex_normal(buf, -0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);
	vertex_position_3d(buf, -0.1622, -0.8155, -0.5556);
	vertex_normal(buf, -0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.4375);

	//triangle 287

	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5);
	vertex_position_3d(buf, -0.1379, -0.6935, 0.7071);
	vertex_normal(buf, -0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5);
	vertex_position_3d(buf, -0.2706, -0.6533, 0.7071);
	vertex_normal(buf, -0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5938, 0.5);

	//triangle 288

	vertex_position_3d(buf, -0.3536, -0.8536, -0.3827);
	vertex_normal(buf, -0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.3753, -0.9061, -0.1951);
	vertex_normal(buf, -0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.5449, -0.8155, -0.1951);
	vertex_normal(buf, -0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);

	//triangle 289

	vertex_position_3d(buf, -0.3087, -0.4619, 0.8315);
	vertex_normal(buf, -0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.2126, -0.5133, 0.8315);
	vertex_normal(buf, -0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.1464, -0.3536, 0.9239);
	vertex_normal(buf, -0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);

	//triangle 290

	vertex_position_3d(buf, -0.4619, -0.6913, -0.5556);
	vertex_normal(buf, -0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);
	vertex_position_3d(buf, -0.3182, -0.7682, -0.5556);
	vertex_normal(buf, -0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);
	vertex_position_3d(buf, -0.3536, -0.8536, -0.3827);
	vertex_normal(buf, -0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);

	//triangle 291

	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);
	vertex_position_3d(buf, -0.2706, -0.6533, 0.7071);
	vertex_normal(buf, -0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);
	vertex_position_3d(buf, -0.2126, -0.5133, 0.8315);
	vertex_normal(buf, -0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);

	//triangle 292

	vertex_position_3d(buf, -0.3928, -0.5879, -0.7071);
	vertex_normal(buf, -0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.2706, -0.6533, -0.7071);
	vertex_normal(buf, -0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.3182, -0.7682, -0.5556);
	vertex_normal(buf, -0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);

	//triangle 293

	vertex_position_3d(buf, -0.3182, -0.7682, 0.5556);
	vertex_normal(buf, -0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.1875);
	vertex_position_3d(buf, -0.2706, -0.6533, 0.7071);
	vertex_normal(buf, -0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.1875);
	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.1875);

	//triangle 294

	vertex_position_3d(buf, -0.2126, -0.5133, -0.8315);
	vertex_normal(buf, -0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);
	vertex_position_3d(buf, -0.2706, -0.6533, -0.7071);
	vertex_normal(buf, -0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);
	vertex_position_3d(buf, -0.3928, -0.5879, -0.7071);
	vertex_normal(buf, -0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);

	//triangle 295

	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.3182, -0.7682, 0.5556);
	vertex_normal(buf, -0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);
	vertex_position_3d(buf, -0.4619, -0.6913, 0.5556);
	vertex_normal(buf, -0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.625);

	//triangle 296

	vertex_position_3d(buf, -0.2126, -0.3182, -0.9239);
	vertex_normal(buf, -0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.2126, -0.5133, -0.8315);
	vertex_normal(buf, -0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);

	//triangle 297

	vertex_position_3d(buf, -0.3753, -0.9061, 0.1951);
	vertex_normal(buf, -0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.5133, -0.7682, 0.3827);
	vertex_normal(buf, -0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);

	//triangle 298

	vertex_position_3d(buf, -0.1084, -0.1622, -0.9808);
	vertex_normal(buf, -0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);
	vertex_position_3d(buf, -0.0747, -0.1802, -0.9808);
	vertex_normal(buf, -0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);
	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);

	//triangle 299

	vertex_position_3d(buf, -0.3827, -0.9239, -0.0);
	vertex_normal(buf, -0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.3753, -0.9061, 0.1951);
	vertex_normal(buf, -0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);
	vertex_position_3d(buf, -0.5449, -0.8155, 0.1951);
	vertex_normal(buf, -0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.125);

	//triangle 300

	vertex_position_3d(buf, -0.0747, -0.1802, 0.9808);
	vertex_normal(buf, -0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5);
	vertex_position_3d(buf, -0.1084, -0.1622, 0.9808);
	vertex_normal(buf, -0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5);

	//triangle 301

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);
	vertex_position_3d(buf, -0.0747, -0.1802, -0.9808);
	vertex_normal(buf, -0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);
	vertex_position_3d(buf, -0.1084, -0.1622, -0.9808);
	vertex_normal(buf, -0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5625);

	//triangle 302

	vertex_position_3d(buf, -0.5449, -0.8155, -0.1951);
	vertex_normal(buf, -0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);
	vertex_position_3d(buf, -0.3753, -0.9061, -0.1951);
	vertex_normal(buf, -0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);
	vertex_position_3d(buf, -0.3827, -0.9239, -0.0);
	vertex_normal(buf, -0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);

	//triangle 303

	vertex_position_3d(buf, -0.2126, -0.3182, 0.9239);
	vertex_normal(buf, -0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);
	vertex_position_3d(buf, -0.1464, -0.3536, 0.9239);
	vertex_normal(buf, -0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);
	vertex_position_3d(buf, -0.0747, -0.1802, 0.9808);
	vertex_normal(buf, -0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);

	//triangle 304

	vertex_position_3d(buf, -0.2706, -0.2706, -0.9239);
	vertex_normal(buf, -0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5469, 1.0);
	vertex_position_3d(buf, -0.2126, -0.3182, -0.9239);
	vertex_normal(buf, -0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5469, 1.0);
	vertex_position_3d(buf, -0.3087, -0.4619, -0.8315);
	vertex_normal(buf, -0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5469, 1.0);

	//triangle 305

	vertex_position_3d(buf, -0.5449, -0.8155, 0.1951);
	vertex_normal(buf, -0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);
	vertex_position_3d(buf, -0.5133, -0.7682, 0.3827);
	vertex_normal(buf, -0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);
	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);

	//triangle 306

	vertex_position_3d(buf, -0.1379, -0.1379, -0.9808);
	vertex_normal(buf, -0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5469, 0.0);
	vertex_position_3d(buf, -0.1084, -0.1622, -0.9808);
	vertex_normal(buf, -0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5469, 0.0);
	vertex_position_3d(buf, -0.2126, -0.3182, -0.9239);
	vertex_normal(buf, -0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5469, 0.0);

	//triangle 307

	vertex_position_3d(buf, -0.5556, -0.8315, -0.0);
	vertex_normal(buf, -0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);
	vertex_position_3d(buf, -0.5449, -0.8155, 0.1951);
	vertex_normal(buf, -0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);
	vertex_position_3d(buf, -0.6935, -0.6935, 0.1951);
	vertex_normal(buf, -0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.0625);

	//triangle 308

	vertex_position_3d(buf, -0.1084, -0.1622, 0.9808);
	vertex_normal(buf, -0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.1379, -0.1379, 0.9808);
	vertex_normal(buf, -0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);

	//triangle 309

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.1084, -0.1622, -0.9808);
	vertex_normal(buf, -0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.1379, -0.1379, -0.9808);
	vertex_normal(buf, -0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);

	//triangle 310

	vertex_position_3d(buf, -0.6935, -0.6935, -0.1951);
	vertex_normal(buf, -0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, -0.5449, -0.8155, -0.1951);
	vertex_normal(buf, -0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, -0.5556, -0.8315, -0.0);
	vertex_normal(buf, -0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);

	//triangle 311

	vertex_position_3d(buf, -0.2706, -0.2706, 0.9239);
	vertex_normal(buf, -0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5);
	vertex_position_3d(buf, -0.2126, -0.3182, 0.9239);
	vertex_normal(buf, -0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5);
	vertex_position_3d(buf, -0.1084, -0.1622, 0.9808);
	vertex_normal(buf, -0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.5);

	//triangle 312

	vertex_position_3d(buf, -0.5133, -0.7682, -0.3827);
	vertex_normal(buf, -0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);
	vertex_position_3d(buf, -0.5449, -0.8155, -0.1951);
	vertex_normal(buf, -0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);
	vertex_position_3d(buf, -0.6935, -0.6935, -0.1951);
	vertex_normal(buf, -0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);

	//triangle 313

	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);
	vertex_position_3d(buf, -0.3087, -0.4619, 0.8315);
	vertex_normal(buf, -0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);
	vertex_position_3d(buf, -0.2126, -0.3182, 0.9239);
	vertex_normal(buf, -0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);

	//triangle 314

	vertex_position_3d(buf, -0.5879, -0.5879, -0.5556);
	vertex_normal(buf, -0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);
	vertex_position_3d(buf, -0.4619, -0.6913, -0.5556);
	vertex_normal(buf, -0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);
	vertex_position_3d(buf, -0.5133, -0.7682, -0.3827);
	vertex_normal(buf, -0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.9375);

	//triangle 315

	vertex_position_3d(buf, -0.5, -0.5, 0.7071);
	vertex_normal(buf, -0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.375);
	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.375);
	vertex_position_3d(buf, -0.3087, -0.4619, 0.8315);
	vertex_normal(buf, -0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.375);

	//triangle 316

	vertex_position_3d(buf, -0.5, -0.5, -0.7071);
	vertex_normal(buf, -0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, -0.3928, -0.5879, -0.7071);
	vertex_normal(buf, -0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);
	vertex_position_3d(buf, -0.4619, -0.6913, -0.5556);
	vertex_normal(buf, -0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.4375);

	//triangle 317

	vertex_position_3d(buf, -0.5879, -0.5879, 0.5556);
	vertex_normal(buf, -0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.4619, -0.6913, 0.5556);
	vertex_normal(buf, -0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);

	//triangle 318

	vertex_position_3d(buf, -0.3087, -0.4619, -0.8315);
	vertex_normal(buf, -0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);
	vertex_position_3d(buf, -0.3928, -0.5879, -0.7071);
	vertex_normal(buf, -0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);
	vertex_position_3d(buf, -0.5, -0.5, -0.7071);
	vertex_normal(buf, -0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);

	//triangle 319

	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);
	vertex_position_3d(buf, -0.5133, -0.7682, 0.3827);
	vertex_normal(buf, -0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);
	vertex_position_3d(buf, -0.4619, -0.6913, 0.5556);
	vertex_normal(buf, -0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);

	//triangle 320

	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);
	vertex_position_3d(buf, -0.2706, -0.2706, 0.9239);
	vertex_normal(buf, -0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);
	vertex_position_3d(buf, -0.3182, -0.2126, 0.9239);
	vertex_normal(buf, -0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.875);

	//triangle 321

	vertex_position_3d(buf, -0.6913, -0.4619, -0.5556);
	vertex_normal(buf, -0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);
	vertex_position_3d(buf, -0.5879, -0.5879, -0.5556);
	vertex_normal(buf, -0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);
	vertex_position_3d(buf, -0.6533, -0.6533, -0.3827);
	vertex_normal(buf, -0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);

	//triangle 322

	vertex_position_3d(buf, -0.5879, -0.3928, 0.7071);
	vertex_normal(buf, -0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);
	vertex_position_3d(buf, -0.5, -0.5, 0.7071);
	vertex_normal(buf, -0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);
	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);

	//triangle 323

	vertex_position_3d(buf, -0.5879, -0.3928, -0.7071);
	vertex_normal(buf, -0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.375);
	vertex_position_3d(buf, -0.5, -0.5, -0.7071);
	vertex_normal(buf, -0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.375);
	vertex_position_3d(buf, -0.5879, -0.5879, -0.5556);
	vertex_normal(buf, -0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.375);

	//triangle 324

	vertex_position_3d(buf, -0.6913, -0.4619, 0.5556);
	vertex_normal(buf, -0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);
	vertex_position_3d(buf, -0.5879, -0.5879, 0.5556);
	vertex_normal(buf, -0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);
	vertex_position_3d(buf, -0.5, -0.5, 0.7071);
	vertex_normal(buf, -0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);

	//triangle 325

	vertex_position_3d(buf, -0.3928, -0.3928, -0.8315);
	vertex_normal(buf, -0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);
	vertex_position_3d(buf, -0.5, -0.5, -0.7071);
	vertex_normal(buf, -0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);
	vertex_position_3d(buf, -0.5879, -0.3928, -0.7071);
	vertex_normal(buf, -0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);

	//triangle 326

	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);
	vertex_position_3d(buf, -0.5879, -0.5879, 0.5556);
	vertex_normal(buf, -0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);
	vertex_position_3d(buf, -0.6913, -0.4619, 0.5556);
	vertex_normal(buf, -0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.8125);

	//triangle 327

	vertex_position_3d(buf, -0.3182, -0.2126, -0.9239);
	vertex_normal(buf, -0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.2706, -0.2706, -0.9239);
	vertex_normal(buf, -0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.3928, -0.3928, -0.8315);
	vertex_normal(buf, -0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);

	//triangle 328

	vertex_position_3d(buf, -0.6935, -0.6935, 0.1951);
	vertex_normal(buf, -0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, -0.7682, -0.5133, 0.3827);
	vertex_normal(buf, -0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);

	//triangle 329

	vertex_position_3d(buf, -0.1622, -0.1084, -0.9808);
	vertex_normal(buf, -0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);
	vertex_position_3d(buf, -0.1379, -0.1379, -0.9808);
	vertex_normal(buf, -0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);
	vertex_position_3d(buf, -0.2706, -0.2706, -0.9239);
	vertex_normal(buf, -0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.3125);

	//triangle 330

	vertex_position_3d(buf, -0.7071, -0.7071, -0.0);
	vertex_normal(buf, -0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);
	vertex_position_3d(buf, -0.6935, -0.6935, 0.1951);
	vertex_normal(buf, -0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);
	vertex_position_3d(buf, -0.8155, -0.5449, 0.1951);
	vertex_normal(buf, -0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);

	//triangle 331

	vertex_position_3d(buf, -0.1379, -0.1379, 0.9808);
	vertex_normal(buf, -0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);
	vertex_position_3d(buf, -0.1622, -0.1084, 0.9808);
	vertex_normal(buf, -0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.6875);

	//triangle 332

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);
	vertex_position_3d(buf, -0.1379, -0.1379, -0.9808);
	vertex_normal(buf, -0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);
	vertex_position_3d(buf, -0.1622, -0.1084, -0.9808);
	vertex_normal(buf, -0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.75);

	//triangle 333

	vertex_position_3d(buf, -0.8155, -0.5449, -0.1951);
	vertex_normal(buf, -0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.1875);
	vertex_position_3d(buf, -0.6935, -0.6935, -0.1951);
	vertex_normal(buf, -0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.1875);
	vertex_position_3d(buf, -0.7071, -0.7071, -0.0);
	vertex_normal(buf, -0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.1875);

	//triangle 334

	vertex_position_3d(buf, -0.2706, -0.2706, 0.9239);
	vertex_normal(buf, -0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, -0.1379, -0.1379, 0.9808);
	vertex_normal(buf, -0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);
	vertex_position_3d(buf, -0.1622, -0.1084, 0.9808);
	vertex_normal(buf, -0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5625, 0.25);

	//triangle 335

	vertex_position_3d(buf, -0.6533, -0.6533, -0.3827);
	vertex_normal(buf, -0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.6935, -0.6935, -0.1951);
	vertex_normal(buf, -0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.8155, -0.5449, -0.1951);
	vertex_normal(buf, -0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);

	//triangle 336

	vertex_position_3d(buf, -0.8155, -0.5449, 0.1951);
	vertex_normal(buf, -0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.375);
	vertex_position_3d(buf, -0.7682, -0.5133, 0.3827);
	vertex_normal(buf, -0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.375);
	vertex_position_3d(buf, -0.8536, -0.3536, 0.3827);
	vertex_normal(buf, -0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.375);

	//triangle 337

	vertex_position_3d(buf, -0.1622, -0.1084, -0.9808);
	vertex_normal(buf, -0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.3182, -0.2126, -0.9239);
	vertex_normal(buf, -0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.3536, -0.1464, -0.9239);
	vertex_normal(buf, -0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);

	//triangle 338

	vertex_position_3d(buf, -0.8315, -0.5556, -0.0);
	vertex_normal(buf, -0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.8155, -0.5449, 0.1951);
	vertex_normal(buf, -0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.9061, -0.3753, 0.1951);
	vertex_normal(buf, -0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);

	//triangle 339

	vertex_position_3d(buf, -0.1622, -0.1084, 0.9808);
	vertex_normal(buf, -0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);
	vertex_position_3d(buf, -0.1802, -0.0747, 0.9808);
	vertex_normal(buf, -0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);

	//triangle 340

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);
	vertex_position_3d(buf, -0.1622, -0.1084, -0.9808);
	vertex_normal(buf, -0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);
	vertex_position_3d(buf, -0.1802, -0.0747, -0.9808);
	vertex_normal(buf, -0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);

	//triangle 341

	vertex_position_3d(buf, -0.9061, -0.3753, -0.1951);
	vertex_normal(buf, -0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);
	vertex_position_3d(buf, -0.8155, -0.5449, -0.1951);
	vertex_normal(buf, -0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);
	vertex_position_3d(buf, -0.8315, -0.5556, -0.0);
	vertex_normal(buf, -0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);

	//triangle 342

	vertex_position_3d(buf, -0.3536, -0.1464, 0.9239);
	vertex_normal(buf, -0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);
	vertex_position_3d(buf, -0.3182, -0.2126, 0.9239);
	vertex_normal(buf, -0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);
	vertex_position_3d(buf, -0.1622, -0.1084, 0.9808);
	vertex_normal(buf, -0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);

	//triangle 343

	vertex_position_3d(buf, -0.7682, -0.5133, -0.3827);
	vertex_normal(buf, -0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);
	vertex_position_3d(buf, -0.8155, -0.5449, -0.1951);
	vertex_normal(buf, -0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);
	vertex_position_3d(buf, -0.9061, -0.3753, -0.1951);
	vertex_normal(buf, -0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);

	//triangle 344

	vertex_position_3d(buf, -0.5133, -0.2126, 0.8315);
	vertex_normal(buf, -0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.375);
	vertex_position_3d(buf, -0.4619, -0.3087, 0.8315);
	vertex_normal(buf, -0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.375);
	vertex_position_3d(buf, -0.3182, -0.2126, 0.9239);
	vertex_normal(buf, -0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.375);

	//triangle 345

	vertex_position_3d(buf, -0.7682, -0.3182, -0.5556);
	vertex_normal(buf, -0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.6913, -0.4619, -0.5556);
	vertex_normal(buf, -0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.7682, -0.5133, -0.3827);
	vertex_normal(buf, -0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);

	//triangle 346

	vertex_position_3d(buf, -0.6533, -0.2706, 0.7071);
	vertex_normal(buf, -0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);
	vertex_position_3d(buf, -0.5879, -0.3928, 0.7071);
	vertex_normal(buf, -0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);
	vertex_position_3d(buf, -0.4619, -0.3087, 0.8315);
	vertex_normal(buf, -0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);

	//triangle 347

	vertex_position_3d(buf, -0.6533, -0.2706, -0.7071);
	vertex_normal(buf, -0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);
	vertex_position_3d(buf, -0.5879, -0.3928, -0.7071);
	vertex_normal(buf, -0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);
	vertex_position_3d(buf, -0.6913, -0.4619, -0.5556);
	vertex_normal(buf, -0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.8125);

	//triangle 348

	vertex_position_3d(buf, -0.7682, -0.3182, 0.5556);
	vertex_normal(buf, -0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.6913, -0.4619, 0.5556);
	vertex_normal(buf, -0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.5879, -0.3928, 0.7071);
	vertex_normal(buf, -0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);

	//triangle 349

	vertex_position_3d(buf, -0.4619, -0.3087, -0.8315);
	vertex_normal(buf, -0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.5879, -0.3928, -0.7071);
	vertex_normal(buf, -0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.6533, -0.2706, -0.7071);
	vertex_normal(buf, -0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);

	//triangle 350

	vertex_position_3d(buf, -0.7682, -0.5133, 0.3827);
	vertex_normal(buf, -0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);
	vertex_position_3d(buf, -0.6913, -0.4619, 0.5556);
	vertex_normal(buf, -0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);
	vertex_position_3d(buf, -0.7682, -0.3182, 0.5556);
	vertex_normal(buf, -0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.3125);

	//triangle 351

	vertex_position_3d(buf, -0.3536, -0.1464, -0.9239);
	vertex_normal(buf, -0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);
	vertex_position_3d(buf, -0.3182, -0.2126, -0.9239);
	vertex_normal(buf, -0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);
	vertex_position_3d(buf, -0.4619, -0.3087, -0.8315);
	vertex_normal(buf, -0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);

	//triangle 352

	vertex_position_3d(buf, -0.8155, -0.1622, -0.5556);
	vertex_normal(buf, -0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);
	vertex_position_3d(buf, -0.7682, -0.3182, -0.5556);
	vertex_normal(buf, -0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);
	vertex_position_3d(buf, -0.8536, -0.3536, -0.3827);
	vertex_normal(buf, -0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.75);

	//triangle 353

	vertex_position_3d(buf, -0.6935, -0.1379, 0.7071);
	vertex_normal(buf, -0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.6533, -0.2706, 0.7071);
	vertex_normal(buf, -0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.5133, -0.2126, 0.8315);
	vertex_normal(buf, -0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);

	//triangle 354

	vertex_position_3d(buf, -0.6935, -0.1379, -0.7071);
	vertex_normal(buf, -0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.1875);
	vertex_position_3d(buf, -0.6533, -0.2706, -0.7071);
	vertex_normal(buf, -0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.1875);
	vertex_position_3d(buf, -0.7682, -0.3182, -0.5556);
	vertex_normal(buf, -0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.1875);

	//triangle 355

	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.7682, -0.3182, 0.5556);
	vertex_normal(buf, -0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);
	vertex_position_3d(buf, -0.6533, -0.2706, 0.7071);
	vertex_normal(buf, -0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.25);

	//triangle 356

	vertex_position_3d(buf, -0.5133, -0.2126, -0.8315);
	vertex_normal(buf, -0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.6533, -0.2706, -0.7071);
	vertex_normal(buf, -0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.6935, -0.1379, -0.7071);
	vertex_normal(buf, -0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);

	//triangle 357

	vertex_position_3d(buf, -0.8536, -0.3536, 0.3827);
	vertex_normal(buf, -0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.7682, -0.3182, 0.5556);
	vertex_normal(buf, -0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);

	//triangle 358

	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.3536, -0.1464, -0.9239);
	vertex_normal(buf, -0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.5133, -0.2126, -0.8315);
	vertex_normal(buf, -0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);

	//triangle 359

	vertex_position_3d(buf, -0.9061, -0.3753, 0.1951);
	vertex_normal(buf, -0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);
	vertex_position_3d(buf, -0.8536, -0.3536, 0.3827);
	vertex_normal(buf, -0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);
	vertex_position_3d(buf, -0.9061, -0.1802, 0.3827);
	vertex_normal(buf, -0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.6875);

	//triangle 360

	vertex_position_3d(buf, -0.1802, -0.0747, -0.9808);
	vertex_normal(buf, -0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.3536, -0.1464, -0.9239);
	vertex_normal(buf, -0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);

	//triangle 361

	vertex_position_3d(buf, -0.9239, -0.3827, -0.0);
	vertex_normal(buf, -0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);
	vertex_position_3d(buf, -0.9061, -0.3753, 0.1951);
	vertex_normal(buf, -0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);
	vertex_position_3d(buf, -0.9619, -0.1913, 0.1951);
	vertex_normal(buf, -0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);

	//triangle 362

	vertex_position_3d(buf, -0.1802, -0.0747, 0.9808);
	vertex_normal(buf, -0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.1875);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.1875);
	vertex_position_3d(buf, -0.1913, -0.0381, 0.9808);
	vertex_normal(buf, -0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.1875);

	//triangle 363

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);
	vertex_position_3d(buf, -0.1802, -0.0747, -0.9808);
	vertex_normal(buf, -0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);
	vertex_position_3d(buf, -0.1913, -0.0381, -0.9808);
	vertex_normal(buf, -0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);

	//triangle 364

	vertex_position_3d(buf, -0.9619, -0.1913, -0.1951);
	vertex_normal(buf, -0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.9061, -0.3753, -0.1951);
	vertex_normal(buf, -0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);
	vertex_position_3d(buf, -0.9239, -0.3827, -0.0);
	vertex_normal(buf, -0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.625);

	//triangle 365

	vertex_position_3d(buf, -0.3753, -0.0747, 0.9239);
	vertex_normal(buf, -0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.3536, -0.1464, 0.9239);
	vertex_normal(buf, -0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.1802, -0.0747, 0.9808);
	vertex_normal(buf, -0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);

	//triangle 366

	vertex_position_3d(buf, -0.8536, -0.3536, -0.3827);
	vertex_normal(buf, -0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.9061, -0.3753, -0.1951);
	vertex_normal(buf, -0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.9619, -0.1913, -0.1951);
	vertex_normal(buf, -0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);

	//triangle 367

	vertex_position_3d(buf, -0.5449, -0.1084, 0.8315);
	vertex_normal(buf, -0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);
	vertex_position_3d(buf, -0.5133, -0.2126, 0.8315);
	vertex_normal(buf, -0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);
	vertex_position_3d(buf, -0.3536, -0.1464, 0.9239);
	vertex_normal(buf, -0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.125);

	//triangle 368

	vertex_position_3d(buf, -0.1913, -0.0381, -0.9808);
	vertex_normal(buf, -0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.3827, -0.0, -0.9239);
	vertex_normal(buf, -0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);

	//triangle 369

	vertex_position_3d(buf, -0.9808, -0.1951, -0.0);
	vertex_normal(buf, -0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5);
	vertex_position_3d(buf, -0.9619, -0.1913, 0.1951);
	vertex_normal(buf, -0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5);
	vertex_position_3d(buf, -0.9808, 0.0, 0.1951);
	vertex_normal(buf, -0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5);

	//triangle 370

	vertex_position_3d(buf, -0.1913, -0.0381, 0.9808);
	vertex_normal(buf, -0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);
	vertex_position_3d(buf, -0.1951, -0.0, 0.9808);
	vertex_normal(buf, -0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5625);

	//triangle 371

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);
	vertex_position_3d(buf, -0.1913, -0.0381, -0.9808);
	vertex_normal(buf, -0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);
	vertex_position_3d(buf, -0.1951, -0.0, -0.9808);
	vertex_normal(buf, -0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);

	//triangle 372

	vertex_position_3d(buf, -0.9808, 0.0, -0.1951);
	vertex_normal(buf, -0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);
	vertex_position_3d(buf, -0.9619, -0.1913, -0.1951);
	vertex_normal(buf, -0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);
	vertex_position_3d(buf, -0.9808, -0.1951, -0.0);
	vertex_normal(buf, -0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);

	//triangle 373

	vertex_position_3d(buf, -0.3827, -0.0, 0.9239);
	vertex_normal(buf, -0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5156, 1.0);
	vertex_position_3d(buf, -0.3753, -0.0747, 0.9239);
	vertex_normal(buf, -0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5156, 1.0);
	vertex_position_3d(buf, -0.1913, -0.0381, 0.9808);
	vertex_normal(buf, -0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5156, 1.0);

	//triangle 374

	vertex_position_3d(buf, -0.9061, -0.1802, -0.3827);
	vertex_normal(buf, -0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.9619, -0.1913, -0.1951);
	vertex_normal(buf, -0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.9808, 0.0, -0.1951);
	vertex_normal(buf, -0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);

	//triangle 375

	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5156, 0.0);
	vertex_position_3d(buf, -0.5449, -0.1084, 0.8315);
	vertex_normal(buf, -0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5156, 0.0);
	vertex_position_3d(buf, -0.3753, -0.0747, 0.9239);
	vertex_normal(buf, -0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5156, 0.0);

	//triangle 376

	vertex_position_3d(buf, -0.8315, -0.0, -0.5556);
	vertex_normal(buf, -0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.8155, -0.1622, -0.5556);
	vertex_normal(buf, -0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);
	vertex_position_3d(buf, -0.9061, -0.1802, -0.3827);
	vertex_normal(buf, -0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.0625);

	//triangle 377

	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);
	vertex_position_3d(buf, -0.6935, -0.1379, 0.7071);
	vertex_normal(buf, -0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);
	vertex_position_3d(buf, -0.5449, -0.1084, 0.8315);
	vertex_normal(buf, -0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);

	//triangle 378

	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.6935, -0.1379, -0.7071);
	vertex_normal(buf, -0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.8155, -0.1622, -0.5556);
	vertex_normal(buf, -0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);

	//triangle 379

	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.6935, -0.1379, 0.7071);
	vertex_normal(buf, -0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);
	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.4375);

	//triangle 380

	vertex_position_3d(buf, -0.5449, -0.1084, -0.8315);
	vertex_normal(buf, -0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5);
	vertex_position_3d(buf, -0.6935, -0.1379, -0.7071);
	vertex_normal(buf, -0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5);
	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.5);

	//triangle 381

	vertex_position_3d(buf, -0.9061, -0.1802, 0.3827);
	vertex_normal(buf, -0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);
	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);
	vertex_position_3d(buf, -0.8315, -0.0, 0.5556);
	vertex_normal(buf, -0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.875);

	//triangle 382

	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);
	vertex_position_3d(buf, -0.5449, -0.1084, -0.8315);
	vertex_normal(buf, -0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);
	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5312, 0.9375);

	//triangle 383

	vertex_position_3d(buf, -0.9619, -0.1913, 0.1951);
	vertex_normal(buf, -0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.9061, -0.1802, 0.3827);
	vertex_normal(buf, -0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.9239, -0.0, 0.3827);
	vertex_normal(buf, -0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);

	//triangle 384

	vertex_position_3d(buf, -0.6935, 0.1379, 0.7071);
	vertex_normal(buf, -0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);
	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);
	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);

	//triangle 385

	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.8315, -0.0, -0.5556);
	vertex_normal(buf, -0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);

	//triangle 386

	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.1875);
	vertex_position_3d(buf, -0.8315, -0.0, 0.5556);
	vertex_normal(buf, -0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.1875);
	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.1875);

	//triangle 387

	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);
	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);
	vertex_position_3d(buf, -0.6935, 0.1379, -0.7071);
	vertex_normal(buf, -0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);

	//triangle 388

	vertex_position_3d(buf, -0.9239, -0.0, 0.3827);
	vertex_normal(buf, -0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.8315, -0.0, 0.5556);
	vertex_normal(buf, -0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);

	//triangle 389

	vertex_position_3d(buf, -0.3753, 0.0747, -0.9239);
	vertex_normal(buf, -0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.3827, -0.0, -0.9239);
	vertex_normal(buf, -0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);

	//triangle 390

	vertex_position_3d(buf, -0.9808, 0.0, 0.1951);
	vertex_normal(buf, -0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.9239, -0.0, 0.3827);
	vertex_normal(buf, -0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.9061, 0.1802, 0.3827);
	vertex_normal(buf, -0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);

	//triangle 391

	vertex_position_3d(buf, -0.1951, -0.0, -0.9808);
	vertex_normal(buf, -0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);
	vertex_position_3d(buf, -0.3827, -0.0, -0.9239);
	vertex_normal(buf, -0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);
	vertex_position_3d(buf, -0.3753, 0.0747, -0.9239);
	vertex_normal(buf, -0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);

	//triangle 392

	vertex_position_3d(buf, -1.0, 0.0, -0.0);
	vertex_normal(buf, -1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.9808, 0.0, 0.1951);
	vertex_normal(buf, -0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);
	vertex_position_3d(buf, -0.9619, 0.1913, 0.1951);
	vertex_normal(buf, -0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.125);

	//triangle 393

	vertex_position_3d(buf, -0.1951, -0.0, 0.9808);
	vertex_normal(buf, -0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5);
	vertex_position_3d(buf, -0.1913, 0.0381, 0.9808);
	vertex_normal(buf, -0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5);

	//triangle 394

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);
	vertex_position_3d(buf, -0.1951, -0.0, -0.9808);
	vertex_normal(buf, -0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);
	vertex_position_3d(buf, -0.1913, 0.0381, -0.9808);
	vertex_normal(buf, -0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5625);

	//triangle 395

	vertex_position_3d(buf, -0.9619, 0.1913, -0.1951);
	vertex_normal(buf, -0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);
	vertex_position_3d(buf, -0.9808, 0.0, -0.1951);
	vertex_normal(buf, -0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);
	vertex_position_3d(buf, -1.0, 0.0, -0.0);
	vertex_normal(buf, -1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);

	//triangle 396

	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.3827, -0.0, 0.9239);
	vertex_normal(buf, -0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.1951, -0.0, 0.9808);
	vertex_normal(buf, -0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);

	//triangle 397

	vertex_position_3d(buf, -0.9239, 0.0, -0.3827);
	vertex_normal(buf, -0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4844, 1.0);
	vertex_position_3d(buf, -0.9808, 0.0, -0.1951);
	vertex_normal(buf, -0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4844, 1.0);
	vertex_position_3d(buf, -0.9619, 0.1913, -0.1951);
	vertex_normal(buf, -0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4844, 1.0);

	//triangle 398

	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.3827, -0.0, 0.9239);
	vertex_normal(buf, -0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);

	//triangle 399

	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4844, 0.0);
	vertex_position_3d(buf, -0.8315, -0.0, -0.5556);
	vertex_normal(buf, -0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4844, 0.0);
	vertex_position_3d(buf, -0.9239, 0.0, -0.3827);
	vertex_normal(buf, -0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4844, 0.0);

	//triangle 400

	vertex_position_3d(buf, -0.9808, 0.1951, -0.0);
	vertex_normal(buf, -0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);
	vertex_position_3d(buf, -0.9619, 0.1913, 0.1951);
	vertex_normal(buf, -0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);
	vertex_position_3d(buf, -0.9061, 0.3753, 0.1951);
	vertex_normal(buf, -0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.0625);

	//triangle 401

	vertex_position_3d(buf, -0.1913, 0.0381, 0.9808);
	vertex_normal(buf, -0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.1802, 0.0747, 0.9808);
	vertex_normal(buf, -0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);

	//triangle 402

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.1913, 0.0381, -0.9808);
	vertex_normal(buf, -0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.1802, 0.0747, -0.9808);
	vertex_normal(buf, -0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);

	//triangle 403

	vertex_position_3d(buf, -0.9061, 0.3753, -0.1951);
	vertex_normal(buf, -0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.9619, 0.1913, -0.1951);
	vertex_normal(buf, -0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.9808, 0.1951, -0.0);
	vertex_normal(buf, -0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);

	//triangle 404

	vertex_position_3d(buf, -0.3536, 0.1464, 0.9239);
	vertex_normal(buf, -0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5);
	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5);
	vertex_position_3d(buf, -0.1913, 0.0381, 0.9808);
	vertex_normal(buf, -0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.5);

	//triangle 405

	vertex_position_3d(buf, -0.9061, 0.1802, -0.3827);
	vertex_normal(buf, -0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.875);
	vertex_position_3d(buf, -0.9619, 0.1913, -0.1951);
	vertex_normal(buf, -0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.875);
	vertex_position_3d(buf, -0.9061, 0.3753, -0.1951);
	vertex_normal(buf, -0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.875);

	//triangle 406

	vertex_position_3d(buf, -0.5133, 0.2126, 0.8315);
	vertex_normal(buf, -0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.5449, 0.1084, 0.8315);
	vertex_normal(buf, -0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);
	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.9375);

	//triangle 407

	vertex_position_3d(buf, -0.7682, 0.3182, -0.5556);
	vertex_normal(buf, -0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.9061, 0.1802, -0.3827);
	vertex_normal(buf, -0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);

	//triangle 408

	vertex_position_3d(buf, -0.6533, 0.2706, 0.7071);
	vertex_normal(buf, -0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.375);
	vertex_position_3d(buf, -0.6935, 0.1379, 0.7071);
	vertex_normal(buf, -0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.375);
	vertex_position_3d(buf, -0.5449, 0.1084, 0.8315);
	vertex_normal(buf, -0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.375);

	//triangle 409

	vertex_position_3d(buf, -0.6533, 0.2706, -0.7071);
	vertex_normal(buf, -0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.6935, 0.1379, -0.7071);
	vertex_normal(buf, -0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);
	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.4375);

	//triangle 410

	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.6935, 0.1379, 0.7071);
	vertex_normal(buf, -0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.6533, 0.2706, 0.7071);
	vertex_normal(buf, -0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);

	//triangle 411

	vertex_position_3d(buf, -0.5449, 0.1084, -0.8315);
	vertex_normal(buf, -0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);
	vertex_position_3d(buf, -0.6935, 0.1379, -0.7071);
	vertex_normal(buf, -0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);
	vertex_position_3d(buf, -0.6533, 0.2706, -0.7071);
	vertex_normal(buf, -0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);

	//triangle 412

	vertex_position_3d(buf, -0.9061, 0.1802, 0.3827);
	vertex_normal(buf, -0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.875);
	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.875);
	vertex_position_3d(buf, -0.7682, 0.3182, 0.5556);
	vertex_normal(buf, -0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.875);

	//triangle 413

	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);
	vertex_position_3d(buf, -0.3753, 0.0747, -0.9239);
	vertex_normal(buf, -0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);
	vertex_position_3d(buf, -0.5449, 0.1084, -0.8315);
	vertex_normal(buf, -0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);

	//triangle 414

	vertex_position_3d(buf, -0.9619, 0.1913, 0.1951);
	vertex_normal(buf, -0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);
	vertex_position_3d(buf, -0.9061, 0.1802, 0.3827);
	vertex_normal(buf, -0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);
	vertex_position_3d(buf, -0.8536, 0.3536, 0.3827);
	vertex_normal(buf, -0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);

	//triangle 415

	vertex_position_3d(buf, -0.1913, 0.0381, -0.9808);
	vertex_normal(buf, -0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);
	vertex_position_3d(buf, -0.3753, 0.0747, -0.9239);
	vertex_normal(buf, -0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);
	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);

	//triangle 416

	vertex_position_3d(buf, -0.5879, 0.3928, -0.7071);
	vertex_normal(buf, -0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.375);
	vertex_position_3d(buf, -0.6533, 0.2706, -0.7071);
	vertex_normal(buf, -0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.375);
	vertex_position_3d(buf, -0.7682, 0.3182, -0.5556);
	vertex_normal(buf, -0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.375);

	//triangle 417

	vertex_position_3d(buf, -0.7682, 0.3182, 0.5556);
	vertex_normal(buf, -0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.6533, 0.2706, 0.7071);
	vertex_normal(buf, -0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);

	//triangle 418

	vertex_position_3d(buf, -0.5133, 0.2126, -0.8315);
	vertex_normal(buf, -0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.6533, 0.2706, -0.7071);
	vertex_normal(buf, -0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.5879, 0.3928, -0.7071);
	vertex_normal(buf, -0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);

	//triangle 419

	vertex_position_3d(buf, -0.8536, 0.3536, 0.3827);
	vertex_normal(buf, -0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);
	vertex_position_3d(buf, -0.7682, 0.3182, 0.5556);
	vertex_normal(buf, -0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);
	vertex_position_3d(buf, -0.6913, 0.4619, 0.5556);
	vertex_normal(buf, -0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.8125);

	//triangle 420

	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.5133, 0.2126, -0.8315);
	vertex_normal(buf, -0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.4619, 0.3087, -0.8315);
	vertex_normal(buf, -0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);

	//triangle 421

	vertex_position_3d(buf, -0.9061, 0.3753, 0.1951);
	vertex_normal(buf, -0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.8536, 0.3536, 0.3827);
	vertex_normal(buf, -0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.7682, 0.5133, 0.3827);
	vertex_normal(buf, -0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);

	//triangle 422

	vertex_position_3d(buf, -0.1802, 0.0747, -0.9808);
	vertex_normal(buf, -0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);
	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);
	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.3125);

	//triangle 423

	vertex_position_3d(buf, -0.9239, 0.3827, -0.0);
	vertex_normal(buf, -0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.6875);
	vertex_position_3d(buf, -0.9061, 0.3753, 0.1951);
	vertex_normal(buf, -0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.6875);
	vertex_position_3d(buf, -0.8155, 0.5449, 0.1951);
	vertex_normal(buf, -0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.6875);

	//triangle 424

	vertex_position_3d(buf, -0.1802, 0.0747, 0.9808);
	vertex_normal(buf, -0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);
	vertex_position_3d(buf, -0.1622, 0.1084, 0.9808);
	vertex_normal(buf, -0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.75);

	//triangle 425

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.1802, 0.0747, -0.9808);
	vertex_normal(buf, -0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.1622, 0.1084, -0.9808);
	vertex_normal(buf, -0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);

	//triangle 426

	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.1875);
	vertex_position_3d(buf, -0.9061, 0.3753, -0.1951);
	vertex_normal(buf, -0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.1875);
	vertex_position_3d(buf, -0.9239, 0.3827, -0.0);
	vertex_normal(buf, -0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.1875);

	//triangle 427

	vertex_position_3d(buf, -0.3182, 0.2126, 0.9239);
	vertex_normal(buf, -0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.3536, 0.1464, 0.9239);
	vertex_normal(buf, -0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);
	vertex_position_3d(buf, -0.1802, 0.0747, 0.9808);
	vertex_normal(buf, -0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.25);

	//triangle 428

	vertex_position_3d(buf, -0.8536, 0.3536, -0.3827);
	vertex_normal(buf, -0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.9061, 0.3753, -0.1951);
	vertex_normal(buf, -0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);

	//triangle 429

	vertex_position_3d(buf, -0.4619, 0.3087, 0.8315);
	vertex_normal(buf, -0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.5133, 0.2126, 0.8315);
	vertex_normal(buf, -0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.3536, 0.1464, 0.9239);
	vertex_normal(buf, -0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);

	//triangle 430

	vertex_position_3d(buf, -0.6913, 0.4619, -0.5556);
	vertex_normal(buf, -0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.7682, 0.3182, -0.5556);
	vertex_normal(buf, -0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);
	vertex_position_3d(buf, -0.8536, 0.3536, -0.3827);
	vertex_normal(buf, -0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.625);

	//triangle 431

	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.6875);
	vertex_position_3d(buf, -0.6533, 0.2706, 0.7071);
	vertex_normal(buf, -0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.6875);
	vertex_position_3d(buf, -0.5133, 0.2126, 0.8315);
	vertex_normal(buf, -0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.5, 0.6875);

	//triangle 432

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);
	vertex_position_3d(buf, -0.1622, 0.1084, -0.9808);
	vertex_normal(buf, -0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);
	vertex_position_3d(buf, -0.1379, 0.1379, -0.9808);
	vertex_normal(buf, -0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);

	//triangle 433

	vertex_position_3d(buf, -0.6935, 0.6935, -0.1951);
	vertex_normal(buf, -0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);
	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);
	vertex_position_3d(buf, -0.8315, 0.5556, -0.0);
	vertex_normal(buf, -0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);

	//triangle 434

	vertex_position_3d(buf, -0.2706, 0.2706, 0.9239);
	vertex_normal(buf, -0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.375);
	vertex_position_3d(buf, -0.3182, 0.2126, 0.9239);
	vertex_normal(buf, -0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.375);
	vertex_position_3d(buf, -0.1622, 0.1084, 0.9808);
	vertex_normal(buf, -0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.375);

	//triangle 435

	vertex_position_3d(buf, -0.6533, 0.6533, -0.3827);
	vertex_normal(buf, -0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);
	vertex_position_3d(buf, -0.7682, 0.5133, -0.3827);
	vertex_normal(buf, -0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);
	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);

	//triangle 436

	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.4619, 0.3087, 0.8315);
	vertex_normal(buf, -0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.3182, 0.2126, 0.9239);
	vertex_normal(buf, -0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);

	//triangle 437

	vertex_position_3d(buf, -0.5879, 0.5879, -0.5556);
	vertex_normal(buf, -0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.8125);
	vertex_position_3d(buf, -0.6913, 0.4619, -0.5556);
	vertex_normal(buf, -0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.8125);
	vertex_position_3d(buf, -0.7682, 0.5133, -0.3827);
	vertex_normal(buf, -0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.8125);

	//triangle 438

	vertex_position_3d(buf, -0.5, 0.5, 0.7071);
	vertex_normal(buf, -0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, -0.4619, 0.3087, 0.8315);
	vertex_normal(buf, -0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);

	//triangle 439

	vertex_position_3d(buf, -0.5, 0.5, -0.7071);
	vertex_normal(buf, -0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.5879, 0.3928, -0.7071);
	vertex_normal(buf, -0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.6913, 0.4619, -0.5556);
	vertex_normal(buf, -0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);

	//triangle 440

	vertex_position_3d(buf, -0.5879, 0.5879, 0.5556);
	vertex_normal(buf, -0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);
	vertex_position_3d(buf, -0.6913, 0.4619, 0.5556);
	vertex_normal(buf, -0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);
	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.3125);

	//triangle 441

	vertex_position_3d(buf, -0.4619, 0.3087, -0.8315);
	vertex_normal(buf, -0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);
	vertex_position_3d(buf, -0.5879, 0.3928, -0.7071);
	vertex_normal(buf, -0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);
	vertex_position_3d(buf, -0.5, 0.5, -0.7071);
	vertex_normal(buf, -0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);

	//triangle 442

	vertex_position_3d(buf, -0.7682, 0.5133, 0.3827);
	vertex_normal(buf, -0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.6875);
	vertex_position_3d(buf, -0.6913, 0.4619, 0.5556);
	vertex_normal(buf, -0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.6875);
	vertex_position_3d(buf, -0.5879, 0.5879, 0.5556);
	vertex_normal(buf, -0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.6875);

	//triangle 443

	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.4619, 0.3087, -0.8315);
	vertex_normal(buf, -0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);
	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.75);

	//triangle 444

	vertex_position_3d(buf, -0.8155, 0.5449, 0.1951);
	vertex_normal(buf, -0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.1875);
	vertex_position_3d(buf, -0.7682, 0.5133, 0.3827);
	vertex_normal(buf, -0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.1875);
	vertex_position_3d(buf, -0.6533, 0.6533, 0.3827);
	vertex_normal(buf, -0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.1875);

	//triangle 445

	vertex_position_3d(buf, -0.1379, 0.1379, -0.9808);
	vertex_normal(buf, -0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.1622, 0.1084, -0.9808);
	vertex_normal(buf, -0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);
	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.25);

	//triangle 446

	vertex_position_3d(buf, -0.8315, 0.5556, -0.0);
	vertex_normal(buf, -0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, -0.8155, 0.5449, 0.1951);
	vertex_normal(buf, -0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, -0.6935, 0.6935, 0.1951);
	vertex_normal(buf, -0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);

	//triangle 447

	vertex_position_3d(buf, -0.1622, 0.1084, 0.9808);
	vertex_normal(buf, -0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, -0.1379, 0.1379, 0.9808);
	vertex_normal(buf, -0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);

	//triangle 448

	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.5, 0.5, -0.7071);
	vertex_normal(buf, -0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.3928, 0.5879, -0.7071);
	vertex_normal(buf, -0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);

	//triangle 449

	vertex_position_3d(buf, -0.6533, 0.6533, 0.3827);
	vertex_normal(buf, -0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.6875);
	vertex_position_3d(buf, -0.5879, 0.5879, 0.5556);
	vertex_normal(buf, -0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.6875);
	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.6875);

	//triangle 450

	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);
	vertex_position_3d(buf, -0.2706, 0.2706, -0.9239);
	vertex_normal(buf, -0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);
	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);

	//triangle 451

	vertex_position_3d(buf, -0.6935, 0.6935, 0.1951);
	vertex_normal(buf, -0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.1875);
	vertex_position_3d(buf, -0.6533, 0.6533, 0.3827);
	vertex_normal(buf, -0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.1875);
	vertex_position_3d(buf, -0.5133, 0.7682, 0.3827);
	vertex_normal(buf, -0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.1875);

	//triangle 452

	vertex_position_3d(buf, -0.1379, 0.1379, -0.9808);
	vertex_normal(buf, -0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);
	vertex_position_3d(buf, -0.2706, 0.2706, -0.9239);
	vertex_normal(buf, -0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);
	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);

	//triangle 453

	vertex_position_3d(buf, -0.7071, 0.7071, -0.0);
	vertex_normal(buf, -0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);
	vertex_position_3d(buf, -0.6935, 0.6935, 0.1951);
	vertex_normal(buf, -0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);
	vertex_position_3d(buf, -0.5449, 0.8155, 0.1951);
	vertex_normal(buf, -0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);

	//triangle 454

	vertex_position_3d(buf, -0.1379, 0.1379, 0.9808);
	vertex_normal(buf, -0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);
	vertex_position_3d(buf, -0.1084, 0.1622, 0.9808);
	vertex_normal(buf, -0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.625);

	//triangle 455

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, -0.1379, 0.1379, -0.9808);
	vertex_normal(buf, -0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, -0.1084, 0.1622, -0.9808);
	vertex_normal(buf, -0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);

	//triangle 456

	vertex_position_3d(buf, -0.5449, 0.8155, -0.1951);
	vertex_normal(buf, -0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.6935, 0.6935, -0.1951);
	vertex_normal(buf, -0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.7071, 0.7071, -0.0);
	vertex_normal(buf, -0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);

	//triangle 457

	vertex_position_3d(buf, -0.2706, 0.2706, 0.9239);
	vertex_normal(buf, -0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.1379, 0.1379, 0.9808);
	vertex_normal(buf, -0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.1084, 0.1622, 0.9808);
	vertex_normal(buf, -0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);

	//triangle 458

	vertex_position_3d(buf, -0.5133, 0.7682, -0.3827);
	vertex_normal(buf, -0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);
	vertex_position_3d(buf, -0.6533, 0.6533, -0.3827);
	vertex_normal(buf, -0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);
	vertex_position_3d(buf, -0.6935, 0.6935, -0.1951);
	vertex_normal(buf, -0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.125);

	//triangle 459

	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.5);
	vertex_position_3d(buf, -0.2706, 0.2706, 0.9239);
	vertex_normal(buf, -0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.5);
	vertex_position_3d(buf, -0.2126, 0.3182, 0.9239);
	vertex_normal(buf, -0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.5);

	//triangle 460

	vertex_position_3d(buf, -0.4619, 0.6913, -0.5556);
	vertex_normal(buf, -0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);
	vertex_position_3d(buf, -0.5879, 0.5879, -0.5556);
	vertex_normal(buf, -0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);
	vertex_position_3d(buf, -0.6533, 0.6533, -0.3827);
	vertex_normal(buf, -0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.5625);

	//triangle 461

	vertex_position_3d(buf, -0.3928, 0.5879, 0.7071);
	vertex_normal(buf, -0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);
	vertex_position_3d(buf, -0.5, 0.5, 0.7071);
	vertex_normal(buf, -0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);
	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);

	//triangle 462

	vertex_position_3d(buf, -0.3928, 0.5879, -0.7071);
	vertex_normal(buf, -0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.5, 0.5, -0.7071);
	vertex_normal(buf, -0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.5879, 0.5879, -0.5556);
	vertex_normal(buf, -0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);

	//triangle 463

	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4531, 1.0);
	vertex_position_3d(buf, -0.5879, 0.5879, 0.5556);
	vertex_normal(buf, -0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4531, 1.0);
	vertex_position_3d(buf, -0.5, 0.5, 0.7071);
	vertex_normal(buf, -0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4531, 1.0);

	//triangle 464

	vertex_position_3d(buf, -0.1464, 0.3536, 0.9239);
	vertex_normal(buf, -0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);
	vertex_position_3d(buf, -0.2126, 0.3182, 0.9239);
	vertex_normal(buf, -0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);
	vertex_position_3d(buf, -0.1084, 0.1622, 0.9808);
	vertex_normal(buf, -0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);

	//triangle 465

	vertex_position_3d(buf, -0.3536, 0.8536, -0.3827);
	vertex_normal(buf, -0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4531, 0.0);
	vertex_position_3d(buf, -0.5133, 0.7682, -0.3827);
	vertex_normal(buf, -0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4531, 0.0);
	vertex_position_3d(buf, -0.5449, 0.8155, -0.1951);
	vertex_normal(buf, -0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4531, 0.0);

	//triangle 466

	vertex_position_3d(buf, -0.2126, 0.5133, 0.8315);
	vertex_normal(buf, -0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.3087, 0.4619, 0.8315);
	vertex_normal(buf, -0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);
	vertex_position_3d(buf, -0.2126, 0.3182, 0.9239);
	vertex_normal(buf, -0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.0625);

	//triangle 467

	vertex_position_3d(buf, -0.3182, 0.7682, -0.5556);
	vertex_normal(buf, -0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.4619, 0.6913, -0.5556);
	vertex_normal(buf, -0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.5133, 0.7682, -0.3827);
	vertex_normal(buf, -0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);

	//triangle 468

	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.3928, 0.5879, 0.7071);
	vertex_normal(buf, -0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.3087, 0.4619, 0.8315);
	vertex_normal(buf, -0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);

	//triangle 469

	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.3928, 0.5879, -0.7071);
	vertex_normal(buf, -0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.4619, 0.6913, -0.5556);
	vertex_normal(buf, -0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);

	//triangle 470

	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.5);
	vertex_position_3d(buf, -0.3928, 0.5879, 0.7071);
	vertex_normal(buf, -0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.5);
	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.5);

	//triangle 471

	vertex_position_3d(buf, -0.3087, 0.4619, -0.8315);
	vertex_normal(buf, -0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);
	vertex_position_3d(buf, -0.3928, 0.5879, -0.7071);
	vertex_normal(buf, -0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);
	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);

	//triangle 472

	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);
	vertex_position_3d(buf, -0.5133, 0.7682, 0.3827);
	vertex_normal(buf, -0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);
	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);

	//triangle 473

	vertex_position_3d(buf, -0.1464, 0.3536, -0.9239);
	vertex_normal(buf, -0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);
	vertex_position_3d(buf, -0.3087, 0.4619, -0.8315);
	vertex_normal(buf, -0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.9375);

	//triangle 474

	vertex_position_3d(buf, -0.5449, 0.8155, 0.1951);
	vertex_normal(buf, -0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.375);
	vertex_position_3d(buf, -0.5133, 0.7682, 0.3827);
	vertex_normal(buf, -0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.375);
	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.375);

	//triangle 475

	vertex_position_3d(buf, -0.0747, 0.1802, -0.9808);
	vertex_normal(buf, -0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.1084, 0.1622, -0.9808);
	vertex_normal(buf, -0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);
	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4688, 0.4375);

	//triangle 476

	vertex_position_3d(buf, -0.5556, 0.8315, -0.0);
	vertex_normal(buf, -0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.5449, 0.8155, 0.1951);
	vertex_normal(buf, -0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.3753, 0.9061, 0.1951);
	vertex_normal(buf, -0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);

	//triangle 477

	vertex_position_3d(buf, -0.1084, 0.1622, 0.9808);
	vertex_normal(buf, -0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);
	vertex_position_3d(buf, -0.0747, 0.1802, 0.9808);
	vertex_normal(buf, -0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);

	//triangle 478

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.8125);
	vertex_position_3d(buf, -0.1084, 0.1622, -0.9808);
	vertex_normal(buf, -0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.8125);
	vertex_position_3d(buf, -0.0747, 0.1802, -0.9808);
	vertex_normal(buf, -0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.8125);

	//triangle 479

	vertex_position_3d(buf, -0.3753, 0.9061, -0.1951);
	vertex_normal(buf, -0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);
	vertex_position_3d(buf, -0.5449, 0.8155, -0.1951);
	vertex_normal(buf, -0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);
	vertex_position_3d(buf, -0.5556, 0.8315, -0.0);
	vertex_normal(buf, -0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4687, 0.875);

	//triangle 480

	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.3182, 0.7682, 0.5556);
	vertex_normal(buf, -0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);

	//triangle 481

	vertex_position_3d(buf, -0.0747, 0.3753, -0.9239);
	vertex_normal(buf, -0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.125);
	vertex_position_3d(buf, -0.1464, 0.3536, -0.9239);
	vertex_normal(buf, -0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.125);
	vertex_position_3d(buf, -0.2126, 0.5133, -0.8315);
	vertex_normal(buf, -0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.125);

	//triangle 482

	vertex_position_3d(buf, -0.3753, 0.9061, 0.1951);
	vertex_normal(buf, -0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);
	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);
	vertex_position_3d(buf, -0.1802, 0.9061, 0.3827);
	vertex_normal(buf, -0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);

	//triangle 483

	vertex_position_3d(buf, -0.0381, 0.1913, -0.9808);
	vertex_normal(buf, -0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5);
	vertex_position_3d(buf, -0.0747, 0.1802, -0.9808);
	vertex_normal(buf, -0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5);
	vertex_position_3d(buf, -0.1464, 0.3536, -0.9239);
	vertex_normal(buf, -0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5);

	//triangle 484

	vertex_position_3d(buf, -0.3827, 0.9239, -0.0);
	vertex_normal(buf, -0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);
	vertex_position_3d(buf, -0.3753, 0.9061, 0.1951);
	vertex_normal(buf, -0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);
	vertex_position_3d(buf, -0.1913, 0.9619, 0.1951);
	vertex_normal(buf, -0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);

	//triangle 485

	vertex_position_3d(buf, -0.0747, 0.1802, 0.9808);
	vertex_normal(buf, -0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);
	vertex_position_3d(buf, -0.0381, 0.1913, 0.9808);
	vertex_normal(buf, -0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);

	//triangle 486

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);
	vertex_position_3d(buf, -0.0747, 0.1802, -0.9808);
	vertex_normal(buf, -0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);
	vertex_position_3d(buf, -0.0381, 0.1913, -0.9808);
	vertex_normal(buf, -0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);

	//triangle 487

	vertex_position_3d(buf, -0.1913, 0.9619, -0.1951);
	vertex_normal(buf, -0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4219, 1.0);
	vertex_position_3d(buf, -0.3753, 0.9061, -0.1951);
	vertex_normal(buf, -0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4219, 1.0);
	vertex_position_3d(buf, -0.3827, 0.9239, -0.0);
	vertex_normal(buf, -0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4219, 1.0);

	//triangle 488

	vertex_position_3d(buf, -0.0747, 0.3753, 0.9239);
	vertex_normal(buf, -0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, -0.1464, 0.3536, 0.9239);
	vertex_normal(buf, -0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, -0.0747, 0.1802, 0.9808);
	vertex_normal(buf, -0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);

	//triangle 489

	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4219, 0.0);
	vertex_position_3d(buf, -0.3536, 0.8536, -0.3827);
	vertex_normal(buf, -0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4219, 0.0);
	vertex_position_3d(buf, -0.3753, 0.9061, -0.1951);
	vertex_normal(buf, -0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4219, 0.0);

	//triangle 490

	vertex_position_3d(buf, -0.1084, 0.5449, 0.8315);
	vertex_normal(buf, -0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.2126, 0.5133, 0.8315);
	vertex_normal(buf, -0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);
	vertex_position_3d(buf, -0.1464, 0.3536, 0.9239);
	vertex_normal(buf, -0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.0625);

	//triangle 491

	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);
	vertex_position_3d(buf, -0.3182, 0.7682, -0.5556);
	vertex_normal(buf, -0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);
	vertex_position_3d(buf, -0.3536, 0.8536, -0.3827);
	vertex_normal(buf, -0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);

	//triangle 492

	vertex_position_3d(buf, -0.1379, 0.6935, 0.7071);
	vertex_normal(buf, -0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, -0.2126, 0.5133, 0.8315);
	vertex_normal(buf, -0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);

	//triangle 493

	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.3182, 0.7682, -0.5556);
	vertex_normal(buf, -0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);

	//triangle 494

	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5);
	vertex_position_3d(buf, -0.3182, 0.7682, 0.5556);
	vertex_normal(buf, -0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5);
	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5);

	//triangle 495

	vertex_position_3d(buf, -0.2126, 0.5133, -0.8315);
	vertex_normal(buf, -0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);
	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);
	vertex_position_3d(buf, -0.1379, 0.6935, -0.7071);
	vertex_normal(buf, -0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);

	//triangle 496

	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);
	vertex_position_3d(buf, -0.1913, 0.9619, -0.1951);
	vertex_normal(buf, -0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);
	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.9375);

	//triangle 497

	vertex_position_3d(buf, -0.1084, 0.5449, 0.8315);
	vertex_normal(buf, -0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, -0.0747, 0.3753, 0.9239);
	vertex_normal(buf, -0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, 0.0, 0.3827, 0.9239);
	vertex_normal(buf, 0.0, 0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);

	//triangle 498

	vertex_position_3d(buf, 0.0, 0.8315, -0.5556);
	vertex_normal(buf, 0.0, 0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.375);
	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.375);
	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.375);

	//triangle 499

	vertex_position_3d(buf, -0.1379, 0.6935, 0.7071);
	vertex_normal(buf, -0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, -0.1084, 0.5449, 0.8315);
	vertex_normal(buf, -0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);
	vertex_position_3d(buf, 0.0, 0.5556, 0.8315);
	vertex_normal(buf, 0.0, 0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.4375);

	//triangle 500

	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, -0.1379, 0.6935, -0.7071);
	vertex_normal(buf, -0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);

	//triangle 501

	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);
	vertex_position_3d(buf, -0.1379, 0.6935, 0.7071);
	vertex_normal(buf, -0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);
	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);

	//triangle 502

	vertex_position_3d(buf, 0.0, 0.5556, -0.8315);
	vertex_normal(buf, 0.0, 0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);
	vertex_position_3d(buf, -0.1084, 0.5449, -0.8315);
	vertex_normal(buf, -0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);
	vertex_position_3d(buf, -0.1379, 0.6935, -0.7071);
	vertex_normal(buf, -0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);

	//triangle 503

	vertex_position_3d(buf, -0.1802, 0.9061, 0.3827);
	vertex_normal(buf, -0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);
	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);
	vertex_position_3d(buf, 0.0, 0.8315, 0.5556);
	vertex_normal(buf, 0.0, 0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.875);

	//triangle 504

	vertex_position_3d(buf, 0.0, 0.3827, -0.9239);
	vertex_normal(buf, 0.0, 0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);
	vertex_position_3d(buf, -0.0747, 0.3753, -0.9239);
	vertex_normal(buf, -0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);
	vertex_position_3d(buf, -0.1084, 0.5449, -0.8315);
	vertex_normal(buf, -0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);

	//triangle 505

	vertex_position_3d(buf, -0.1913, 0.9619, 0.1951);
	vertex_normal(buf, -0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);
	vertex_position_3d(buf, -0.1802, 0.9061, 0.3827);
	vertex_normal(buf, -0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);
	vertex_position_3d(buf, 0.0, 0.9239, 0.3827);
	vertex_normal(buf, 0.0, 0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);

	//triangle 506

	vertex_position_3d(buf, 0.0, 0.1951, -0.9808);
	vertex_normal(buf, 0.0, 0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.375);
	vertex_position_3d(buf, -0.0381, 0.1913, -0.9808);
	vertex_normal(buf, -0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.375);
	vertex_position_3d(buf, -0.0747, 0.3753, -0.9239);
	vertex_normal(buf, -0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.375);

	//triangle 507

	vertex_position_3d(buf, -0.1951, 0.9808, -0.0);
	vertex_normal(buf, -0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);
	vertex_position_3d(buf, -0.1913, 0.9619, 0.1951);
	vertex_normal(buf, -0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);
	vertex_position_3d(buf, 0.0, 0.9808, 0.1951);
	vertex_normal(buf, 0.0, 0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);

	//triangle 508

	vertex_position_3d(buf, -0.0381, 0.1913, 0.9808);
	vertex_normal(buf, -0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);
	vertex_position_3d(buf, -0.0, -0.0, 1.0);
	vertex_normal(buf, 0.0, 0.0, 1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);
	vertex_position_3d(buf, 0.0, 0.1951, 0.9808);
	vertex_normal(buf, 0.0, 0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);

	//triangle 509

	vertex_position_3d(buf, 0.0, -0.0, -1.0);
	vertex_normal(buf, 0.0, 0.0, -1.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);
	vertex_position_3d(buf, -0.0381, 0.1913, -0.9808);
	vertex_normal(buf, -0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);
	vertex_position_3d(buf, 0.0, 0.1951, -0.9808);
	vertex_normal(buf, 0.0, 0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.8125);

	//triangle 510

	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, -0.1913, 0.9619, -0.1951);
	vertex_normal(buf, -0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, -0.1951, 0.9808, -0.0);
	vertex_normal(buf, -0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);

	//triangle 511

	vertex_position_3d(buf, -0.0747, 0.3753, 0.9239);
	vertex_normal(buf, -0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, -0.0381, 0.1913, 0.9808);
	vertex_normal(buf, -0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, 0.0, 0.1951, 0.9808);
	vertex_normal(buf, 0.0, 0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);

	//triangle 512

	vertex_position_3d(buf, 0.0, 0.3827, 0.9239);
	vertex_normal(buf, 0.0, 0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);
	vertex_position_3d(buf, 0.0381, 0.1913, 0.9808);
	vertex_normal(buf, 0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);
	vertex_position_3d(buf, 0.0747, 0.3753, 0.9239);
	vertex_normal(buf, 0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.3125);

	//triangle 513

	vertex_position_3d(buf, 0.1802, 0.9061, -0.3827);
	vertex_normal(buf, 0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);
	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);
	vertex_position_3d(buf, 0.1913, 0.9619, -0.1951);
	vertex_normal(buf, 0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);

	//triangle 514

	vertex_position_3d(buf, 0.0, 0.5556, 0.8315);
	vertex_normal(buf, 0.0, 0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);
	vertex_position_3d(buf, 0.0747, 0.3753, 0.9239);
	vertex_normal(buf, 0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);
	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);

	//triangle 515

	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);
	vertex_position_3d(buf, 0.0, 0.9239, -0.3827);
	vertex_normal(buf, 0.0, 0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);
	vertex_position_3d(buf, 0.1802, 0.9061, -0.3827);
	vertex_normal(buf, 0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.75);

	//triangle 516

	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);
	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);
	vertex_position_3d(buf, 0.1379, 0.6935, 0.7071);
	vertex_normal(buf, 0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);

	//triangle 517

	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);
	vertex_position_3d(buf, 0.1379, 0.6935, -0.7071);
	vertex_normal(buf, 0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.25);

	//triangle 518

	vertex_position_3d(buf, 0.1622, 0.8155, 0.5556);
	vertex_normal(buf, 0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, 0.1379, 0.6935, 0.7071);
	vertex_normal(buf, 0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);

	//triangle 519

	vertex_position_3d(buf, 0.1084, 0.5449, -0.8315);
	vertex_normal(buf, 0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.1379, 0.6935, -0.7071);
	vertex_normal(buf, 0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);

	//triangle 520

	vertex_position_3d(buf, 0.1802, 0.9061, 0.3827);
	vertex_normal(buf, 0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, 0.0, 0.8315, 0.5556);
	vertex_normal(buf, 0.0, 0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, 0.1622, 0.8155, 0.5556);
	vertex_normal(buf, 0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);

	//triangle 521

	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);
	vertex_position_3d(buf, 0.0, 0.5556, -0.8315);
	vertex_normal(buf, 0.0, 0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);
	vertex_position_3d(buf, 0.1084, 0.5449, -0.8315);
	vertex_normal(buf, 0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.6875);

	//triangle 522

	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.125);
	vertex_position_3d(buf, 0.0, 0.9239, 0.3827);
	vertex_normal(buf, 0.0, 0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.125);
	vertex_position_3d(buf, 0.1802, 0.9061, 0.3827);
	vertex_normal(buf, 0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.125);

	//triangle 523

	vertex_position_3d(buf, 0.0381, 0.1913, -0.9808);
	vertex_normal(buf, 0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);
	vertex_position_3d(buf, 0.0, 0.3827, -0.9239);
	vertex_normal(buf, 0.0, 0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);
	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.1875);

	//triangle 524

	vertex_position_3d(buf, 0.0, 1.0, -0.0);
	vertex_normal(buf, 0.0, 1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);
	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);
	vertex_position_3d(buf, 0.1951, 0.9808, -0.0);
	vertex_normal(buf, 0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);

	//triangle 525

	vertex_position_3d(buf, 0.1913, 0.9619, -0.1951);
	vertex_normal(buf, 0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);
	vertex_position_3d(buf, 0.0, 1.0, -0.0);
	vertex_normal(buf, 0.0, 1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);
	vertex_position_3d(buf, 0.1951, 0.9808, -0.0);
	vertex_normal(buf, 0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.5625);

	//triangle 526

	vertex_position_3d(buf, 0.3753, 0.9061, -0.1951);
	vertex_normal(buf, 0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, 0.1951, 0.9808, -0.0);
	vertex_normal(buf, 0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);
	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4375, 0.625);

	//triangle 527

	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.0381, 0.1913, 0.9808);
	vertex_normal(buf, 0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.0747, 0.1802, 0.9808);
	vertex_normal(buf, 0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);

	//triangle 528

	vertex_position_3d(buf, 0.3536, 0.8536, -0.3827);
	vertex_normal(buf, 0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);
	vertex_position_3d(buf, 0.1913, 0.9619, -0.1951);
	vertex_normal(buf, 0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);
	vertex_position_3d(buf, 0.3753, 0.9061, -0.1951);
	vertex_normal(buf, 0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);

	//triangle 529

	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);
	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);
	vertex_position_3d(buf, 0.2126, 0.5133, 0.8315);
	vertex_normal(buf, 0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);

	//triangle 530

	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);
	vertex_position_3d(buf, 0.1802, 0.9061, -0.3827);
	vertex_normal(buf, 0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);
	vertex_position_3d(buf, 0.3536, 0.8536, -0.3827);
	vertex_normal(buf, 0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);

	//triangle 531

	vertex_position_3d(buf, 0.2706, 0.6533, 0.7071);
	vertex_normal(buf, 0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, 0.1084, 0.5449, 0.8315);
	vertex_normal(buf, 0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, 0.2126, 0.5133, 0.8315);
	vertex_normal(buf, 0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);

	//triangle 532

	vertex_position_3d(buf, 0.2706, 0.6533, -0.7071);
	vertex_normal(buf, 0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);
	vertex_position_3d(buf, 0.1622, 0.8155, -0.5556);
	vertex_normal(buf, 0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);
	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);

	//triangle 533

	vertex_position_3d(buf, 0.3182, 0.7682, 0.5556);
	vertex_normal(buf, 0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.1379, 0.6935, 0.7071);
	vertex_normal(buf, 0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.2706, 0.6533, 0.7071);
	vertex_normal(buf, 0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);

	//triangle 534

	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);
	vertex_position_3d(buf, 0.1379, 0.6935, -0.7071);
	vertex_normal(buf, 0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);
	vertex_position_3d(buf, 0.2706, 0.6533, -0.7071);
	vertex_normal(buf, 0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);

	//triangle 535

	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);
	vertex_position_3d(buf, 0.1622, 0.8155, 0.5556);
	vertex_normal(buf, 0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);
	vertex_position_3d(buf, 0.3182, 0.7682, 0.5556);
	vertex_normal(buf, 0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);

	//triangle 536

	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);
	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);
	vertex_position_3d(buf, 0.1464, 0.3536, -0.9239);
	vertex_normal(buf, 0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.75);

	//triangle 537

	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);
	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);
	vertex_position_3d(buf, 0.3753, 0.9061, 0.1951);
	vertex_normal(buf, 0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);

	//triangle 538

	vertex_position_3d(buf, 0.0747, 0.1802, -0.9808);
	vertex_normal(buf, 0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);
	vertex_position_3d(buf, 0.0747, 0.3753, -0.9239);
	vertex_normal(buf, 0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);
	vertex_position_3d(buf, 0.1464, 0.3536, -0.9239);
	vertex_normal(buf, 0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);

	//triangle 539

	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, 0.1913, 0.9619, 0.1951);
	vertex_normal(buf, 0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);
	vertex_position_3d(buf, 0.3753, 0.9061, 0.1951);
	vertex_normal(buf, 0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.25);

	//triangle 540

	vertex_position_3d(buf, 0.4619, 0.6913, 0.5556);
	vertex_normal(buf, 0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);
	vertex_position_3d(buf, 0.2706, 0.6533, 0.7071);
	vertex_normal(buf, 0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);
	vertex_position_3d(buf, 0.3928, 0.5879, 0.7071);
	vertex_normal(buf, 0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);

	//triangle 541

	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.2706, 0.6533, -0.7071);
	vertex_normal(buf, 0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.3928, 0.5879, -0.7071);
	vertex_normal(buf, 0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);

	//triangle 542

	vertex_position_3d(buf, 0.5133, 0.7682, 0.3827);
	vertex_normal(buf, 0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);
	vertex_position_3d(buf, 0.3182, 0.7682, 0.5556);
	vertex_normal(buf, 0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);
	vertex_position_3d(buf, 0.4619, 0.6913, 0.5556);
	vertex_normal(buf, 0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.6875);

	//triangle 543

	vertex_position_3d(buf, 0.2126, 0.3182, -0.9239);
	vertex_normal(buf, 0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);
	vertex_position_3d(buf, 0.2126, 0.5133, -0.8315);
	vertex_normal(buf, 0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);
	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);

	//triangle 544

	vertex_position_3d(buf, 0.5449, 0.8155, 0.1951);
	vertex_normal(buf, 0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);
	vertex_position_3d(buf, 0.3536, 0.8536, 0.3827);
	vertex_normal(buf, 0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);
	vertex_position_3d(buf, 0.5133, 0.7682, 0.3827);
	vertex_normal(buf, 0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);

	//triangle 545

	vertex_position_3d(buf, 0.1084, 0.1622, -0.9808);
	vertex_normal(buf, 0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);
	vertex_position_3d(buf, 0.1464, 0.3536, -0.9239);
	vertex_normal(buf, 0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);
	vertex_position_3d(buf, 0.2126, 0.3182, -0.9239);
	vertex_normal(buf, 0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.1875);

	//triangle 546

	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.5449, 0.8155, 0.1951);
	vertex_normal(buf, 0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.5556, 0.8315, -0.0);
	vertex_normal(buf, 0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);

	//triangle 547

	vertex_position_3d(buf, 0.5449, 0.8155, -0.1951);
	vertex_normal(buf, 0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);
	vertex_position_3d(buf, 0.3827, 0.9239, -0.0);
	vertex_normal(buf, 0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);
	vertex_position_3d(buf, 0.5556, 0.8315, -0.0);
	vertex_normal(buf, 0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);

	//triangle 548

	vertex_position_3d(buf, 0.2126, 0.3182, 0.9239);
	vertex_normal(buf, 0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.0747, 0.1802, 0.9808);
	vertex_normal(buf, 0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);
	vertex_position_3d(buf, 0.1084, 0.1622, 0.9808);
	vertex_normal(buf, 0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.625);

	//triangle 549

	vertex_position_3d(buf, 0.3536, 0.8536, -0.3827);
	vertex_normal(buf, 0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.5449, 0.8155, -0.1951);
	vertex_normal(buf, 0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.5133, 0.7682, -0.3827);
	vertex_normal(buf, 0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);

	//triangle 550

	vertex_position_3d(buf, 0.3087, 0.4619, 0.8315);
	vertex_normal(buf, 0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);
	vertex_position_3d(buf, 0.1464, 0.3536, 0.9239);
	vertex_normal(buf, 0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);
	vertex_position_3d(buf, 0.2126, 0.3182, 0.9239);
	vertex_normal(buf, 0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);

	//triangle 551

	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);
	vertex_position_3d(buf, 0.5133, 0.7682, -0.3827);
	vertex_normal(buf, 0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);
	vertex_position_3d(buf, 0.4619, 0.6913, -0.5556);
	vertex_normal(buf, 0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.125);

	//triangle 552

	vertex_position_3d(buf, 0.3928, 0.5879, 0.7071);
	vertex_normal(buf, 0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5);
	vertex_position_3d(buf, 0.2126, 0.5133, 0.8315);
	vertex_normal(buf, 0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5);
	vertex_position_3d(buf, 0.3087, 0.4619, 0.8315);
	vertex_normal(buf, 0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5);

	//triangle 553

	vertex_position_3d(buf, 0.3928, 0.5879, -0.7071);
	vertex_normal(buf, 0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);
	vertex_position_3d(buf, 0.3182, 0.7682, -0.5556);
	vertex_normal(buf, 0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);
	vertex_position_3d(buf, 0.4619, 0.6913, -0.5556);
	vertex_normal(buf, 0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5625);

	//triangle 554

	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.5556, 0.8315, -0.0);
	vertex_normal(buf, 0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.7071, 0.7071, -0.0);
	vertex_normal(buf, 0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);

	//triangle 555

	vertex_position_3d(buf, 0.2706, 0.2706, 0.9239);
	vertex_normal(buf, 0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, 0.1084, 0.1622, 0.9808);
	vertex_normal(buf, 0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, 0.1379, 0.1379, 0.9808);
	vertex_normal(buf, 0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);

	//triangle 556

	vertex_position_3d(buf, 0.5133, 0.7682, -0.3827);
	vertex_normal(buf, 0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3906, 1.0);
	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3906, 1.0);
	vertex_position_3d(buf, 0.6533, 0.6533, -0.3827);
	vertex_normal(buf, 0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3906, 1.0);

	//triangle 557

	vertex_position_3d(buf, 0.3928, 0.3928, 0.8315);
	vertex_normal(buf, 0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);
	vertex_position_3d(buf, 0.2126, 0.3182, 0.9239);
	vertex_normal(buf, 0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);
	vertex_position_3d(buf, 0.2706, 0.2706, 0.9239);
	vertex_normal(buf, 0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);

	//triangle 558

	vertex_position_3d(buf, 0.4619, 0.6913, -0.5556);
	vertex_normal(buf, 0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3906, 0.0);
	vertex_position_3d(buf, 0.6533, 0.6533, -0.3827);
	vertex_normal(buf, 0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3906, 0.0);
	vertex_position_3d(buf, 0.5879, 0.5879, -0.5556);
	vertex_normal(buf, 0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3906, 0.0);

	//triangle 559

	vertex_position_3d(buf, 0.5, 0.5, 0.7071);
	vertex_normal(buf, 0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);
	vertex_position_3d(buf, 0.3087, 0.4619, 0.8315);
	vertex_normal(buf, 0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);
	vertex_position_3d(buf, 0.3928, 0.3928, 0.8315);
	vertex_normal(buf, 0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.0625);

	//triangle 560

	vertex_position_3d(buf, 0.3928, 0.5879, -0.7071);
	vertex_normal(buf, 0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.5879, 0.5879, -0.5556);
	vertex_normal(buf, 0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.5, 0.5, -0.7071);
	vertex_normal(buf, 0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);

	//triangle 561

	vertex_position_3d(buf, 0.5879, 0.5879, 0.5556);
	vertex_normal(buf, 0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.3928, 0.5879, 0.7071);
	vertex_normal(buf, 0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.5, 0.5, 0.7071);
	vertex_normal(buf, 0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);

	//triangle 562

	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, 0.5, 0.5, -0.7071);
	vertex_normal(buf, 0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, 0.3928, 0.3928, -0.8315);
	vertex_normal(buf, 0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);

	//triangle 563

	vertex_position_3d(buf, 0.6533, 0.6533, 0.3827);
	vertex_normal(buf, 0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5);
	vertex_position_3d(buf, 0.4619, 0.6913, 0.5556);
	vertex_normal(buf, 0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5);
	vertex_position_3d(buf, 0.5879, 0.5879, 0.5556);
	vertex_normal(buf, 0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.5);

	//triangle 564

	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);
	vertex_position_3d(buf, 0.3087, 0.4619, -0.8315);
	vertex_normal(buf, 0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);
	vertex_position_3d(buf, 0.3928, 0.3928, -0.8315);
	vertex_normal(buf, 0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);

	//triangle 565

	vertex_position_3d(buf, 0.6935, 0.6935, 0.1951);
	vertex_normal(buf, 0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.875);
	vertex_position_3d(buf, 0.5133, 0.7682, 0.3827);
	vertex_normal(buf, 0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.875);
	vertex_position_3d(buf, 0.6533, 0.6533, 0.3827);
	vertex_normal(buf, 0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.875);

	//triangle 566

	vertex_position_3d(buf, 0.1379, 0.1379, -0.9808);
	vertex_normal(buf, 0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, 0.2126, 0.3182, -0.9239);
	vertex_normal(buf, 0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);
	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.9375);

	//triangle 567

	vertex_position_3d(buf, 0.5556, 0.8315, -0.0);
	vertex_normal(buf, 0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.375);
	vertex_position_3d(buf, 0.6935, 0.6935, 0.1951);
	vertex_normal(buf, 0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.375);
	vertex_position_3d(buf, 0.7071, 0.7071, -0.0);
	vertex_normal(buf, 0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.375);

	//triangle 568

	vertex_position_3d(buf, 0.3928, 0.3928, -0.8315);
	vertex_normal(buf, 0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, 0.5879, 0.3928, -0.7071);
	vertex_normal(buf, 0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);
	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.4375);

	//triangle 569

	vertex_position_3d(buf, 0.7682, 0.5133, 0.3827);
	vertex_normal(buf, 0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.5879, 0.5879, 0.5556);
	vertex_normal(buf, 0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.6913, 0.4619, 0.5556);
	vertex_normal(buf, 0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);

	//triangle 570

	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);
	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);
	vertex_position_3d(buf, 0.3182, 0.2126, -0.9239);
	vertex_normal(buf, 0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);

	//triangle 571

	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);
	vertex_position_3d(buf, 0.6533, 0.6533, 0.3827);
	vertex_normal(buf, 0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);
	vertex_position_3d(buf, 0.7682, 0.5133, 0.3827);
	vertex_normal(buf, 0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.8125);

	//triangle 572

	vertex_position_3d(buf, 0.1622, 0.1084, -0.9808);
	vertex_normal(buf, 0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.875);
	vertex_position_3d(buf, 0.2706, 0.2706, -0.9239);
	vertex_normal(buf, 0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.875);
	vertex_position_3d(buf, 0.3182, 0.2126, -0.9239);
	vertex_normal(buf, 0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.875);

	//triangle 573

	vertex_position_3d(buf, 0.7071, 0.7071, -0.0);
	vertex_normal(buf, 0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.8315, 0.5556, -0.0);
	vertex_normal(buf, 0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);

	//triangle 574

	vertex_position_3d(buf, 0.8155, 0.5449, -0.1951);
	vertex_normal(buf, 0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);
	vertex_position_3d(buf, 0.7071, 0.7071, -0.0);
	vertex_normal(buf, 0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);
	vertex_position_3d(buf, 0.8315, 0.5556, -0.0);
	vertex_normal(buf, 0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.3125);

	//triangle 575

	vertex_position_3d(buf, 0.3182, 0.2126, 0.9239);
	vertex_normal(buf, 0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.375);
	vertex_position_3d(buf, 0.1379, 0.1379, 0.9808);
	vertex_normal(buf, 0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.375);
	vertex_position_3d(buf, 0.1622, 0.1084, 0.9808);
	vertex_normal(buf, 0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.4062, 0.375);

	//triangle 576

	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5);
	vertex_position_3d(buf, 0.6935, 0.6935, -0.1951);
	vertex_normal(buf, 0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5);
	vertex_position_3d(buf, 0.8155, 0.5449, -0.1951);
	vertex_normal(buf, 0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5);

	//triangle 577

	vertex_position_3d(buf, 0.4619, 0.3087, 0.8315);
	vertex_normal(buf, 0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.2706, 0.2706, 0.9239);
	vertex_normal(buf, 0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.3182, 0.2126, 0.9239);
	vertex_normal(buf, 0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);

	//triangle 578

	vertex_position_3d(buf, 0.6913, 0.4619, -0.5556);
	vertex_normal(buf, 0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);
	vertex_position_3d(buf, 0.6533, 0.6533, -0.3827);
	vertex_normal(buf, 0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);
	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);

	//triangle 579

	vertex_position_3d(buf, 0.5879, 0.3928, 0.7071);
	vertex_normal(buf, 0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);
	vertex_position_3d(buf, 0.3928, 0.3928, 0.8315);
	vertex_normal(buf, 0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);
	vertex_position_3d(buf, 0.4619, 0.3087, 0.8315);
	vertex_normal(buf, 0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);

	//triangle 580

	vertex_position_3d(buf, 0.5879, 0.3928, -0.7071);
	vertex_normal(buf, 0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3594, 1.0);
	vertex_position_3d(buf, 0.5879, 0.5879, -0.5556);
	vertex_normal(buf, 0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3594, 1.0);
	vertex_position_3d(buf, 0.6913, 0.4619, -0.5556);
	vertex_normal(buf, 0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3594, 1.0);

	//triangle 581

	vertex_position_3d(buf, 0.6913, 0.4619, 0.5556);
	vertex_normal(buf, 0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);
	vertex_position_3d(buf, 0.5, 0.5, 0.7071);
	vertex_normal(buf, 0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);
	vertex_position_3d(buf, 0.5879, 0.3928, 0.7071);
	vertex_normal(buf, 0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);

	//triangle 582

	vertex_position_3d(buf, 0.3536, 0.1464, 0.9239);
	vertex_normal(buf, 0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3594, 0.0);
	vertex_position_3d(buf, 0.1622, 0.1084, 0.9808);
	vertex_normal(buf, 0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3594, 0.0);
	vertex_position_3d(buf, 0.1802, 0.0747, 0.9808);
	vertex_normal(buf, 0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3594, 0.0);

	//triangle 583

	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.9061, 0.3753, -0.1951);
	vertex_normal(buf, 0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.8536, 0.3536, -0.3827);
	vertex_normal(buf, 0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);

	//triangle 584

	vertex_position_3d(buf, 0.5133, 0.2126, 0.8315);
	vertex_normal(buf, 0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.3182, 0.2126, 0.9239);
	vertex_normal(buf, 0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.3536, 0.1464, 0.9239);
	vertex_normal(buf, 0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);

	//triangle 585

	vertex_position_3d(buf, 0.7682, 0.3182, -0.5556);
	vertex_normal(buf, 0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.7682, 0.5133, -0.3827);
	vertex_normal(buf, 0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.8536, 0.3536, -0.3827);
	vertex_normal(buf, 0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);

	//triangle 586

	vertex_position_3d(buf, 0.6533, 0.2706, 0.7071);
	vertex_normal(buf, 0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.4619, 0.3087, 0.8315);
	vertex_normal(buf, 0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.5133, 0.2126, 0.8315);
	vertex_normal(buf, 0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);

	//triangle 587

	vertex_position_3d(buf, 0.6533, 0.2706, -0.7071);
	vertex_normal(buf, 0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5);
	vertex_position_3d(buf, 0.6913, 0.4619, -0.5556);
	vertex_normal(buf, 0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5);
	vertex_position_3d(buf, 0.7682, 0.3182, -0.5556);
	vertex_normal(buf, 0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5);

	//triangle 588

	vertex_position_3d(buf, 0.7682, 0.3182, 0.5556);
	vertex_normal(buf, 0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);
	vertex_position_3d(buf, 0.5879, 0.3928, 0.7071);
	vertex_normal(buf, 0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);
	vertex_position_3d(buf, 0.6533, 0.2706, 0.7071);
	vertex_normal(buf, 0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);

	//triangle 589

	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);
	vertex_position_3d(buf, 0.6533, 0.2706, -0.7071);
	vertex_normal(buf, 0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);
	vertex_position_3d(buf, 0.5133, 0.2126, -0.8315);
	vertex_normal(buf, 0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);

	//triangle 590

	vertex_position_3d(buf, 0.8536, 0.3536, 0.3827);
	vertex_normal(buf, 0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);
	vertex_position_3d(buf, 0.6913, 0.4619, 0.5556);
	vertex_normal(buf, 0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);
	vertex_position_3d(buf, 0.7682, 0.3182, 0.5556);
	vertex_normal(buf, 0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.9375);

	//triangle 591

	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.375);
	vertex_position_3d(buf, 0.4619, 0.3087, -0.8315);
	vertex_normal(buf, 0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.375);
	vertex_position_3d(buf, 0.5133, 0.2126, -0.8315);
	vertex_normal(buf, 0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.375);

	//triangle 592

	vertex_position_3d(buf, 0.8155, 0.5449, 0.1951);
	vertex_normal(buf, 0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.8536, 0.3536, 0.3827);
	vertex_normal(buf, 0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);
	vertex_position_3d(buf, 0.9061, 0.3753, 0.1951);
	vertex_normal(buf, 0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.4375);

	//triangle 593

	vertex_position_3d(buf, 0.1622, 0.1084, -0.9808);
	vertex_normal(buf, 0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.1802, 0.0747, -0.9808);
	vertex_normal(buf, 0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);

	//triangle 594

	vertex_position_3d(buf, 0.8315, 0.5556, -0.0);
	vertex_normal(buf, 0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);
	vertex_position_3d(buf, 0.9061, 0.3753, 0.1951);
	vertex_normal(buf, 0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);
	vertex_position_3d(buf, 0.9239, 0.3827, -0.0);
	vertex_normal(buf, 0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);

	//triangle 595

	vertex_position_3d(buf, 0.9061, 0.3753, -0.1951);
	vertex_normal(buf, 0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);
	vertex_position_3d(buf, 0.8315, 0.5556, -0.0);
	vertex_normal(buf, 0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);
	vertex_position_3d(buf, 0.9239, 0.3827, -0.0);
	vertex_normal(buf, 0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);

	//triangle 596

	vertex_position_3d(buf, 0.9061, 0.1802, 0.3827);
	vertex_normal(buf, 0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);
	vertex_position_3d(buf, 0.7682, 0.3182, 0.5556);
	vertex_normal(buf, 0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);
	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.875);

	//triangle 597

	vertex_position_3d(buf, 0.3753, 0.0747, -0.9239);
	vertex_normal(buf, 0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);
	vertex_position_3d(buf, 0.5133, 0.2126, -0.8315);
	vertex_normal(buf, 0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);
	vertex_position_3d(buf, 0.5449, 0.1084, -0.8315);
	vertex_normal(buf, 0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);

	//triangle 598

	vertex_position_3d(buf, 0.9061, 0.3753, 0.1951);
	vertex_normal(buf, 0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.9061, 0.1802, 0.3827);
	vertex_normal(buf, 0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.9619, 0.1913, 0.1951);
	vertex_normal(buf, 0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);

	//triangle 599

	vertex_position_3d(buf, 0.1913, 0.0381, -0.9808);
	vertex_normal(buf, 0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.375);
	vertex_position_3d(buf, 0.3536, 0.1464, -0.9239);
	vertex_normal(buf, 0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.375);
	vertex_position_3d(buf, 0.3753, 0.0747, -0.9239);
	vertex_normal(buf, 0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.375);

	//triangle 600

	vertex_position_3d(buf, 0.9239, 0.3827, -0.0);
	vertex_normal(buf, 0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.9619, 0.1913, 0.1951);
	vertex_normal(buf, 0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.9808, 0.1951, -0.0);
	vertex_normal(buf, 0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);

	//triangle 601

	vertex_position_3d(buf, 0.9619, 0.1913, -0.1951);
	vertex_normal(buf, 0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);
	vertex_position_3d(buf, 0.9239, 0.3827, -0.0);
	vertex_normal(buf, 0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);
	vertex_position_3d(buf, 0.9808, 0.1951, -0.0);
	vertex_normal(buf, 0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);

	//triangle 602

	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);
	vertex_position_3d(buf, 0.1802, 0.0747, 0.9808);
	vertex_normal(buf, 0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);
	vertex_position_3d(buf, 0.1913, 0.0381, 0.9808);
	vertex_normal(buf, 0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.8125);

	//triangle 603

	vertex_position_3d(buf, 0.8536, 0.3536, -0.3827);
	vertex_normal(buf, 0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.9619, 0.1913, -0.1951);
	vertex_normal(buf, 0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.9061, 0.1802, -0.3827);
	vertex_normal(buf, 0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);

	//triangle 604

	vertex_position_3d(buf, 0.5449, 0.1084, 0.8315);
	vertex_normal(buf, 0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.25);
	vertex_position_3d(buf, 0.3536, 0.1464, 0.9239);
	vertex_normal(buf, 0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.25);
	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.25);

	//triangle 605

	vertex_position_3d(buf, 0.8155, 0.1622, -0.5556);
	vertex_normal(buf, 0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.8536, 0.3536, -0.3827);
	vertex_normal(buf, 0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);
	vertex_position_3d(buf, 0.9061, 0.1802, -0.3827);
	vertex_normal(buf, 0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.3125);

	//triangle 606

	vertex_position_3d(buf, 0.6935, 0.1379, 0.7071);
	vertex_normal(buf, 0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);
	vertex_position_3d(buf, 0.5133, 0.2126, 0.8315);
	vertex_normal(buf, 0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);
	vertex_position_3d(buf, 0.5449, 0.1084, 0.8315);
	vertex_normal(buf, 0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);

	//triangle 607

	vertex_position_3d(buf, 0.6935, 0.1379, -0.7071);
	vertex_normal(buf, 0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);
	vertex_position_3d(buf, 0.7682, 0.3182, -0.5556);
	vertex_normal(buf, 0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);
	vertex_position_3d(buf, 0.8155, 0.1622, -0.5556);
	vertex_normal(buf, 0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.75);

	//triangle 608

	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.6533, 0.2706, 0.7071);
	vertex_normal(buf, 0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.6935, 0.1379, 0.7071);
	vertex_normal(buf, 0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);

	//triangle 609

	vertex_position_3d(buf, 0.5133, 0.2126, -0.8315);
	vertex_normal(buf, 0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);
	vertex_position_3d(buf, 0.6935, 0.1379, -0.7071);
	vertex_normal(buf, 0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);
	vertex_position_3d(buf, 0.5449, 0.1084, -0.8315);
	vertex_normal(buf, 0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);

	//triangle 610

	vertex_position_3d(buf, 0.9061, 0.1802, -0.3827);
	vertex_normal(buf, 0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.25);
	vertex_position_3d(buf, 0.9808, -0.0, -0.1951);
	vertex_normal(buf, 0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.25);
	vertex_position_3d(buf, 0.9239, -0.0, -0.3827);
	vertex_normal(buf, 0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.25);

	//triangle 611

	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.3827, -0.0, 0.9239);
	vertex_normal(buf, 0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);

	//triangle 612

	vertex_position_3d(buf, 0.8315, -0.0, -0.5556);
	vertex_normal(buf, 0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.9061, 0.1802, -0.3827);
	vertex_normal(buf, 0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.9239, -0.0, -0.3827);
	vertex_normal(buf, 0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);

	//triangle 613

	vertex_position_3d(buf, 0.7071, -0.0, 0.7071);
	vertex_normal(buf, 0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);
	vertex_position_3d(buf, 0.5449, 0.1084, 0.8315);
	vertex_normal(buf, 0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);
	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);

	//triangle 614

	vertex_position_3d(buf, 0.7071, -0.0, -0.7071);
	vertex_normal(buf, 0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);
	vertex_position_3d(buf, 0.8155, 0.1622, -0.5556);
	vertex_normal(buf, 0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);
	vertex_position_3d(buf, 0.8315, -0.0, -0.5556);
	vertex_normal(buf, 0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.6875);

	//triangle 615

	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);
	vertex_position_3d(buf, 0.7071, -0.0, 0.7071);
	vertex_normal(buf, 0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);
	vertex_position_3d(buf, 0.8315, -0.0, 0.5556);
	vertex_normal(buf, 0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);

	//triangle 616

	vertex_position_3d(buf, 0.5449, 0.1084, -0.8315);
	vertex_normal(buf, 0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);
	vertex_position_3d(buf, 0.7071, -0.0, -0.7071);
	vertex_normal(buf, 0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);
	vertex_position_3d(buf, 0.5556, -0.0, -0.8315);
	vertex_normal(buf, 0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);

	//triangle 617

	vertex_position_3d(buf, 0.9239, -0.0, 0.3827);
	vertex_normal(buf, 0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);
	vertex_position_3d(buf, 0.8155, 0.1622, 0.5556);
	vertex_normal(buf, 0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);
	vertex_position_3d(buf, 0.8315, -0.0, 0.5556);
	vertex_normal(buf, 0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.1875);

	//triangle 618

	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.5449, 0.1084, -0.8315);
	vertex_normal(buf, 0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);
	vertex_position_3d(buf, 0.5556, -0.0, -0.8315);
	vertex_normal(buf, 0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.5625);

	//triangle 619

	vertex_position_3d(buf, 0.9619, 0.1913, 0.1951);
	vertex_normal(buf, 0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);
	vertex_position_3d(buf, 0.9239, -0.0, 0.3827);
	vertex_normal(buf, 0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);
	vertex_position_3d(buf, 0.9808, -0.0, 0.1951);
	vertex_normal(buf, 0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.625);

	//triangle 620

	vertex_position_3d(buf, 0.1913, 0.0381, -0.9808);
	vertex_normal(buf, 0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.1951, -0.0, -0.9808);
	vertex_normal(buf, 0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);

	//triangle 621

	vertex_position_3d(buf, 0.9808, 0.1951, -0.0);
	vertex_normal(buf, 0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.9808, -0.0, 0.1951);
	vertex_normal(buf, 0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 1.0, -0.0, -0.0);
	vertex_normal(buf, 1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);

	//triangle 622

	vertex_position_3d(buf, 0.9808, -0.0, -0.1951);
	vertex_normal(buf, 0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 0.9808, 0.1951, -0.0);
	vertex_normal(buf, 0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);
	vertex_position_3d(buf, 1.0, -0.0, -0.0);
	vertex_normal(buf, 1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.0625);

	//triangle 623

	vertex_position_3d(buf, 0.3753, 0.0747, 0.9239);
	vertex_normal(buf, 0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);
	vertex_position_3d(buf, 0.1951, -0.0, 0.9808);
	vertex_normal(buf, 0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);
	vertex_position_3d(buf, 0.3827, -0.0, 0.9239);
	vertex_normal(buf, 0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.375, 0.125);

	//triangle 624

	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.5556, -0.0, -0.8315);
	vertex_normal(buf, 0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.5449, -0.1084, -0.8315);
	vertex_normal(buf, 0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);

	//triangle 625

	vertex_position_3d(buf, 0.9808, -0.0, 0.1951);
	vertex_normal(buf, 0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.9061, -0.1802, 0.3827);
	vertex_normal(buf, 0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.9619, -0.1913, 0.1951);
	vertex_normal(buf, 0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);

	//triangle 626

	vertex_position_3d(buf, 0.1913, -0.0381, -0.9808);
	vertex_normal(buf, 0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);
	vertex_position_3d(buf, 0.3827, -0.0, -0.9239);
	vertex_normal(buf, 0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);
	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);

	//triangle 627

	vertex_position_3d(buf, 1.0, -0.0, -0.0);
	vertex_normal(buf, 1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.6875);
	vertex_position_3d(buf, 0.9619, -0.1913, 0.1951);
	vertex_normal(buf, 0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.6875);
	vertex_position_3d(buf, 0.9808, -0.1951, -0.0);
	vertex_normal(buf, 0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.6875);

	//triangle 628

	vertex_position_3d(buf, 0.9619, -0.1913, -0.1951);
	vertex_normal(buf, 0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 1.0, -0.0, -0.0);
	vertex_normal(buf, 1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.9808, -0.1951, -0.0);
	vertex_normal(buf, 0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);

	//triangle 629

	vertex_position_3d(buf, 0.3827, -0.0, 0.9239);
	vertex_normal(buf, 0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.1913, -0.0381, 0.9808);
	vertex_normal(buf, 0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.3753, -0.0747, 0.9239);
	vertex_normal(buf, 0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);

	//triangle 630

	vertex_position_3d(buf, 0.9239, -0.0, -0.3827);
	vertex_normal(buf, 0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.1875);
	vertex_position_3d(buf, 0.9619, -0.1913, -0.1951);
	vertex_normal(buf, 0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.1875);
	vertex_position_3d(buf, 0.9061, -0.1802, -0.3827);
	vertex_normal(buf, 0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.1875);

	//triangle 631

	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.3753, -0.0747, 0.9239);
	vertex_normal(buf, 0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);
	vertex_position_3d(buf, 0.5449, -0.1084, 0.8315);
	vertex_normal(buf, 0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.25);

	//triangle 632

	vertex_position_3d(buf, 0.8155, -0.1622, -0.5556);
	vertex_normal(buf, 0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.9239, -0.0, -0.3827);
	vertex_normal(buf, 0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.9061, -0.1802, -0.3827);
	vertex_normal(buf, 0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);

	//triangle 633

	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.5556, -0.0, 0.8315);
	vertex_normal(buf, 0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.5449, -0.1084, 0.8315);
	vertex_normal(buf, 0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);

	//triangle 634

	vertex_position_3d(buf, 0.6935, -0.1379, -0.7071);
	vertex_normal(buf, 0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.8315, -0.0, -0.5556);
	vertex_normal(buf, 0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.8155, -0.1622, -0.5556);
	vertex_normal(buf, 0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);

	//triangle 635

	vertex_position_3d(buf, 0.8315, -0.0, 0.5556);
	vertex_normal(buf, 0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.6875);
	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.6875);
	vertex_position_3d(buf, 0.8155, -0.1622, 0.5556);
	vertex_normal(buf, 0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.6875);

	//triangle 636

	vertex_position_3d(buf, 0.5556, -0.0, -0.8315);
	vertex_normal(buf, 0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);
	vertex_position_3d(buf, 0.6935, -0.1379, -0.7071);
	vertex_normal(buf, 0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);
	vertex_position_3d(buf, 0.5449, -0.1084, -0.8315);
	vertex_normal(buf, 0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);

	//triangle 637

	vertex_position_3d(buf, 0.9061, -0.1802, 0.3827);
	vertex_normal(buf, 0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);
	vertex_position_3d(buf, 0.8315, -0.0, 0.5556);
	vertex_normal(buf, 0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);
	vertex_position_3d(buf, 0.8155, -0.1622, 0.5556);
	vertex_normal(buf, 0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);

	//triangle 638

	vertex_position_3d(buf, 0.7682, -0.3182, -0.5556);
	vertex_normal(buf, 0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.1875);
	vertex_position_3d(buf, 0.9061, -0.1802, -0.3827);
	vertex_normal(buf, 0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.1875);
	vertex_position_3d(buf, 0.8536, -0.3536, -0.3827);
	vertex_normal(buf, 0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.1875);

	//triangle 639

	vertex_position_3d(buf, 0.6533, -0.2706, 0.7071);
	vertex_normal(buf, 0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);
	vertex_position_3d(buf, 0.5449, -0.1084, 0.8315);
	vertex_normal(buf, 0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);
	vertex_position_3d(buf, 0.5133, -0.2126, 0.8315);
	vertex_normal(buf, 0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);

	//triangle 640

	vertex_position_3d(buf, 0.6533, -0.2706, -0.7071);
	vertex_normal(buf, 0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.8155, -0.1622, -0.5556);
	vertex_normal(buf, 0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);
	vertex_position_3d(buf, 0.7682, -0.3182, -0.5556);
	vertex_normal(buf, 0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.625);

	//triangle 641

	vertex_position_3d(buf, 0.7682, -0.3182, 0.5556);
	vertex_normal(buf, 0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.6935, -0.1379, 0.7071);
	vertex_normal(buf, 0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.6533, -0.2706, 0.7071);
	vertex_normal(buf, 0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);

	//triangle 642

	vertex_position_3d(buf, 0.5449, -0.1084, -0.8315);
	vertex_normal(buf, 0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.6533, -0.2706, -0.7071);
	vertex_normal(buf, 0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.5133, -0.2126, -0.8315);
	vertex_normal(buf, 0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);

	//triangle 643

	vertex_position_3d(buf, 0.8536, -0.3536, 0.3827);
	vertex_normal(buf, 0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.8155, -0.1622, 0.5556);
	vertex_normal(buf, 0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.7682, -0.3182, 0.5556);
	vertex_normal(buf, 0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);

	//triangle 644

	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);
	vertex_position_3d(buf, 0.5133, -0.2126, -0.8315);
	vertex_normal(buf, 0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);
	vertex_position_3d(buf, 0.3536, -0.1464, -0.9239);
	vertex_normal(buf, 0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.125);

	//triangle 645

	vertex_position_3d(buf, 0.9619, -0.1913, 0.1951);
	vertex_normal(buf, 0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.5);
	vertex_position_3d(buf, 0.8536, -0.3536, 0.3827);
	vertex_normal(buf, 0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.5);
	vertex_position_3d(buf, 0.9061, -0.3753, 0.1951);
	vertex_normal(buf, 0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.5);

	//triangle 646

	vertex_position_3d(buf, 0.1802, -0.0747, -0.9808);
	vertex_normal(buf, 0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);
	vertex_position_3d(buf, 0.3753, -0.0747, -0.9239);
	vertex_normal(buf, 0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);
	vertex_position_3d(buf, 0.3536, -0.1464, -0.9239);
	vertex_normal(buf, 0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.5625);

	//triangle 647

	vertex_position_3d(buf, 0.9808, -0.1951, -0.0);
	vertex_normal(buf, 0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);
	vertex_position_3d(buf, 0.9061, -0.3753, 0.1951);
	vertex_normal(buf, 0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);
	vertex_position_3d(buf, 0.9239, -0.3827, -0.0);
	vertex_normal(buf, 0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);

	//triangle 648

	vertex_position_3d(buf, 0.9061, -0.3753, -0.1951);
	vertex_normal(buf, 0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);
	vertex_position_3d(buf, 0.9808, -0.1951, -0.0);
	vertex_normal(buf, 0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);
	vertex_position_3d(buf, 0.9239, -0.3827, -0.0);
	vertex_normal(buf, 0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);

	//triangle 649

	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3281, 1.0);
	vertex_position_3d(buf, 0.1913, -0.0381, 0.9808);
	vertex_normal(buf, 0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3281, 1.0);
	vertex_position_3d(buf, 0.1802, -0.0747, 0.9808);
	vertex_normal(buf, 0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3281, 1.0);

	//triangle 650

	vertex_position_3d(buf, 0.9061, -0.1802, -0.3827);
	vertex_normal(buf, 0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);
	vertex_position_3d(buf, 0.9061, -0.3753, -0.1951);
	vertex_normal(buf, 0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);
	vertex_position_3d(buf, 0.8536, -0.3536, -0.3827);
	vertex_normal(buf, 0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);

	//triangle 651

	vertex_position_3d(buf, 0.5133, -0.2126, 0.8315);
	vertex_normal(buf, 0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3281, 0.0);
	vertex_position_3d(buf, 0.3753, -0.0747, 0.9239);
	vertex_normal(buf, 0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3281, 0.0);
	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3281, 0.0);

	//triangle 652

	vertex_position_3d(buf, 0.1802, -0.0747, -0.9808);
	vertex_normal(buf, 0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.3182, -0.2126, -0.9239);
	vertex_normal(buf, 0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);
	vertex_position_3d(buf, 0.1622, -0.1084, -0.9808);
	vertex_normal(buf, 0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.0625);

	//triangle 653

	vertex_position_3d(buf, 0.9239, -0.3827, -0.0);
	vertex_normal(buf, 0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.8155, -0.5449, 0.1951);
	vertex_normal(buf, 0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.8315, -0.5556, -0.0);
	vertex_normal(buf, 0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);

	//triangle 654

	vertex_position_3d(buf, 0.8155, -0.5449, -0.1951);
	vertex_normal(buf, 0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.9239, -0.3827, -0.0);
	vertex_normal(buf, 0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.8315, -0.5556, -0.0);
	vertex_normal(buf, 0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);

	//triangle 655

	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.1622, -0.1084, 0.9808);
	vertex_normal(buf, 0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.3182, -0.2126, 0.9239);
	vertex_normal(buf, 0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);

	//triangle 656

	vertex_position_3d(buf, 0.8536, -0.3536, -0.3827);
	vertex_normal(buf, 0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.5);
	vertex_position_3d(buf, 0.8155, -0.5449, -0.1951);
	vertex_normal(buf, 0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.5);
	vertex_position_3d(buf, 0.7682, -0.5133, -0.3827);
	vertex_normal(buf, 0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.5);

	//triangle 657

	vertex_position_3d(buf, 0.4619, -0.3087, 0.8315);
	vertex_normal(buf, 0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);
	vertex_position_3d(buf, 0.3536, -0.1464, 0.9239);
	vertex_normal(buf, 0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);
	vertex_position_3d(buf, 0.3182, -0.2126, 0.9239);
	vertex_normal(buf, 0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);

	//triangle 658

	vertex_position_3d(buf, 0.6913, -0.4619, -0.5556);
	vertex_normal(buf, 0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);
	vertex_position_3d(buf, 0.8536, -0.3536, -0.3827);
	vertex_normal(buf, 0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);
	vertex_position_3d(buf, 0.7682, -0.5133, -0.3827);
	vertex_normal(buf, 0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);

	//triangle 659

	vertex_position_3d(buf, 0.5879, -0.3928, 0.7071);
	vertex_normal(buf, 0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);
	vertex_position_3d(buf, 0.5133, -0.2126, 0.8315);
	vertex_normal(buf, 0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);
	vertex_position_3d(buf, 0.4619, -0.3087, 0.8315);
	vertex_normal(buf, 0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3437, 0.9375);

	//triangle 660

	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.375);
	vertex_position_3d(buf, 0.7682, -0.3182, -0.5556);
	vertex_normal(buf, 0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.375);
	vertex_position_3d(buf, 0.6913, -0.4619, -0.5556);
	vertex_normal(buf, 0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.375);

	//triangle 661

	vertex_position_3d(buf, 0.6913, -0.4619, 0.5556);
	vertex_normal(buf, 0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.6533, -0.2706, 0.7071);
	vertex_normal(buf, 0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);
	vertex_position_3d(buf, 0.5879, -0.3928, 0.7071);
	vertex_normal(buf, 0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.4375);

	//triangle 662

	vertex_position_3d(buf, 0.5133, -0.2126, -0.8315);
	vertex_normal(buf, 0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.4619, -0.3087, -0.8315);
	vertex_normal(buf, 0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);

	//triangle 663

	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);
	vertex_position_3d(buf, 0.7682, -0.3182, 0.5556);
	vertex_normal(buf, 0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);
	vertex_position_3d(buf, 0.6913, -0.4619, 0.5556);
	vertex_normal(buf, 0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);

	//triangle 664

	vertex_position_3d(buf, 0.3536, -0.1464, -0.9239);
	vertex_normal(buf, 0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);
	vertex_position_3d(buf, 0.4619, -0.3087, -0.8315);
	vertex_normal(buf, 0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);
	vertex_position_3d(buf, 0.3182, -0.2126, -0.9239);
	vertex_normal(buf, 0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);

	//triangle 665

	vertex_position_3d(buf, 0.9061, -0.3753, 0.1951);
	vertex_normal(buf, 0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);
	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);
	vertex_position_3d(buf, 0.8155, -0.5449, 0.1951);
	vertex_normal(buf, 0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.875);

	//triangle 666

	vertex_position_3d(buf, 0.5, -0.5, 0.7071);
	vertex_normal(buf, 0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);
	vertex_position_3d(buf, 0.4619, -0.3087, 0.8315);
	vertex_normal(buf, 0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);
	vertex_position_3d(buf, 0.3928, -0.3928, 0.8315);
	vertex_normal(buf, 0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);

	//triangle 667

	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);
	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);
	vertex_position_3d(buf, 0.5, -0.5, -0.7071);
	vertex_normal(buf, 0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.3125);

	//triangle 668

	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.375);
	vertex_position_3d(buf, 0.5879, -0.3928, 0.7071);
	vertex_normal(buf, 0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.375);
	vertex_position_3d(buf, 0.5, -0.5, 0.7071);
	vertex_normal(buf, 0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.375);

	//triangle 669

	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.5879, -0.3928, -0.7071);
	vertex_normal(buf, 0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.5, -0.5, -0.7071);
	vertex_normal(buf, 0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);

	//triangle 670

	vertex_position_3d(buf, 0.6533, -0.6533, 0.3827);
	vertex_normal(buf, 0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.6913, -0.4619, 0.5556);
	vertex_normal(buf, 0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);
	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.75);

	//triangle 671

	vertex_position_3d(buf, 0.2706, -0.2706, -0.9239);
	vertex_normal(buf, 0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);
	vertex_position_3d(buf, 0.4619, -0.3087, -0.8315);
	vertex_normal(buf, 0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);
	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3438, 0.8125);

	//triangle 672

	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);
	vertex_position_3d(buf, 0.7682, -0.5133, 0.3827);
	vertex_normal(buf, 0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);
	vertex_position_3d(buf, 0.6533, -0.6533, 0.3827);
	vertex_normal(buf, 0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);

	//triangle 673

	vertex_position_3d(buf, 0.1379, -0.1379, -0.9808);
	vertex_normal(buf, 0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2969, 1.0);
	vertex_position_3d(buf, 0.3182, -0.2126, -0.9239);
	vertex_normal(buf, 0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2969, 1.0);
	vertex_position_3d(buf, 0.2706, -0.2706, -0.9239);
	vertex_normal(buf, 0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2969, 1.0);

	//triangle 674

	vertex_position_3d(buf, 0.8315, -0.5556, -0.0);
	vertex_normal(buf, 0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);
	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);
	vertex_position_3d(buf, 0.7071, -0.7071, -0.0);
	vertex_normal(buf, 0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);

	//triangle 675

	vertex_position_3d(buf, 0.6935, -0.6935, -0.1951);
	vertex_normal(buf, 0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2969, 0.0);
	vertex_position_3d(buf, 0.8315, -0.5556, -0.0);
	vertex_normal(buf, 0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2969, 0.0);
	vertex_position_3d(buf, 0.7071, -0.7071, -0.0);
	vertex_normal(buf, 0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2969, 0.0);

	//triangle 676

	vertex_position_3d(buf, 0.2706, -0.2706, 0.9239);
	vertex_normal(buf, 0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.1622, -0.1084, 0.9808);
	vertex_normal(buf, 0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.1379, -0.1379, 0.9808);
	vertex_normal(buf, 0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);

	//triangle 677

	vertex_position_3d(buf, 0.7682, -0.5133, -0.3827);
	vertex_normal(buf, 0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);
	vertex_position_3d(buf, 0.6935, -0.6935, -0.1951);
	vertex_normal(buf, 0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);
	vertex_position_3d(buf, 0.6533, -0.6533, -0.3827);
	vertex_normal(buf, 0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);

	//triangle 678

	vertex_position_3d(buf, 0.3928, -0.3928, 0.8315);
	vertex_normal(buf, 0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, 0.3182, -0.2126, 0.9239);
	vertex_normal(buf, 0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, 0.2706, -0.2706, 0.9239);
	vertex_normal(buf, 0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);

	//triangle 679

	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.7682, -0.5133, -0.3827);
	vertex_normal(buf, 0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.6533, -0.6533, -0.3827);
	vertex_normal(buf, 0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);

	//triangle 680

	vertex_position_3d(buf, 0.7071, -0.7071, -0.0);
	vertex_normal(buf, 0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5);
	vertex_position_3d(buf, 0.5449, -0.8155, 0.1951);
	vertex_normal(buf, 0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5);
	vertex_position_3d(buf, 0.5556, -0.8315, -0.0);
	vertex_normal(buf, 0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5);

	//triangle 681

	vertex_position_3d(buf, 0.5449, -0.8155, -0.1951);
	vertex_normal(buf, 0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, 0.7071, -0.7071, -0.0);
	vertex_normal(buf, 0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, 0.5556, -0.8315, -0.0);
	vertex_normal(buf, 0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);

	//triangle 682

	vertex_position_3d(buf, 0.2126, -0.3182, 0.9239);
	vertex_normal(buf, 0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);
	vertex_position_3d(buf, 0.1379, -0.1379, 0.9808);
	vertex_normal(buf, 0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);
	vertex_position_3d(buf, 0.1084, -0.1622, 0.9808);
	vertex_normal(buf, 0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);

	//triangle 683

	vertex_position_3d(buf, 0.6533, -0.6533, -0.3827);
	vertex_normal(buf, 0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);
	vertex_position_3d(buf, 0.5449, -0.8155, -0.1951);
	vertex_normal(buf, 0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);
	vertex_position_3d(buf, 0.5133, -0.7682, -0.3827);
	vertex_normal(buf, 0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.9375);

	//triangle 684

	vertex_position_3d(buf, 0.3087, -0.4619, 0.8315);
	vertex_normal(buf, 0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.375);
	vertex_position_3d(buf, 0.2706, -0.2706, 0.9239);
	vertex_normal(buf, 0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.375);
	vertex_position_3d(buf, 0.2126, -0.3182, 0.9239);
	vertex_normal(buf, 0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.375);

	//triangle 685

	vertex_position_3d(buf, 0.4619, -0.6913, -0.5556);
	vertex_normal(buf, 0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.6533, -0.6533, -0.3827);
	vertex_normal(buf, 0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);
	vertex_position_3d(buf, 0.5133, -0.7682, -0.3827);
	vertex_normal(buf, 0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.4375);

	//triangle 686

	vertex_position_3d(buf, 0.3928, -0.5879, 0.7071);
	vertex_normal(buf, 0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, 0.3928, -0.3928, 0.8315);
	vertex_normal(buf, 0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, 0.3087, -0.4619, 0.8315);
	vertex_normal(buf, 0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);

	//triangle 687

	vertex_position_3d(buf, 0.3928, -0.5879, -0.7071);
	vertex_normal(buf, 0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);
	vertex_position_3d(buf, 0.5879, -0.5879, -0.5556);
	vertex_normal(buf, 0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);
	vertex_position_3d(buf, 0.4619, -0.6913, -0.5556);
	vertex_normal(buf, 0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);

	//triangle 688

	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);
	vertex_position_3d(buf, 0.3928, -0.5879, 0.7071);
	vertex_normal(buf, 0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);
	vertex_position_3d(buf, 0.4619, -0.6913, 0.5556);
	vertex_normal(buf, 0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.875);

	//triangle 689

	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, 0.3928, -0.5879, -0.7071);
	vertex_normal(buf, 0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, 0.3087, -0.4619, -0.8315);
	vertex_normal(buf, 0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);

	//triangle 690

	vertex_position_3d(buf, 0.5133, -0.7682, 0.3827);
	vertex_normal(buf, 0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);
	vertex_position_3d(buf, 0.5879, -0.5879, 0.5556);
	vertex_normal(buf, 0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);
	vertex_position_3d(buf, 0.4619, -0.6913, 0.5556);
	vertex_normal(buf, 0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);

	//triangle 691

	vertex_position_3d(buf, 0.2126, -0.3182, -0.9239);
	vertex_normal(buf, 0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);
	vertex_position_3d(buf, 0.3928, -0.3928, -0.8315);
	vertex_normal(buf, 0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);
	vertex_position_3d(buf, 0.3087, -0.4619, -0.8315);
	vertex_normal(buf, 0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);

	//triangle 692

	vertex_position_3d(buf, 0.6935, -0.6935, 0.1951);
	vertex_normal(buf, 0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.375);
	vertex_position_3d(buf, 0.5133, -0.7682, 0.3827);
	vertex_normal(buf, 0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.375);
	vertex_position_3d(buf, 0.5449, -0.8155, 0.1951);
	vertex_normal(buf, 0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.375);

	//triangle 693

	vertex_position_3d(buf, 0.1084, -0.1622, -0.9808);
	vertex_normal(buf, 0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, 0.2706, -0.2706, -0.9239);
	vertex_normal(buf, 0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, 0.2126, -0.3182, -0.9239);
	vertex_normal(buf, 0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);

	//triangle 694

	vertex_position_3d(buf, 0.2706, -0.6533, -0.7071);
	vertex_normal(buf, 0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.4619, -0.6913, -0.5556);
	vertex_normal(buf, 0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.3182, -0.7682, -0.5556);
	vertex_normal(buf, 0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);

	//triangle 695

	vertex_position_3d(buf, 0.4619, -0.6913, 0.5556);
	vertex_normal(buf, 0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);
	vertex_position_3d(buf, 0.2706, -0.6533, 0.7071);
	vertex_normal(buf, 0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);
	vertex_position_3d(buf, 0.3182, -0.7682, 0.5556);
	vertex_normal(buf, 0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.8125);

	//triangle 696

	vertex_position_3d(buf, 0.3087, -0.4619, -0.8315);
	vertex_normal(buf, 0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, 0.2706, -0.6533, -0.7071);
	vertex_normal(buf, 0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, 0.2126, -0.5133, -0.8315);
	vertex_normal(buf, 0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);

	//triangle 697

	vertex_position_3d(buf, 0.3536, -0.8536, 0.3827);
	vertex_normal(buf, 0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.4619, -0.6913, 0.5556);
	vertex_normal(buf, 0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.3182, -0.7682, 0.5556);
	vertex_normal(buf, 0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);

	//triangle 698

	vertex_position_3d(buf, 0.1464, -0.3536, -0.9239);
	vertex_normal(buf, 0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);
	vertex_position_3d(buf, 0.3087, -0.4619, -0.8315);
	vertex_normal(buf, 0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);
	vertex_position_3d(buf, 0.2126, -0.5133, -0.8315);
	vertex_normal(buf, 0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.3125);

	//triangle 699

	vertex_position_3d(buf, 0.5449, -0.8155, 0.1951);
	vertex_normal(buf, 0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.6875);
	vertex_position_3d(buf, 0.3536, -0.8536, 0.3827);
	vertex_normal(buf, 0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.6875);
	vertex_position_3d(buf, 0.3753, -0.9061, 0.1951);
	vertex_normal(buf, 0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.6875);

	//triangle 700

	vertex_position_3d(buf, 0.0747, -0.1802, -0.9808);
	vertex_normal(buf, 0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.2126, -0.3182, -0.9239);
	vertex_normal(buf, 0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);
	vertex_position_3d(buf, 0.1464, -0.3536, -0.9239);
	vertex_normal(buf, 0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.75);

	//triangle 701

	vertex_position_3d(buf, 0.5556, -0.8315, -0.0);
	vertex_normal(buf, 0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, 0.3753, -0.9061, 0.1951);
	vertex_normal(buf, 0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, 0.3827, -0.9239, -0.0);
	vertex_normal(buf, 0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);

	//triangle 702

	vertex_position_3d(buf, 0.3753, -0.9061, -0.1951);
	vertex_normal(buf, 0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.1875);
	vertex_position_3d(buf, 0.5556, -0.8315, -0.0);
	vertex_normal(buf, 0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.1875);
	vertex_position_3d(buf, 0.3827, -0.9239, -0.0);
	vertex_normal(buf, 0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.1875);

	//triangle 703

	vertex_position_3d(buf, 0.1464, -0.3536, 0.9239);
	vertex_normal(buf, 0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.1084, -0.1622, 0.9808);
	vertex_normal(buf, 0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);
	vertex_position_3d(buf, 0.0747, -0.1802, 0.9808);
	vertex_normal(buf, 0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.25);

	//triangle 704

	vertex_position_3d(buf, 0.5133, -0.7682, -0.3827);
	vertex_normal(buf, 0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, 0.3753, -0.9061, -0.1951);
	vertex_normal(buf, 0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, 0.3536, -0.8536, -0.3827);
	vertex_normal(buf, 0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);

	//triangle 705

	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, 0.2126, -0.3182, 0.9239);
	vertex_normal(buf, 0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, 0.1464, -0.3536, 0.9239);
	vertex_normal(buf, 0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);

	//triangle 706

	vertex_position_3d(buf, 0.3182, -0.7682, -0.5556);
	vertex_normal(buf, 0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.5133, -0.7682, -0.3827);
	vertex_normal(buf, 0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.3536, -0.8536, -0.3827);
	vertex_normal(buf, 0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);

	//triangle 707

	vertex_position_3d(buf, 0.2706, -0.6533, 0.7071);
	vertex_normal(buf, 0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.6875);
	vertex_position_3d(buf, 0.3087, -0.4619, 0.8315);
	vertex_normal(buf, 0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.6875);
	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.6875);

	//triangle 708

	vertex_position_3d(buf, 0.1913, -0.9619, -0.1951);
	vertex_normal(buf, 0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, 0.3827, -0.9239, -0.0);
	vertex_normal(buf, 0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, 0.1951, -0.9808, -0.0);
	vertex_normal(buf, 0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);

	//triangle 709

	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);
	vertex_position_3d(buf, 0.0747, -0.1802, 0.9808);
	vertex_normal(buf, 0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);
	vertex_position_3d(buf, 0.0381, -0.1913, 0.9808);
	vertex_normal(buf, 0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);

	//triangle 710

	vertex_position_3d(buf, 0.3536, -0.8536, -0.3827);
	vertex_normal(buf, 0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.1875);
	vertex_position_3d(buf, 0.1913, -0.9619, -0.1951);
	vertex_normal(buf, 0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.1875);
	vertex_position_3d(buf, 0.1802, -0.9061, -0.3827);
	vertex_normal(buf, 0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.1875);

	//triangle 711

	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);
	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);
	vertex_position_3d(buf, 0.1084, -0.5449, 0.8315);
	vertex_normal(buf, 0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);

	//triangle 712

	vertex_position_3d(buf, 0.1622, -0.8155, -0.5556);
	vertex_normal(buf, 0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.3536, -0.8536, -0.3827);
	vertex_normal(buf, 0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);
	vertex_position_3d(buf, 0.1802, -0.9061, -0.3827);
	vertex_normal(buf, 0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.625);

	//triangle 713

	vertex_position_3d(buf, 0.1379, -0.6935, 0.7071);
	vertex_normal(buf, 0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, 0.2126, -0.5133, 0.8315);
	vertex_normal(buf, 0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, 0.1084, -0.5449, 0.8315);
	vertex_normal(buf, 0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);

	//triangle 714

	vertex_position_3d(buf, 0.1379, -0.6935, -0.7071);
	vertex_normal(buf, 0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.3182, -0.7682, -0.5556);
	vertex_normal(buf, 0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);
	vertex_position_3d(buf, 0.1622, -0.8155, -0.5556);
	vertex_normal(buf, 0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.0625);

	//triangle 715

	vertex_position_3d(buf, 0.3182, -0.7682, 0.5556);
	vertex_normal(buf, 0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);
	vertex_position_3d(buf, 0.1379, -0.6935, 0.7071);
	vertex_normal(buf, 0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);
	vertex_position_3d(buf, 0.1622, -0.8155, 0.5556);
	vertex_normal(buf, 0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.125);

	//triangle 716

	vertex_position_3d(buf, 0.2126, -0.5133, -0.8315);
	vertex_normal(buf, 0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, 0.1379, -0.6935, -0.7071);
	vertex_normal(buf, 0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, 0.1084, -0.5449, -0.8315);
	vertex_normal(buf, 0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);

	//triangle 717

	vertex_position_3d(buf, 0.1802, -0.9061, 0.3827);
	vertex_normal(buf, 0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5);
	vertex_position_3d(buf, 0.3182, -0.7682, 0.5556);
	vertex_normal(buf, 0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5);
	vertex_position_3d(buf, 0.1622, -0.8155, 0.5556);
	vertex_normal(buf, 0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5);

	//triangle 718

	vertex_position_3d(buf, 0.0747, -0.3753, -0.9239);
	vertex_normal(buf, 0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);
	vertex_position_3d(buf, 0.2126, -0.5133, -0.8315);
	vertex_normal(buf, 0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);
	vertex_position_3d(buf, 0.1084, -0.5449, -0.8315);
	vertex_normal(buf, 0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.3125, 0.5625);

	//triangle 719

	vertex_position_3d(buf, 0.3753, -0.9061, 0.1951);
	vertex_normal(buf, 0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);
	vertex_position_3d(buf, 0.1802, -0.9061, 0.3827);
	vertex_normal(buf, 0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);
	vertex_position_3d(buf, 0.1913, -0.9619, 0.1951);
	vertex_normal(buf, 0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);

	//triangle 720

	vertex_position_3d(buf, 0.0747, -0.1802, -0.9808);
	vertex_normal(buf, 0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.6875);
	vertex_position_3d(buf, 0.0747, -0.3753, -0.9239);
	vertex_normal(buf, 0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.6875);
	vertex_position_3d(buf, 0.0381, -0.1913, -0.9808);
	vertex_normal(buf, 0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.6875);

	//triangle 721

	vertex_position_3d(buf, 0.3827, -0.9239, -0.0);
	vertex_normal(buf, 0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, 0.1913, -0.9619, 0.1951);
	vertex_normal(buf, 0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, 0.1951, -0.9808, -0.0);
	vertex_normal(buf, 0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);

	//triangle 722

	vertex_position_3d(buf, 0.1622, -0.8155, 0.5556);
	vertex_normal(buf, 0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.0, -0.8315, 0.5556);
	vertex_normal(buf, 0.0, -0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);

	//triangle 723

	vertex_position_3d(buf, 0.1084, -0.5449, -0.8315);
	vertex_normal(buf, 0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.1875);
	vertex_position_3d(buf, 0.0, -0.7071, -0.7071);
	vertex_normal(buf, 0.0, -0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.1875);
	vertex_position_3d(buf, -0.0, -0.5556, -0.8315);
	vertex_normal(buf, 0.0, -0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.1875);

	//triangle 724

	vertex_position_3d(buf, 0.0, -0.9239, 0.3827);
	vertex_normal(buf, 0.0, -0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, 0.1622, -0.8155, 0.5556);
	vertex_normal(buf, 0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, -0.0, -0.8315, 0.5556);
	vertex_normal(buf, 0.0, -0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);

	//triangle 725

	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, 0.1084, -0.5449, -0.8315);
	vertex_normal(buf, 0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.0, -0.5556, -0.8315);
	vertex_normal(buf, 0.0, -0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);

	//triangle 726

	vertex_position_3d(buf, 0.1913, -0.9619, 0.1951);
	vertex_normal(buf, 0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, 0.0, -0.9239, 0.3827);
	vertex_normal(buf, 0.0, -0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, -0.0, -0.9808, 0.1951);
	vertex_normal(buf, 0.0, -0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);

	//triangle 727

	vertex_position_3d(buf, 0.0381, -0.1913, -0.9808);
	vertex_normal(buf, 0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, -0.0, -0.1951, -0.9808);
	vertex_normal(buf, 0.0, -0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);

	//triangle 728

	vertex_position_3d(buf, 0.1951, -0.9808, -0.0);
	vertex_normal(buf, 0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.6875);
	vertex_position_3d(buf, -0.0, -0.9808, 0.1951);
	vertex_normal(buf, 0.0, -0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.6875);
	vertex_position_3d(buf, -0.0, -1.0, -0.0);
	vertex_normal(buf, 0.0, -1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.6875);

	//triangle 729

	vertex_position_3d(buf, -0.0, -0.9808, -0.1951);
	vertex_normal(buf, 0.0, -0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, 0.1951, -0.9808, -0.0);
	vertex_normal(buf, 0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, -0.0, -1.0, -0.0);
	vertex_normal(buf, 0.0, -1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);

	//triangle 730

	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, 0.0, -0.1951, 0.9808);
	vertex_normal(buf, 0.0, -0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, -0.0, -0.3827, 0.9239);
	vertex_normal(buf, 0.0, -0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);

	//triangle 731

	vertex_position_3d(buf, 0.1802, -0.9061, -0.3827);
	vertex_normal(buf, 0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.1875);
	vertex_position_3d(buf, -0.0, -0.9808, -0.1951);
	vertex_normal(buf, 0.0, -0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.1875);
	vertex_position_3d(buf, -0.0, -0.9239, -0.3827);
	vertex_normal(buf, 0.0, -0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.1875);

	//triangle 732

	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);
	vertex_position_3d(buf, 0.0747, -0.3753, 0.9239);
	vertex_normal(buf, 0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);
	vertex_position_3d(buf, -0.0, -0.3827, 0.9239);
	vertex_normal(buf, 0.0, -0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);

	//triangle 733

	vertex_position_3d(buf, -0.0, -0.8315, -0.5556);
	vertex_normal(buf, 0.0, -0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, 0.1802, -0.9061, -0.3827);
	vertex_normal(buf, 0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);
	vertex_position_3d(buf, -0.0, -0.9239, -0.3827);
	vertex_normal(buf, 0.0, -0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.625);

	//triangle 734

	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, 0.1084, -0.5449, 0.8315);
	vertex_normal(buf, 0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);

	//triangle 735

	vertex_position_3d(buf, 0.0, -0.7071, -0.7071);
	vertex_normal(buf, 0.0, -0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);
	vertex_position_3d(buf, 0.1622, -0.8155, -0.5556);
	vertex_normal(buf, 0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);
	vertex_position_3d(buf, -0.0, -0.8315, -0.5556);
	vertex_normal(buf, 0.0, -0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);

	//triangle 736

	vertex_position_3d(buf, -0.1913, -0.9619, -0.1951);
	vertex_normal(buf, -0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, -0.0, -1.0, -0.0);
	vertex_normal(buf, 0.0, -1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);
	vertex_position_3d(buf, -0.1951, -0.9808, -0.0);
	vertex_normal(buf, -0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.125);

	//triangle 737

	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, 0.0, -0.1951, 0.9808);
	vertex_normal(buf, 0.0, -0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, -0.0381, -0.1913, 0.9808);
	vertex_normal(buf, -0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);

	//triangle 738

	vertex_position_3d(buf, -0.0, -0.9239, -0.3827);
	vertex_normal(buf, 0.0, -0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5);
	vertex_position_3d(buf, -0.1913, -0.9619, -0.1951);
	vertex_normal(buf, -0.1914, -0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5);
	vertex_position_3d(buf, -0.1802, -0.9061, -0.3827);
	vertex_normal(buf, -0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5);

	//triangle 739

	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);
	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);
	vertex_position_3d(buf, -0.1084, -0.5449, 0.8315);
	vertex_normal(buf, -0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5625);

	//triangle 740

	vertex_position_3d(buf, -0.1622, -0.8155, -0.5556);
	vertex_normal(buf, -0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);
	vertex_position_3d(buf, -0.0, -0.9239, -0.3827);
	vertex_normal(buf, 0.0, -0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);
	vertex_position_3d(buf, -0.1802, -0.9061, -0.3827);
	vertex_normal(buf, -0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);

	//triangle 741

	vertex_position_3d(buf, -0.1379, -0.6935, 0.7071);
	vertex_normal(buf, -0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);
	vertex_position_3d(buf, -0.0, -0.5556, 0.8315);
	vertex_normal(buf, 0.0, -0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);
	vertex_position_3d(buf, -0.1084, -0.5449, 0.8315);
	vertex_normal(buf, -0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);

	//triangle 742

	vertex_position_3d(buf, -0.1379, -0.6935, -0.7071);
	vertex_normal(buf, -0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2656, 1.0);
	vertex_position_3d(buf, -0.0, -0.8315, -0.5556);
	vertex_normal(buf, 0.0, -0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2656, 1.0);
	vertex_position_3d(buf, -0.1622, -0.8155, -0.5556);
	vertex_normal(buf, -0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2656, 1.0);

	//triangle 743

	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, 0.0, -0.7071, 0.7071);
	vertex_normal(buf, 0.0, -0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.1379, -0.6935, 0.7071);
	vertex_normal(buf, -0.1385, -0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);

	//triangle 744

	vertex_position_3d(buf, -0.0, -0.5556, -0.8315);
	vertex_normal(buf, 0.0, -0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2656, 0.0);
	vertex_position_3d(buf, -0.1379, -0.6935, -0.7071);
	vertex_normal(buf, -0.1385, -0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2656, 0.0);
	vertex_position_3d(buf, -0.1084, -0.5449, -0.8315);
	vertex_normal(buf, -0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2656, 0.0);

	//triangle 745

	vertex_position_3d(buf, -0.1802, -0.9061, 0.3827);
	vertex_normal(buf, -0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);
	vertex_position_3d(buf, -0.0, -0.8315, 0.5556);
	vertex_normal(buf, 0.0, -0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);
	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.0625);

	//triangle 746

	vertex_position_3d(buf, -0.0747, -0.3753, -0.9239);
	vertex_normal(buf, -0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);
	vertex_position_3d(buf, -0.0, -0.5556, -0.8315);
	vertex_normal(buf, 0.0, -0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);
	vertex_position_3d(buf, -0.1084, -0.5449, -0.8315);
	vertex_normal(buf, -0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);

	//triangle 747

	vertex_position_3d(buf, -0.0, -0.9808, 0.1951);
	vertex_normal(buf, 0.0, -0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.1802, -0.9061, 0.3827);
	vertex_normal(buf, -0.1804, -0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.1913, -0.9619, 0.1951);
	vertex_normal(buf, -0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);

	//triangle 748

	vertex_position_3d(buf, -0.0381, -0.1913, -0.9808);
	vertex_normal(buf, -0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, 0.0, -0.3827, -0.9239);
	vertex_normal(buf, 0.0, -0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, -0.0747, -0.3753, -0.9239);
	vertex_normal(buf, -0.0757, -0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);

	//triangle 749

	vertex_position_3d(buf, -0.0, -1.0, -0.0);
	vertex_normal(buf, 0.0, -1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5);
	vertex_position_3d(buf, -0.1913, -0.9619, 0.1951);
	vertex_normal(buf, -0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5);
	vertex_position_3d(buf, -0.1951, -0.9808, -0.0);
	vertex_normal(buf, -0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.5);

	//triangle 750

	vertex_position_3d(buf, -0.1084, -0.5449, -0.8315);
	vertex_normal(buf, -0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, -0.2706, -0.6533, -0.7071);
	vertex_normal(buf, -0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, -0.2126, -0.5133, -0.8315);
	vertex_normal(buf, -0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);

	//triangle 751

	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);
	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);
	vertex_position_3d(buf, -0.3182, -0.7682, 0.5556);
	vertex_normal(buf, -0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.9375);

	//triangle 752

	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.1084, -0.5449, -0.8315);
	vertex_normal(buf, -0.1092, -0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.2126, -0.5133, -0.8315);
	vertex_normal(buf, -0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);

	//triangle 753

	vertex_position_3d(buf, -0.1913, -0.9619, 0.1951);
	vertex_normal(buf, -0.1914, -0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.375);
	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.375);
	vertex_position_3d(buf, -0.3753, -0.9061, 0.1951);
	vertex_normal(buf, -0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.375);

	//triangle 754

	vertex_position_3d(buf, -0.0381, -0.1913, -0.9808);
	vertex_normal(buf, -0.0392, -0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);
	vertex_position_3d(buf, -0.0747, -0.1802, -0.9808);
	vertex_normal(buf, -0.0769, -0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.4375);

	//triangle 755

	vertex_position_3d(buf, -0.1951, -0.9808, -0.0);
	vertex_normal(buf, -0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.3753, -0.9061, 0.1951);
	vertex_normal(buf, -0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.3827, -0.9239, -0.0);
	vertex_normal(buf, -0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);

	//triangle 756

	vertex_position_3d(buf, -0.3753, -0.9061, -0.1951);
	vertex_normal(buf, -0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);
	vertex_position_3d(buf, -0.1951, -0.9808, -0.0);
	vertex_normal(buf, -0.1951, -0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);
	vertex_position_3d(buf, -0.3827, -0.9239, -0.0);
	vertex_normal(buf, -0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);

	//triangle 757

	vertex_position_3d(buf, -0.1464, -0.3536, 0.9239);
	vertex_normal(buf, -0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.8125);
	vertex_position_3d(buf, -0.0381, -0.1913, 0.9808);
	vertex_normal(buf, -0.0392, -0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.8125);
	vertex_position_3d(buf, -0.0747, -0.1802, 0.9808);
	vertex_normal(buf, -0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.8125);

	//triangle 758

	vertex_position_3d(buf, -0.1802, -0.9061, -0.3827);
	vertex_normal(buf, -0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, -0.3753, -0.9061, -0.1951);
	vertex_normal(buf, -0.3754, -0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);
	vertex_position_3d(buf, -0.3536, -0.8536, -0.3827);
	vertex_normal(buf, -0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.875);

	//triangle 759

	vertex_position_3d(buf, -0.2126, -0.5133, 0.8315);
	vertex_normal(buf, -0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);
	vertex_position_3d(buf, -0.0747, -0.3753, 0.9239);
	vertex_normal(buf, -0.0757, -0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);
	vertex_position_3d(buf, -0.1464, -0.3536, 0.9239);
	vertex_normal(buf, -0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);

	//triangle 760

	vertex_position_3d(buf, -0.3182, -0.7682, -0.5556);
	vertex_normal(buf, -0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);
	vertex_position_3d(buf, -0.1802, -0.9061, -0.3827);
	vertex_normal(buf, -0.1804, -0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);
	vertex_position_3d(buf, -0.3536, -0.8536, -0.3827);
	vertex_normal(buf, -0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);

	//triangle 761

	vertex_position_3d(buf, -0.2706, -0.6533, 0.7071);
	vertex_normal(buf, -0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.375);
	vertex_position_3d(buf, -0.1084, -0.5449, 0.8315);
	vertex_normal(buf, -0.1092, -0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.375);
	vertex_position_3d(buf, -0.2126, -0.5133, 0.8315);
	vertex_normal(buf, -0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.375);

	//triangle 762

	vertex_position_3d(buf, -0.2706, -0.6533, -0.7071);
	vertex_normal(buf, -0.2717, -0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.1622, -0.8155, -0.5556);
	vertex_normal(buf, -0.1626, -0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.3182, -0.7682, -0.5556);
	vertex_normal(buf, -0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);

	//triangle 763

	vertex_position_3d(buf, -0.1622, -0.8155, 0.5556);
	vertex_normal(buf, -0.1626, -0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, -0.2706, -0.6533, 0.7071);
	vertex_normal(buf, -0.2717, -0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);
	vertex_position_3d(buf, -0.3182, -0.7682, 0.5556);
	vertex_normal(buf, -0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.75);

	//triangle 764

	vertex_position_3d(buf, -0.3536, -0.8536, -0.3827);
	vertex_normal(buf, -0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.8125);
	vertex_position_3d(buf, -0.5449, -0.8155, -0.1951);
	vertex_normal(buf, -0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.8125);
	vertex_position_3d(buf, -0.5133, -0.7682, -0.3827);
	vertex_normal(buf, -0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.8125);

	//triangle 765

	vertex_position_3d(buf, -0.3087, -0.4619, 0.8315);
	vertex_normal(buf, -0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.1464, -0.3536, 0.9239);
	vertex_normal(buf, -0.1484, -0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.2126, -0.3182, 0.9239);
	vertex_normal(buf, -0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);

	//triangle 766

	vertex_position_3d(buf, -0.4619, -0.6913, -0.5556);
	vertex_normal(buf, -0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, -0.3536, -0.8536, -0.3827);
	vertex_normal(buf, -0.3539, -0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);
	vertex_position_3d(buf, -0.5133, -0.7682, -0.3827);
	vertex_normal(buf, -0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.25);

	//triangle 767

	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);
	vertex_position_3d(buf, -0.2126, -0.5133, 0.8315);
	vertex_normal(buf, -0.2142, -0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);
	vertex_position_3d(buf, -0.3087, -0.4619, 0.8315);
	vertex_normal(buf, -0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2812, 0.3125);

	//triangle 768

	vertex_position_3d(buf, -0.3928, -0.5879, -0.7071);
	vertex_normal(buf, -0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.3182, -0.7682, -0.5556);
	vertex_normal(buf, -0.3189, -0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.4619, -0.6913, -0.5556);
	vertex_normal(buf, -0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);

	//triangle 769

	vertex_position_3d(buf, -0.3182, -0.7682, 0.5556);
	vertex_normal(buf, -0.3189, -0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.4619, -0.6913, 0.5556);
	vertex_normal(buf, -0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);

	//triangle 770

	vertex_position_3d(buf, -0.2126, -0.5133, -0.8315);
	vertex_normal(buf, -0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5);
	vertex_position_3d(buf, -0.3928, -0.5879, -0.7071);
	vertex_normal(buf, -0.3945, -0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5);
	vertex_position_3d(buf, -0.3087, -0.4619, -0.8315);
	vertex_normal(buf, -0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5);

	//triangle 771

	vertex_position_3d(buf, -0.3536, -0.8536, 0.3827);
	vertex_normal(buf, -0.3539, -0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.4619, -0.6913, 0.5556);
	vertex_normal(buf, -0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.5133, -0.7682, 0.3827);
	vertex_normal(buf, -0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);

	//triangle 772

	vertex_position_3d(buf, -0.2126, -0.3182, -0.9239);
	vertex_normal(buf, -0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.875);
	vertex_position_3d(buf, -0.2126, -0.5133, -0.8315);
	vertex_normal(buf, -0.2142, -0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.875);
	vertex_position_3d(buf, -0.3087, -0.4619, -0.8315);
	vertex_normal(buf, -0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.875);

	//triangle 773

	vertex_position_3d(buf, -0.3753, -0.9061, 0.1951);
	vertex_normal(buf, -0.3754, -0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.5133, -0.7682, 0.3827);
	vertex_normal(buf, -0.5137, -0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.5449, -0.8155, 0.1951);
	vertex_normal(buf, -0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);

	//triangle 774

	vertex_position_3d(buf, -0.1084, -0.1622, -0.9808);
	vertex_normal(buf, -0.1116, -0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.375);
	vertex_position_3d(buf, -0.1464, -0.3536, -0.9239);
	vertex_normal(buf, -0.1484, -0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.375);
	vertex_position_3d(buf, -0.2126, -0.3182, -0.9239);
	vertex_normal(buf, -0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.375);

	//triangle 775

	vertex_position_3d(buf, -0.3827, -0.9239, -0.0);
	vertex_normal(buf, -0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.5449, -0.8155, 0.1951);
	vertex_normal(buf, -0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);
	vertex_position_3d(buf, -0.5556, -0.8315, -0.0);
	vertex_normal(buf, -0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.4375);

	//triangle 776

	vertex_position_3d(buf, -0.5449, -0.8155, -0.1951);
	vertex_normal(buf, -0.545, -0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.3827, -0.9239, -0.0);
	vertex_normal(buf, -0.3827, -0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.5556, -0.8315, -0.0);
	vertex_normal(buf, -0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);

	//triangle 777

	vertex_position_3d(buf, -0.2126, -0.3182, 0.9239);
	vertex_normal(buf, -0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);
	vertex_position_3d(buf, -0.0747, -0.1802, 0.9808);
	vertex_normal(buf, -0.0769, -0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);
	vertex_position_3d(buf, -0.1084, -0.1622, 0.9808);
	vertex_normal(buf, -0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);

	//triangle 778

	vertex_position_3d(buf, -0.2706, -0.2706, -0.9239);
	vertex_normal(buf, -0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.875);
	vertex_position_3d(buf, -0.3087, -0.4619, -0.8315);
	vertex_normal(buf, -0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.875);
	vertex_position_3d(buf, -0.3928, -0.3928, -0.8315);
	vertex_normal(buf, -0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.875);

	//triangle 779

	vertex_position_3d(buf, -0.5449, -0.8155, 0.1951);
	vertex_normal(buf, -0.545, -0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.6935, -0.6935, 0.1951);
	vertex_normal(buf, -0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);

	//triangle 780

	vertex_position_3d(buf, -0.1379, -0.1379, -0.9808);
	vertex_normal(buf, -0.1421, -0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);
	vertex_position_3d(buf, -0.2126, -0.3182, -0.9239);
	vertex_normal(buf, -0.2155, -0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);
	vertex_position_3d(buf, -0.2706, -0.2706, -0.9239);
	vertex_normal(buf, -0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);

	//triangle 781

	vertex_position_3d(buf, -0.5556, -0.8315, -0.0);
	vertex_normal(buf, -0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);
	vertex_position_3d(buf, -0.6935, -0.6935, 0.1951);
	vertex_normal(buf, -0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);
	vertex_position_3d(buf, -0.7071, -0.7071, -0.0);
	vertex_normal(buf, -0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);

	//triangle 782

	vertex_position_3d(buf, -0.6935, -0.6935, -0.1951);
	vertex_normal(buf, -0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.375);
	vertex_position_3d(buf, -0.5556, -0.8315, -0.0);
	vertex_normal(buf, -0.5556, -0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.375);
	vertex_position_3d(buf, -0.7071, -0.7071, -0.0);
	vertex_normal(buf, -0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.375);

	//triangle 783

	vertex_position_3d(buf, -0.2706, -0.2706, 0.9239);
	vertex_normal(buf, -0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);
	vertex_position_3d(buf, -0.1084, -0.1622, 0.9808);
	vertex_normal(buf, -0.1116, -0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);
	vertex_position_3d(buf, -0.1379, -0.1379, 0.9808);
	vertex_normal(buf, -0.1421, -0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);

	//triangle 784

	vertex_position_3d(buf, -0.5133, -0.7682, -0.3827);
	vertex_normal(buf, -0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.6935, -0.6935, -0.1951);
	vertex_normal(buf, -0.6937, -0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.6533, -0.6533, -0.3827);
	vertex_normal(buf, -0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);

	//triangle 785

	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);
	vertex_position_3d(buf, -0.2126, -0.3182, 0.9239);
	vertex_normal(buf, -0.2155, -0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);
	vertex_position_3d(buf, -0.2706, -0.2706, 0.9239);
	vertex_normal(buf, -0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.8125);

	//triangle 786

	vertex_position_3d(buf, -0.5879, -0.5879, -0.5556);
	vertex_normal(buf, -0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.5133, -0.7682, -0.3827);
	vertex_normal(buf, -0.5137, -0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.6533, -0.6533, -0.3827);
	vertex_normal(buf, -0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);

	//triangle 787

	vertex_position_3d(buf, -0.5, -0.5, 0.7071);
	vertex_normal(buf, -0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.3087, -0.4619, 0.8315);
	vertex_normal(buf, -0.311, -0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);

	//triangle 788

	vertex_position_3d(buf, -0.5, -0.5, -0.7071);
	vertex_normal(buf, -0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);
	vertex_position_3d(buf, -0.4619, -0.6913, -0.5556);
	vertex_normal(buf, -0.463, -0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);
	vertex_position_3d(buf, -0.5879, -0.5879, -0.5556);
	vertex_normal(buf, -0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.3125);

	//triangle 789

	vertex_position_3d(buf, -0.5879, -0.5879, 0.5556);
	vertex_normal(buf, -0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);
	vertex_position_3d(buf, -0.3928, -0.5879, 0.7071);
	vertex_normal(buf, -0.3945, -0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);
	vertex_position_3d(buf, -0.5, -0.5, 0.7071);
	vertex_normal(buf, -0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);

	//triangle 790

	vertex_position_3d(buf, -0.3087, -0.4619, -0.8315);
	vertex_normal(buf, -0.311, -0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.6875);
	vertex_position_3d(buf, -0.5, -0.5, -0.7071);
	vertex_normal(buf, -0.5021, -0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.6875);
	vertex_position_3d(buf, -0.3928, -0.3928, -0.8315);
	vertex_normal(buf, -0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.6875);

	//triangle 791

	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.4619, -0.6913, 0.5556);
	vertex_normal(buf, -0.463, -0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);
	vertex_position_3d(buf, -0.5879, -0.5879, 0.5556);
	vertex_normal(buf, -0.5893, -0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.75);

	//triangle 792

	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.1875);
	vertex_position_3d(buf, -0.3182, -0.2126, 0.9239);
	vertex_normal(buf, -0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.1875);
	vertex_position_3d(buf, -0.4619, -0.3087, 0.8315);
	vertex_normal(buf, -0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.1875);

	//triangle 793

	vertex_position_3d(buf, -0.6913, -0.4619, -0.5556);
	vertex_normal(buf, -0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.6533, -0.6533, -0.3827);
	vertex_normal(buf, -0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);
	vertex_position_3d(buf, -0.7682, -0.5133, -0.3827);
	vertex_normal(buf, -0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.25);

	//triangle 794

	vertex_position_3d(buf, -0.5879, -0.3928, 0.7071);
	vertex_normal(buf, -0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.3928, -0.3928, 0.8315);
	vertex_normal(buf, -0.3958, -0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.4619, -0.3087, 0.8315);
	vertex_normal(buf, -0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);

	//triangle 795

	vertex_position_3d(buf, -0.5879, -0.3928, -0.7071);
	vertex_normal(buf, -0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.5879, -0.5879, -0.5556);
	vertex_normal(buf, -0.5893, -0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.6913, -0.4619, -0.5556);
	vertex_normal(buf, -0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);

	//triangle 796

	vertex_position_3d(buf, -0.6913, -0.4619, 0.5556);
	vertex_normal(buf, -0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, -0.5, -0.5, 0.7071);
	vertex_normal(buf, -0.5021, -0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, -0.5879, -0.3928, 0.7071);
	vertex_normal(buf, -0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);

	//triangle 797

	vertex_position_3d(buf, -0.3928, -0.3928, -0.8315);
	vertex_normal(buf, -0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.6875);
	vertex_position_3d(buf, -0.5879, -0.3928, -0.7071);
	vertex_normal(buf, -0.5904, -0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.6875);
	vertex_position_3d(buf, -0.4619, -0.3087, -0.8315);
	vertex_normal(buf, -0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.6875);

	//triangle 798

	vertex_position_3d(buf, -0.6533, -0.6533, 0.3827);
	vertex_normal(buf, -0.6539, -0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);
	vertex_position_3d(buf, -0.6913, -0.4619, 0.5556);
	vertex_normal(buf, -0.6929, -0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);
	vertex_position_3d(buf, -0.7682, -0.5133, 0.3827);
	vertex_normal(buf, -0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);

	//triangle 799

	vertex_position_3d(buf, -0.3182, -0.2126, -0.9239);
	vertex_normal(buf, -0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, -0.3928, -0.3928, -0.8315);
	vertex_normal(buf, -0.3958, -0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, -0.4619, -0.3087, -0.8315);
	vertex_normal(buf, -0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);

	//triangle 800

	vertex_position_3d(buf, -0.6935, -0.6935, 0.1951);
	vertex_normal(buf, -0.6937, -0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.1875);
	vertex_position_3d(buf, -0.7682, -0.5133, 0.3827);
	vertex_normal(buf, -0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.1875);
	vertex_position_3d(buf, -0.8155, -0.5449, 0.1951);
	vertex_normal(buf, -0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.1875);

	//triangle 801

	vertex_position_3d(buf, -0.1622, -0.1084, -0.9808);
	vertex_normal(buf, -0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);
	vertex_position_3d(buf, -0.2706, -0.2706, -0.9239);
	vertex_normal(buf, -0.2743, -0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);
	vertex_position_3d(buf, -0.3182, -0.2126, -0.9239);
	vertex_normal(buf, -0.3225, -0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);

	//triangle 802

	vertex_position_3d(buf, -0.7071, -0.7071, -0.0);
	vertex_normal(buf, -0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, -0.8155, -0.5449, 0.1951);
	vertex_normal(buf, -0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);
	vertex_position_3d(buf, -0.8315, -0.5556, -0.0);
	vertex_normal(buf, -0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.625);

	//triangle 803

	vertex_position_3d(buf, -0.8155, -0.5449, -0.1951);
	vertex_normal(buf, -0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.7071, -0.7071, -0.0);
	vertex_normal(buf, -0.7071, -0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.8315, -0.5556, -0.0);
	vertex_normal(buf, -0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);

	//triangle 804

	vertex_position_3d(buf, -0.2706, -0.2706, 0.9239);
	vertex_normal(buf, -0.2743, -0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.1622, -0.1084, 0.9808);
	vertex_normal(buf, -0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.3182, -0.2126, 0.9239);
	vertex_normal(buf, -0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);

	//triangle 805

	vertex_position_3d(buf, -0.6533, -0.6533, -0.3827);
	vertex_normal(buf, -0.6539, -0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);
	vertex_position_3d(buf, -0.8155, -0.5449, -0.1951);
	vertex_normal(buf, -0.8157, -0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);
	vertex_position_3d(buf, -0.7682, -0.5133, -0.3827);
	vertex_normal(buf, -0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);

	//triangle 806

	vertex_position_3d(buf, -0.8155, -0.5449, 0.1951);
	vertex_normal(buf, -0.8157, -0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, -0.8536, -0.3536, 0.3827);
	vertex_normal(buf, -0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);
	vertex_position_3d(buf, -0.9061, -0.3753, 0.1951);
	vertex_normal(buf, -0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.125);

	//triangle 807

	vertex_position_3d(buf, -0.1622, -0.1084, -0.9808);
	vertex_normal(buf, -0.1671, -0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5);
	vertex_position_3d(buf, -0.3536, -0.1464, -0.9239);
	vertex_normal(buf, -0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5);
	vertex_position_3d(buf, -0.1802, -0.0747, -0.9808);
	vertex_normal(buf, -0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5);

	//triangle 808

	vertex_position_3d(buf, -0.8315, -0.5556, -0.0);
	vertex_normal(buf, -0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);
	vertex_position_3d(buf, -0.9061, -0.3753, 0.1951);
	vertex_normal(buf, -0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);
	vertex_position_3d(buf, -0.9239, -0.3827, -0.0);
	vertex_normal(buf, -0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.5625);

	//triangle 809

	vertex_position_3d(buf, -0.9061, -0.3753, -0.1951);
	vertex_normal(buf, -0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);
	vertex_position_3d(buf, -0.8315, -0.5556, -0.0);
	vertex_normal(buf, -0.8314, -0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);
	vertex_position_3d(buf, -0.9239, -0.3827, -0.0);
	vertex_normal(buf, -0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);

	//triangle 810

	vertex_position_3d(buf, -0.3536, -0.1464, 0.9239);
	vertex_normal(buf, -0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.1622, -0.1084, 0.9808);
	vertex_normal(buf, -0.1671, -0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);
	vertex_position_3d(buf, -0.1802, -0.0747, 0.9808);
	vertex_normal(buf, -0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.9375);

	//triangle 811

	vertex_position_3d(buf, -0.7682, -0.5133, -0.3827);
	vertex_normal(buf, -0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2344, 1.0);
	vertex_position_3d(buf, -0.9061, -0.3753, -0.1951);
	vertex_normal(buf, -0.9063, -0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2344, 1.0);
	vertex_position_3d(buf, -0.8536, -0.3536, -0.3827);
	vertex_normal(buf, -0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2344, 1.0);

	//triangle 812

	vertex_position_3d(buf, -0.5133, -0.2126, 0.8315);
	vertex_normal(buf, -0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);
	vertex_position_3d(buf, -0.3182, -0.2126, 0.9239);
	vertex_normal(buf, -0.3225, -0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);
	vertex_position_3d(buf, -0.3536, -0.1464, 0.9239);
	vertex_normal(buf, -0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);

	//triangle 813

	vertex_position_3d(buf, -0.7682, -0.3182, -0.5556);
	vertex_normal(buf, -0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2344, 0.0);
	vertex_position_3d(buf, -0.7682, -0.5133, -0.3827);
	vertex_normal(buf, -0.7689, -0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2344, 0.0);
	vertex_position_3d(buf, -0.8536, -0.3536, -0.3827);
	vertex_normal(buf, -0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2344, 0.0);

	//triangle 814

	vertex_position_3d(buf, -0.6533, -0.2706, 0.7071);
	vertex_normal(buf, -0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);
	vertex_position_3d(buf, -0.4619, -0.3087, 0.8315);
	vertex_normal(buf, -0.4654, -0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);
	vertex_position_3d(buf, -0.5133, -0.2126, 0.8315);
	vertex_normal(buf, -0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.25, 0.0625);

	//triangle 815

	vertex_position_3d(buf, -0.6533, -0.2706, -0.7071);
	vertex_normal(buf, -0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.6913, -0.4619, -0.5556);
	vertex_normal(buf, -0.6929, -0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.7682, -0.3182, -0.5556);
	vertex_normal(buf, -0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);

	//triangle 816

	vertex_position_3d(buf, -0.7682, -0.3182, 0.5556);
	vertex_normal(buf, -0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.1875);
	vertex_position_3d(buf, -0.5879, -0.3928, 0.7071);
	vertex_normal(buf, -0.5904, -0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.1875);
	vertex_position_3d(buf, -0.6533, -0.2706, 0.7071);
	vertex_normal(buf, -0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.1875);

	//triangle 817

	vertex_position_3d(buf, -0.4619, -0.3087, -0.8315);
	vertex_normal(buf, -0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.6533, -0.2706, -0.7071);
	vertex_normal(buf, -0.6561, -0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.5133, -0.2126, -0.8315);
	vertex_normal(buf, -0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);

	//triangle 818

	vertex_position_3d(buf, -0.7682, -0.5133, 0.3827);
	vertex_normal(buf, -0.7689, -0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.7682, -0.3182, 0.5556);
	vertex_normal(buf, -0.7699, -0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.8536, -0.3536, 0.3827);
	vertex_normal(buf, -0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);

	//triangle 819

	vertex_position_3d(buf, -0.3536, -0.1464, -0.9239);
	vertex_normal(buf, -0.3583, -0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.4619, -0.3087, -0.8315);
	vertex_normal(buf, -0.4654, -0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.5133, -0.2126, -0.8315);
	vertex_normal(buf, -0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);

	//triangle 820

	vertex_position_3d(buf, -0.8155, -0.1622, -0.5556);
	vertex_normal(buf, -0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.8536, -0.3536, -0.3827);
	vertex_normal(buf, -0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.9061, -0.1802, -0.3827);
	vertex_normal(buf, -0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);

	//triangle 821

	vertex_position_3d(buf, -0.6935, -0.1379, 0.7071);
	vertex_normal(buf, -0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);
	vertex_position_3d(buf, -0.5133, -0.2126, 0.8315);
	vertex_normal(buf, -0.5171, -0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);
	vertex_position_3d(buf, -0.5449, -0.1084, 0.8315);
	vertex_normal(buf, -0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);

	//triangle 822

	vertex_position_3d(buf, -0.6935, -0.1379, -0.7071);
	vertex_normal(buf, -0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.7682, -0.3182, -0.5556);
	vertex_normal(buf, -0.7699, -0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.8155, -0.1622, -0.5556);
	vertex_normal(buf, -0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);

	//triangle 823

	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);
	vertex_position_3d(buf, -0.6533, -0.2706, 0.7071);
	vertex_normal(buf, -0.6561, -0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);
	vertex_position_3d(buf, -0.6935, -0.1379, 0.7071);
	vertex_normal(buf, -0.6965, -0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);

	//triangle 824

	vertex_position_3d(buf, -0.5133, -0.2126, -0.8315);
	vertex_normal(buf, -0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.1875);
	vertex_position_3d(buf, -0.6935, -0.1379, -0.7071);
	vertex_normal(buf, -0.6965, -0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.1875);
	vertex_position_3d(buf, -0.5449, -0.1084, -0.8315);
	vertex_normal(buf, -0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.1875);

	//triangle 825

	vertex_position_3d(buf, -0.8536, -0.3536, 0.3827);
	vertex_normal(buf, -0.8544, -0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);
	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);
	vertex_position_3d(buf, -0.9061, -0.1802, 0.3827);
	vertex_normal(buf, -0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);

	//triangle 826

	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.5133, -0.2126, -0.8315);
	vertex_normal(buf, -0.5171, -0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);
	vertex_position_3d(buf, -0.5449, -0.1084, -0.8315);
	vertex_normal(buf, -0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.625);

	//triangle 827

	vertex_position_3d(buf, -0.9061, -0.3753, 0.1951);
	vertex_normal(buf, -0.9063, -0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.9061, -0.1802, 0.3827);
	vertex_normal(buf, -0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.9619, -0.1913, 0.1951);
	vertex_normal(buf, -0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);

	//triangle 828

	vertex_position_3d(buf, -0.1802, -0.0747, -0.9808);
	vertex_normal(buf, -0.1856, -0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.1913, -0.0381, -0.9808);
	vertex_normal(buf, -0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);

	//triangle 829

	vertex_position_3d(buf, -0.9239, -0.3827, -0.0);
	vertex_normal(buf, -0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);
	vertex_position_3d(buf, -0.9619, -0.1913, 0.1951);
	vertex_normal(buf, -0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);
	vertex_position_3d(buf, -0.9808, -0.1951, -0.0);
	vertex_normal(buf, -0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.125);

	//triangle 830

	vertex_position_3d(buf, -0.9619, -0.1913, -0.1951);
	vertex_normal(buf, -0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.9239, -0.3827, -0.0);
	vertex_normal(buf, -0.9239, -0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.9808, -0.1951, -0.0);
	vertex_normal(buf, -0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);

	//triangle 831

	vertex_position_3d(buf, -0.3753, -0.0747, 0.9239);
	vertex_normal(buf, -0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2187, 0.5);
	vertex_position_3d(buf, -0.1802, -0.0747, 0.9808);
	vertex_normal(buf, -0.1856, -0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2187, 0.5);
	vertex_position_3d(buf, -0.1913, -0.0381, 0.9808);
	vertex_normal(buf, -0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2187, 0.5);

	//triangle 832

	vertex_position_3d(buf, -0.8536, -0.3536, -0.3827);
	vertex_normal(buf, -0.8544, -0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);
	vertex_position_3d(buf, -0.9619, -0.1913, -0.1951);
	vertex_normal(buf, -0.9622, -0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);
	vertex_position_3d(buf, -0.9061, -0.1802, -0.3827);
	vertex_normal(buf, -0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.5625);

	//triangle 833

	vertex_position_3d(buf, -0.5449, -0.1084, 0.8315);
	vertex_normal(buf, -0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);
	vertex_position_3d(buf, -0.3536, -0.1464, 0.9239);
	vertex_normal(buf, -0.3583, -0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);
	vertex_position_3d(buf, -0.3753, -0.0747, 0.9239);
	vertex_normal(buf, -0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);

	//triangle 834

	vertex_position_3d(buf, -0.1913, -0.0381, -0.9808);
	vertex_normal(buf, -0.1971, -0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);
	vertex_position_3d(buf, -0.3827, -0.0, -0.9239);
	vertex_normal(buf, -0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);
	vertex_position_3d(buf, -0.1951, -0.0, -0.9808);
	vertex_normal(buf, -0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);

	//triangle 835

	vertex_position_3d(buf, -0.9808, -0.1951, -0.0);
	vertex_normal(buf, -0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2031, 1.0);
	vertex_position_3d(buf, -0.9808, 0.0, 0.1951);
	vertex_normal(buf, -0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2031, 1.0);
	vertex_position_3d(buf, -1.0, 0.0, -0.0);
	vertex_normal(buf, -1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2031, 1.0);

	//triangle 836

	vertex_position_3d(buf, -0.9808, 0.0, -0.1951);
	vertex_normal(buf, -0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);
	vertex_position_3d(buf, -0.9808, -0.1951, -0.0);
	vertex_normal(buf, -0.9808, -0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);
	vertex_position_3d(buf, -1.0, 0.0, -0.0);
	vertex_normal(buf, -1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);

	//triangle 837

	vertex_position_3d(buf, -0.3827, -0.0, 0.9239);
	vertex_normal(buf, -0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2031, 0.0);
	vertex_position_3d(buf, -0.1913, -0.0381, 0.9808);
	vertex_normal(buf, -0.1971, -0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2031, 0.0);
	vertex_position_3d(buf, -0.1951, -0.0, 0.9808);
	vertex_normal(buf, -0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2031, 0.0);

	//triangle 838

	vertex_position_3d(buf, -0.9061, -0.1802, -0.3827);
	vertex_normal(buf, -0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.9808, 0.0, -0.1951);
	vertex_normal(buf, -0.981, 0.0, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);
	vertex_position_3d(buf, -0.9239, 0.0, -0.3827);
	vertex_normal(buf, -0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.0625);

	//triangle 839

	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);
	vertex_position_3d(buf, -0.3753, -0.0747, 0.9239);
	vertex_normal(buf, -0.3804, -0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);
	vertex_position_3d(buf, -0.3827, -0.0, 0.9239);
	vertex_normal(buf, -0.3879, 0.0, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);

	//triangle 840

	vertex_position_3d(buf, -0.8315, -0.0, -0.5556);
	vertex_normal(buf, -0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.9061, -0.1802, -0.3827);
	vertex_normal(buf, -0.907, -0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.9239, 0.0, -0.3827);
	vertex_normal(buf, -0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);

	//triangle 841

	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.5449, -0.1084, 0.8315);
	vertex_normal(buf, -0.549, -0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);

	//triangle 842

	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2187, 0.5);
	vertex_position_3d(buf, -0.8155, -0.1622, -0.5556);
	vertex_normal(buf, -0.8173, -0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2187, 0.5);
	vertex_position_3d(buf, -0.8315, -0.0, -0.5556);
	vertex_normal(buf, -0.8333, 0.0, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2187, 0.5);

	//triangle 843

	vertex_position_3d(buf, -0.8155, -0.1622, 0.5556);
	vertex_normal(buf, -0.8173, -0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);
	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);
	vertex_position_3d(buf, -0.8315, -0.0, 0.5556);
	vertex_normal(buf, -0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);

	//triangle 844

	vertex_position_3d(buf, -0.5449, -0.1084, -0.8315);
	vertex_normal(buf, -0.549, -0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);

	//triangle 845

	vertex_position_3d(buf, -0.9061, -0.1802, 0.3827);
	vertex_normal(buf, -0.907, -0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);
	vertex_position_3d(buf, -0.8315, -0.0, 0.5556);
	vertex_normal(buf, -0.8333, 0.0, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);
	vertex_position_3d(buf, -0.9239, -0.0, 0.3827);
	vertex_normal(buf, -0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.9375);

	//triangle 846

	vertex_position_3d(buf, -0.3753, -0.0747, -0.9239);
	vertex_normal(buf, -0.3804, -0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.375);
	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.375);
	vertex_position_3d(buf, -0.3827, -0.0, -0.9239);
	vertex_normal(buf, -0.3879, 0.0, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.375);

	//triangle 847

	vertex_position_3d(buf, -0.9619, -0.1913, 0.1951);
	vertex_normal(buf, -0.9622, -0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.9239, -0.0, 0.3827);
	vertex_normal(buf, -0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);
	vertex_position_3d(buf, -0.9808, 0.0, 0.1951);
	vertex_normal(buf, -0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.4375);

	//triangle 848

	vertex_position_3d(buf, -0.6935, 0.1379, 0.7071);
	vertex_normal(buf, -0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.5449, 0.1084, 0.8315);
	vertex_normal(buf, -0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);

	//triangle 849

	vertex_position_3d(buf, -0.7071, -0.0, -0.7071);
	vertex_normal(buf, -0.7101, 0.0, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);
	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);
	vertex_position_3d(buf, -0.6935, 0.1379, -0.7071);
	vertex_normal(buf, -0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);

	//triangle 850

	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.8125);
	vertex_position_3d(buf, -0.7071, -0.0, 0.7071);
	vertex_normal(buf, -0.7101, 0.0, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.8125);
	vertex_position_3d(buf, -0.6935, 0.1379, 0.7071);
	vertex_normal(buf, -0.6965, 0.1385, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.8125);

	//triangle 851

	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.6935, 0.1379, -0.7071);
	vertex_normal(buf, -0.6965, 0.1385, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);
	vertex_position_3d(buf, -0.5449, 0.1084, -0.8315);
	vertex_normal(buf, -0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.875);

	//triangle 852

	vertex_position_3d(buf, -0.9239, -0.0, 0.3827);
	vertex_normal(buf, -0.9247, 0.0, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);
	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);
	vertex_position_3d(buf, -0.9061, 0.1802, 0.3827);
	vertex_normal(buf, -0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);

	//triangle 853

	vertex_position_3d(buf, -0.3753, 0.0747, -0.9239);
	vertex_normal(buf, -0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);
	vertex_position_3d(buf, -0.5556, 0.0, -0.8315);
	vertex_normal(buf, -0.5598, 0.0, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);
	vertex_position_3d(buf, -0.5449, 0.1084, -0.8315);
	vertex_normal(buf, -0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);

	//triangle 854

	vertex_position_3d(buf, -0.9808, 0.0, 0.1951);
	vertex_normal(buf, -0.981, 0.0, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.375);
	vertex_position_3d(buf, -0.9061, 0.1802, 0.3827);
	vertex_normal(buf, -0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.375);
	vertex_position_3d(buf, -0.9619, 0.1913, 0.1951);
	vertex_normal(buf, -0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.375);

	//triangle 855

	vertex_position_3d(buf, -0.1951, -0.0, -0.9808);
	vertex_normal(buf, -0.201, 0.0, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.3753, 0.0747, -0.9239);
	vertex_normal(buf, -0.3804, 0.0757, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.1913, 0.0381, -0.9808);
	vertex_normal(buf, -0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);

	//triangle 856

	vertex_position_3d(buf, -1.0, 0.0, -0.0);
	vertex_normal(buf, -1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);
	vertex_position_3d(buf, -0.9619, 0.1913, 0.1951);
	vertex_normal(buf, -0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);
	vertex_position_3d(buf, -0.9808, 0.1951, -0.0);
	vertex_normal(buf, -0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);

	//triangle 857

	vertex_position_3d(buf, -0.9619, 0.1913, -0.1951);
	vertex_normal(buf, -0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.8125);
	vertex_position_3d(buf, -1.0, 0.0, -0.0);
	vertex_normal(buf, -1.0, 0.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.8125);
	vertex_position_3d(buf, -0.9808, 0.1951, -0.0);
	vertex_normal(buf, -0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.8125);

	//triangle 858

	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.1951, -0.0, 0.9808);
	vertex_normal(buf, -0.201, 0.0, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.1913, 0.0381, 0.9808);
	vertex_normal(buf, -0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);

	//triangle 859

	vertex_position_3d(buf, -0.9239, 0.0, -0.3827);
	vertex_normal(buf, -0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.9619, 0.1913, -0.1951);
	vertex_normal(buf, -0.9622, 0.1914, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);
	vertex_position_3d(buf, -0.9061, 0.1802, -0.3827);
	vertex_normal(buf, -0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.25);

	//triangle 860

	vertex_position_3d(buf, -0.5556, 0.0, 0.8315);
	vertex_normal(buf, -0.5598, 0.0, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);
	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);
	vertex_position_3d(buf, -0.5449, 0.1084, 0.8315);
	vertex_normal(buf, -0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.3125);

	//triangle 861

	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);
	vertex_position_3d(buf, -0.9239, 0.0, -0.3827);
	vertex_normal(buf, -0.9247, 0.0, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);
	vertex_position_3d(buf, -0.9061, 0.1802, -0.3827);
	vertex_normal(buf, -0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.6875);

	//triangle 862

	vertex_position_3d(buf, -0.9808, 0.1951, -0.0);
	vertex_normal(buf, -0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);
	vertex_position_3d(buf, -0.9061, 0.3753, 0.1951);
	vertex_normal(buf, -0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);
	vertex_position_3d(buf, -0.9239, 0.3827, -0.0);
	vertex_normal(buf, -0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.2188, 0.75);

	//triangle 863

	vertex_position_3d(buf, -0.9061, 0.3753, -0.1951);
	vertex_normal(buf, -0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.9808, 0.1951, -0.0);
	vertex_normal(buf, -0.9808, 0.1951, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.9239, 0.3827, -0.0);
	vertex_normal(buf, -0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);

	//triangle 864

	vertex_position_3d(buf, -0.3536, 0.1464, 0.9239);
	vertex_normal(buf, -0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.375);
	vertex_position_3d(buf, -0.1913, 0.0381, 0.9808);
	vertex_normal(buf, -0.1971, 0.0392, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.375);
	vertex_position_3d(buf, -0.1802, 0.0747, 0.9808);
	vertex_normal(buf, -0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.375);

	//triangle 865

	vertex_position_3d(buf, -0.9061, 0.1802, -0.3827);
	vertex_normal(buf, -0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.9061, 0.3753, -0.1951);
	vertex_normal(buf, -0.9063, 0.3754, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.8536, 0.3536, -0.3827);
	vertex_normal(buf, -0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);

	//triangle 866

	vertex_position_3d(buf, -0.5133, 0.2126, 0.8315);
	vertex_normal(buf, -0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.3753, 0.0747, 0.9239);
	vertex_normal(buf, -0.3804, 0.0757, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.3536, 0.1464, 0.9239);
	vertex_normal(buf, -0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);

	//triangle 867

	vertex_position_3d(buf, -0.7682, 0.3182, -0.5556);
	vertex_normal(buf, -0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);
	vertex_position_3d(buf, -0.9061, 0.1802, -0.3827);
	vertex_normal(buf, -0.907, 0.1804, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);
	vertex_position_3d(buf, -0.8536, 0.3536, -0.3827);
	vertex_normal(buf, -0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);

	//triangle 868

	vertex_position_3d(buf, -0.6533, 0.2706, 0.7071);
	vertex_normal(buf, -0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);
	vertex_position_3d(buf, -0.5449, 0.1084, 0.8315);
	vertex_normal(buf, -0.549, 0.1092, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);
	vertex_position_3d(buf, -0.5133, 0.2126, 0.8315);
	vertex_normal(buf, -0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);

	//triangle 869

	vertex_position_3d(buf, -0.6533, 0.2706, -0.7071);
	vertex_normal(buf, -0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);
	vertex_position_3d(buf, -0.8155, 0.1622, -0.5556);
	vertex_normal(buf, -0.8173, 0.1626, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);
	vertex_position_3d(buf, -0.7682, 0.3182, -0.5556);
	vertex_normal(buf, -0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);

	//triangle 870

	vertex_position_3d(buf, -0.8155, 0.1622, 0.5556);
	vertex_normal(buf, -0.8173, 0.1626, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);
	vertex_position_3d(buf, -0.6533, 0.2706, 0.7071);
	vertex_normal(buf, -0.6561, 0.2717, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);
	vertex_position_3d(buf, -0.7682, 0.3182, 0.5556);
	vertex_normal(buf, -0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);

	//triangle 871

	vertex_position_3d(buf, -0.5449, 0.1084, -0.8315);
	vertex_normal(buf, -0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);
	vertex_position_3d(buf, -0.6533, 0.2706, -0.7071);
	vertex_normal(buf, -0.6561, 0.2717, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);
	vertex_position_3d(buf, -0.5133, 0.2126, -0.8315);
	vertex_normal(buf, -0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);

	//triangle 872

	vertex_position_3d(buf, -0.9061, 0.1802, 0.3827);
	vertex_normal(buf, -0.907, 0.1804, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.375);
	vertex_position_3d(buf, -0.7682, 0.3182, 0.5556);
	vertex_normal(buf, -0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.375);
	vertex_position_3d(buf, -0.8536, 0.3536, 0.3827);
	vertex_normal(buf, -0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.375);

	//triangle 873

	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, -0.5449, 0.1084, -0.8315);
	vertex_normal(buf, -0.549, 0.1092, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, -0.5133, 0.2126, -0.8315);
	vertex_normal(buf, -0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);

	//triangle 874

	vertex_position_3d(buf, -0.9619, 0.1913, 0.1951);
	vertex_normal(buf, -0.9622, 0.1914, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.8536, 0.3536, 0.3827);
	vertex_normal(buf, -0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.9061, 0.3753, 0.1951);
	vertex_normal(buf, -0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);

	//triangle 875

	vertex_position_3d(buf, -0.1913, 0.0381, -0.9808);
	vertex_normal(buf, -0.1971, 0.0392, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);
	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);
	vertex_position_3d(buf, -0.1802, 0.0747, -0.9808);
	vertex_normal(buf, -0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.8125);

	//triangle 876

	vertex_position_3d(buf, -0.5879, 0.3928, -0.7071);
	vertex_normal(buf, -0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, -0.7682, 0.3182, -0.5556);
	vertex_normal(buf, -0.7699, 0.3189, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, -0.6913, 0.4619, -0.5556);
	vertex_normal(buf, -0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);

	//triangle 877

	vertex_position_3d(buf, -0.7682, 0.3182, 0.5556);
	vertex_normal(buf, -0.7699, 0.3189, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.6913, 0.4619, 0.5556);
	vertex_normal(buf, -0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);

	//triangle 878

	vertex_position_3d(buf, -0.5133, 0.2126, -0.8315);
	vertex_normal(buf, -0.5171, 0.2142, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);
	vertex_position_3d(buf, -0.5879, 0.3928, -0.7071);
	vertex_normal(buf, -0.5904, 0.3945, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);
	vertex_position_3d(buf, -0.4619, 0.3087, -0.8315);
	vertex_normal(buf, -0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.3125);

	//triangle 879

	vertex_position_3d(buf, -0.8536, 0.3536, 0.3827);
	vertex_normal(buf, -0.8544, 0.3539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.6875);
	vertex_position_3d(buf, -0.6913, 0.4619, 0.5556);
	vertex_normal(buf, -0.6929, 0.463, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.6875);
	vertex_position_3d(buf, -0.7682, 0.5133, 0.3827);
	vertex_normal(buf, -0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.6875);

	//triangle 880

	vertex_position_3d(buf, -0.3536, 0.1464, -0.9239);
	vertex_normal(buf, -0.3583, 0.1484, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.4619, 0.3087, -0.8315);
	vertex_normal(buf, -0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);
	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.75);

	//triangle 881

	vertex_position_3d(buf, -0.9061, 0.3753, 0.1951);
	vertex_normal(buf, -0.9063, 0.3754, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, -0.7682, 0.5133, 0.3827);
	vertex_normal(buf, -0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, -0.8155, 0.5449, 0.1951);
	vertex_normal(buf, -0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);

	//triangle 882

	vertex_position_3d(buf, -0.1802, 0.0747, -0.9808);
	vertex_normal(buf, -0.1856, 0.0769, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.1875);
	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.1875);
	vertex_position_3d(buf, -0.1622, 0.1084, -0.9808);
	vertex_normal(buf, -0.1671, 0.1116, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.1875);

	//triangle 883

	vertex_position_3d(buf, -0.9239, 0.3827, -0.0);
	vertex_normal(buf, -0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.8155, 0.5449, 0.1951);
	vertex_normal(buf, -0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);
	vertex_position_3d(buf, -0.8315, 0.5556, -0.0);
	vertex_normal(buf, -0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.25);

	//triangle 884

	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, -0.9239, 0.3827, -0.0);
	vertex_normal(buf, -0.9239, 0.3827, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, -0.8315, 0.5556, -0.0);
	vertex_normal(buf, -0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);

	//triangle 885

	vertex_position_3d(buf, -0.3182, 0.2126, 0.9239);
	vertex_normal(buf, -0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.1802, 0.0747, 0.9808);
	vertex_normal(buf, -0.1856, 0.0769, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.1622, 0.1084, 0.9808);
	vertex_normal(buf, -0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);

	//triangle 886

	vertex_position_3d(buf, -0.8536, 0.3536, -0.3827);
	vertex_normal(buf, -0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.6875);
	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.6875);
	vertex_position_3d(buf, -0.7682, 0.5133, -0.3827);
	vertex_normal(buf, -0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.6875);

	//triangle 887

	vertex_position_3d(buf, -0.4619, 0.3087, 0.8315);
	vertex_normal(buf, -0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);
	vertex_position_3d(buf, -0.3536, 0.1464, 0.9239);
	vertex_normal(buf, -0.3583, 0.1484, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);
	vertex_position_3d(buf, -0.3182, 0.2126, 0.9239);
	vertex_normal(buf, -0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);

	//triangle 888

	vertex_position_3d(buf, -0.6913, 0.4619, -0.5556);
	vertex_normal(buf, -0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);
	vertex_position_3d(buf, -0.8536, 0.3536, -0.3827);
	vertex_normal(buf, -0.8544, 0.3539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);
	vertex_position_3d(buf, -0.7682, 0.5133, -0.3827);
	vertex_normal(buf, -0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);

	//triangle 889

	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.5133, 0.2126, 0.8315);
	vertex_normal(buf, -0.5171, 0.2142, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.4619, 0.3087, 0.8315);
	vertex_normal(buf, -0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);

	//triangle 890

	vertex_position_3d(buf, -0.6935, 0.6935, -0.1951);
	vertex_normal(buf, -0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.1875);
	vertex_position_3d(buf, -0.8315, 0.5556, -0.0);
	vertex_normal(buf, -0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.1875);
	vertex_position_3d(buf, -0.7071, 0.7071, -0.0);
	vertex_normal(buf, -0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.1875);

	//triangle 891

	vertex_position_3d(buf, -0.2706, 0.2706, 0.9239);
	vertex_normal(buf, -0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);
	vertex_position_3d(buf, -0.1622, 0.1084, 0.9808);
	vertex_normal(buf, -0.1671, 0.1116, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);
	vertex_position_3d(buf, -0.1379, 0.1379, 0.9808);
	vertex_normal(buf, -0.1421, 0.1421, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);

	//triangle 892

	vertex_position_3d(buf, -0.6533, 0.6533, -0.3827);
	vertex_normal(buf, -0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.8155, 0.5449, -0.1951);
	vertex_normal(buf, -0.8157, 0.545, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);
	vertex_position_3d(buf, -0.6935, 0.6935, -0.1951);
	vertex_normal(buf, -0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.625);

	//triangle 893

	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);
	vertex_position_3d(buf, -0.3182, 0.2126, 0.9239);
	vertex_normal(buf, -0.3225, 0.2155, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);
	vertex_position_3d(buf, -0.2706, 0.2706, 0.9239);
	vertex_normal(buf, -0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);

	//triangle 894

	vertex_position_3d(buf, -0.5879, 0.5879, -0.5556);
	vertex_normal(buf, -0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.7682, 0.5133, -0.3827);
	vertex_normal(buf, -0.7689, 0.5137, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.6533, 0.6533, -0.3827);
	vertex_normal(buf, -0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);

	//triangle 895

	vertex_position_3d(buf, -0.5, 0.5, 0.7071);
	vertex_normal(buf, -0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);
	vertex_position_3d(buf, -0.4619, 0.3087, 0.8315);
	vertex_normal(buf, -0.4654, 0.311, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);
	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);

	//triangle 896

	vertex_position_3d(buf, -0.5, 0.5, -0.7071);
	vertex_normal(buf, -0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.6913, 0.4619, -0.5556);
	vertex_normal(buf, -0.6929, 0.463, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);
	vertex_position_3d(buf, -0.5879, 0.5879, -0.5556);
	vertex_normal(buf, -0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.125);

	//triangle 897

	vertex_position_3d(buf, -0.5879, 0.5879, 0.5556);
	vertex_normal(buf, -0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5);
	vertex_position_3d(buf, -0.5879, 0.3928, 0.7071);
	vertex_normal(buf, -0.5904, 0.3945, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5);
	vertex_position_3d(buf, -0.5, 0.5, 0.7071);
	vertex_normal(buf, -0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5);

	//triangle 898

	vertex_position_3d(buf, -0.4619, 0.3087, -0.8315);
	vertex_normal(buf, -0.4654, 0.311, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);
	vertex_position_3d(buf, -0.5, 0.5, -0.7071);
	vertex_normal(buf, -0.5021, 0.5021, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);
	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5625);

	//triangle 899

	vertex_position_3d(buf, -0.7682, 0.5133, 0.3827);
	vertex_normal(buf, -0.7689, 0.5137, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);
	vertex_position_3d(buf, -0.5879, 0.5879, 0.5556);
	vertex_normal(buf, -0.5893, 0.5893, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);
	vertex_position_3d(buf, -0.6533, 0.6533, 0.3827);
	vertex_normal(buf, -0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);

	//triangle 900

	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);
	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);
	vertex_position_3d(buf, -0.2706, 0.2706, -0.9239);
	vertex_normal(buf, -0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);

	//triangle 901

	vertex_position_3d(buf, -0.8155, 0.5449, 0.1951);
	vertex_normal(buf, -0.8157, 0.545, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1719, 1.0);
	vertex_position_3d(buf, -0.6533, 0.6533, 0.3827);
	vertex_normal(buf, -0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1719, 1.0);
	vertex_position_3d(buf, -0.6935, 0.6935, 0.1951);
	vertex_normal(buf, -0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1719, 1.0);

	//triangle 902

	vertex_position_3d(buf, -0.1379, 0.1379, -0.9808);
	vertex_normal(buf, -0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);
	vertex_position_3d(buf, -0.3182, 0.2126, -0.9239);
	vertex_normal(buf, -0.3225, 0.2155, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);
	vertex_position_3d(buf, -0.2706, 0.2706, -0.9239);
	vertex_normal(buf, -0.2743, 0.2743, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);

	//triangle 903

	vertex_position_3d(buf, -0.8315, 0.5556, -0.0);
	vertex_normal(buf, -0.8314, 0.5556, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1719, 0.0);
	vertex_position_3d(buf, -0.6935, 0.6935, 0.1951);
	vertex_normal(buf, -0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1719, 0.0);
	vertex_position_3d(buf, -0.7071, 0.7071, -0.0);
	vertex_normal(buf, -0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1719, 0.0);

	//triangle 904

	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);
	vertex_position_3d(buf, -0.3928, 0.5879, -0.7071);
	vertex_normal(buf, -0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);
	vertex_position_3d(buf, -0.3087, 0.4619, -0.8315);
	vertex_normal(buf, -0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.0625);

	//triangle 905

	vertex_position_3d(buf, -0.6533, 0.6533, 0.3827);
	vertex_normal(buf, -0.6539, 0.6539, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.5133, 0.7682, 0.3827);
	vertex_normal(buf, -0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);

	//triangle 906

	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.3928, 0.3928, -0.8315);
	vertex_normal(buf, -0.3958, 0.3958, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.3087, 0.4619, -0.8315);
	vertex_normal(buf, -0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);

	//triangle 907

	vertex_position_3d(buf, -0.6935, 0.6935, 0.1951);
	vertex_normal(buf, -0.6937, 0.6937, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.5133, 0.7682, 0.3827);
	vertex_normal(buf, -0.5137, 0.7689, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);
	vertex_position_3d(buf, -0.5449, 0.8155, 0.1951);
	vertex_normal(buf, -0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.4375);

	//triangle 908

	vertex_position_3d(buf, -0.1379, 0.1379, -0.9808);
	vertex_normal(buf, -0.1421, 0.1421, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5);
	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5);
	vertex_position_3d(buf, -0.1084, 0.1622, -0.9808);
	vertex_normal(buf, -0.1116, 0.1671, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.5);

	//triangle 909

	vertex_position_3d(buf, -0.7071, 0.7071, -0.0);
	vertex_normal(buf, -0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);
	vertex_position_3d(buf, -0.5449, 0.8155, 0.1951);
	vertex_normal(buf, -0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);
	vertex_position_3d(buf, -0.5556, 0.8315, -0.0);
	vertex_normal(buf, -0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);

	//triangle 910

	vertex_position_3d(buf, -0.5449, 0.8155, -0.1951);
	vertex_normal(buf, -0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);
	vertex_position_3d(buf, -0.7071, 0.7071, -0.0);
	vertex_normal(buf, -0.7071, 0.7071, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);
	vertex_position_3d(buf, -0.5556, 0.8315, -0.0);
	vertex_normal(buf, -0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.875);

	//triangle 911

	vertex_position_3d(buf, -0.2706, 0.2706, 0.9239);
	vertex_normal(buf, -0.2743, 0.2743, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);
	vertex_position_3d(buf, -0.1084, 0.1622, 0.9808);
	vertex_normal(buf, -0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);
	vertex_position_3d(buf, -0.2126, 0.3182, 0.9239);
	vertex_normal(buf, -0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1875, 0.9375);

	//triangle 912

	vertex_position_3d(buf, -0.5133, 0.7682, -0.3827);
	vertex_normal(buf, -0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.125);
	vertex_position_3d(buf, -0.6935, 0.6935, -0.1951);
	vertex_normal(buf, -0.6937, 0.6937, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.125);
	vertex_position_3d(buf, -0.5449, 0.8155, -0.1951);
	vertex_normal(buf, -0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.125);

	//triangle 913

	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);
	vertex_position_3d(buf, -0.2126, 0.3182, 0.9239);
	vertex_normal(buf, -0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);
	vertex_position_3d(buf, -0.3087, 0.4619, 0.8315);
	vertex_normal(buf, -0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);

	//triangle 914

	vertex_position_3d(buf, -0.4619, 0.6913, -0.5556);
	vertex_normal(buf, -0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.1875);
	vertex_position_3d(buf, -0.6533, 0.6533, -0.3827);
	vertex_normal(buf, -0.6539, 0.6539, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.1875);
	vertex_position_3d(buf, -0.5133, 0.7682, -0.3827);
	vertex_normal(buf, -0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.1875);

	//triangle 915

	vertex_position_3d(buf, -0.3928, 0.5879, 0.7071);
	vertex_normal(buf, -0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);
	vertex_position_3d(buf, -0.3928, 0.3928, 0.8315);
	vertex_normal(buf, -0.3958, 0.3958, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);
	vertex_position_3d(buf, -0.3087, 0.4619, 0.8315);
	vertex_normal(buf, -0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);

	//triangle 916

	vertex_position_3d(buf, -0.3928, 0.5879, -0.7071);
	vertex_normal(buf, -0.3945, 0.5904, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);
	vertex_position_3d(buf, -0.5879, 0.5879, -0.5556);
	vertex_normal(buf, -0.5893, 0.5893, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);
	vertex_position_3d(buf, -0.4619, 0.6913, -0.5556);
	vertex_normal(buf, -0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);

	//triangle 917

	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.625);
	vertex_position_3d(buf, -0.5, 0.5, 0.7071);
	vertex_normal(buf, -0.5021, 0.5021, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.625);
	vertex_position_3d(buf, -0.3928, 0.5879, 0.7071);
	vertex_normal(buf, -0.3945, 0.5904, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.625);

	//triangle 918

	vertex_position_3d(buf, -0.1464, 0.3536, 0.9239);
	vertex_normal(buf, -0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.0625);
	vertex_position_3d(buf, -0.1084, 0.1622, 0.9808);
	vertex_normal(buf, -0.1116, 0.1671, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.0625);
	vertex_position_3d(buf, -0.0747, 0.1802, 0.9808);
	vertex_normal(buf, -0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.0625);

	//triangle 919

	vertex_position_3d(buf, -0.3536, 0.8536, -0.3827);
	vertex_normal(buf, -0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.5449, 0.8155, -0.1951);
	vertex_normal(buf, -0.545, 0.8157, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.3753, 0.9061, -0.1951);
	vertex_normal(buf, -0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);

	//triangle 920

	vertex_position_3d(buf, -0.2126, 0.5133, 0.8315);
	vertex_normal(buf, -0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);
	vertex_position_3d(buf, -0.2126, 0.3182, 0.9239);
	vertex_normal(buf, -0.2155, 0.3225, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);
	vertex_position_3d(buf, -0.1464, 0.3536, 0.9239);
	vertex_normal(buf, -0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.125);

	//triangle 921

	vertex_position_3d(buf, -0.3182, 0.7682, -0.5556);
	vertex_normal(buf, -0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5);
	vertex_position_3d(buf, -0.5133, 0.7682, -0.3827);
	vertex_normal(buf, -0.5137, 0.7689, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5);
	vertex_position_3d(buf, -0.3536, 0.8536, -0.3827);
	vertex_normal(buf, -0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5);

	//triangle 922

	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);
	vertex_position_3d(buf, -0.3087, 0.4619, 0.8315);
	vertex_normal(buf, -0.311, 0.4654, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);
	vertex_position_3d(buf, -0.2126, 0.5133, 0.8315);
	vertex_normal(buf, -0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5625);

	//triangle 923

	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.5625);
	vertex_position_3d(buf, -0.4619, 0.6913, -0.5556);
	vertex_normal(buf, -0.463, 0.6929, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.5625);
	vertex_position_3d(buf, -0.3182, 0.7682, -0.5556);
	vertex_normal(buf, -0.3189, 0.7699, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.5625);

	//triangle 924

	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);
	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);
	vertex_position_3d(buf, -0.3182, 0.7682, 0.5556);
	vertex_normal(buf, -0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);

	//triangle 925

	vertex_position_3d(buf, -0.3087, 0.4619, -0.8315);
	vertex_normal(buf, -0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1406, 1.0);
	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1406, 1.0);
	vertex_position_3d(buf, -0.2126, 0.5133, -0.8315);
	vertex_normal(buf, -0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1406, 1.0);

	//triangle 926

	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.9375);
	vertex_position_3d(buf, -0.4619, 0.6913, 0.5556);
	vertex_normal(buf, -0.463, 0.6929, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.9375);
	vertex_position_3d(buf, -0.3182, 0.7682, 0.5556);
	vertex_normal(buf, -0.3189, 0.7699, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.9375);

	//triangle 927

	vertex_position_3d(buf, -0.1464, 0.3536, -0.9239);
	vertex_normal(buf, -0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1406, 0.0);
	vertex_position_3d(buf, -0.3087, 0.4619, -0.8315);
	vertex_normal(buf, -0.311, 0.4654, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1406, 0.0);
	vertex_position_3d(buf, -0.2126, 0.5133, -0.8315);
	vertex_normal(buf, -0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1406, 0.0);

	//triangle 928

	vertex_position_3d(buf, -0.5449, 0.8155, 0.1951);
	vertex_normal(buf, -0.545, 0.8157, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);
	vertex_position_3d(buf, -0.3753, 0.9061, 0.1951);
	vertex_normal(buf, -0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.0625);

	//triangle 929

	vertex_position_3d(buf, -0.0747, 0.1802, -0.9808);
	vertex_normal(buf, -0.0769, 0.1856, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.0625);
	vertex_position_3d(buf, -0.2126, 0.3182, -0.9239);
	vertex_normal(buf, -0.2155, 0.3225, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.0625);
	vertex_position_3d(buf, -0.1464, 0.3536, -0.9239);
	vertex_normal(buf, -0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.0625);

	//triangle 930

	vertex_position_3d(buf, -0.5556, 0.8315, -0.0);
	vertex_normal(buf, -0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.4375);
	vertex_position_3d(buf, -0.3753, 0.9061, 0.1951);
	vertex_normal(buf, -0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.4375);
	vertex_position_3d(buf, -0.3827, 0.9239, -0.0);
	vertex_normal(buf, -0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.4375);

	//triangle 931

	vertex_position_3d(buf, -0.3753, 0.9061, -0.1951);
	vertex_normal(buf, -0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.5556, 0.8315, -0.0);
	vertex_normal(buf, -0.5556, 0.8314, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.3827, 0.9239, -0.0);
	vertex_normal(buf, -0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);

	//triangle 932

	vertex_position_3d(buf, -0.3536, 0.8536, 0.3827);
	vertex_normal(buf, -0.3539, 0.8544, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5);
	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5);
	vertex_position_3d(buf, -0.1802, 0.9061, 0.3827);
	vertex_normal(buf, -0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.5);

	//triangle 933

	vertex_position_3d(buf, -0.0747, 0.3753, -0.9239);
	vertex_normal(buf, -0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.875);
	vertex_position_3d(buf, -0.2126, 0.5133, -0.8315);
	vertex_normal(buf, -0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.875);
	vertex_position_3d(buf, -0.1084, 0.5449, -0.8315);
	vertex_normal(buf, -0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.875);

	//triangle 934

	vertex_position_3d(buf, -0.3753, 0.9061, 0.1951);
	vertex_normal(buf, -0.3754, 0.9063, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);
	vertex_position_3d(buf, -0.1802, 0.9061, 0.3827);
	vertex_normal(buf, -0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);
	vertex_position_3d(buf, -0.1913, 0.9619, 0.1951);
	vertex_normal(buf, -0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);

	//triangle 935

	vertex_position_3d(buf, -0.0381, 0.1913, -0.9808);
	vertex_normal(buf, -0.0392, 0.1971, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);
	vertex_position_3d(buf, -0.1464, 0.3536, -0.9239);
	vertex_normal(buf, -0.1484, 0.3583, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);
	vertex_position_3d(buf, -0.0747, 0.3753, -0.9239);
	vertex_normal(buf, -0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.9375);

	//triangle 936

	vertex_position_3d(buf, -0.3827, 0.9239, -0.0);
	vertex_normal(buf, -0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.375);
	vertex_position_3d(buf, -0.1913, 0.9619, 0.1951);
	vertex_normal(buf, -0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.375);
	vertex_position_3d(buf, -0.1951, 0.9808, -0.0);
	vertex_normal(buf, -0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.375);

	//triangle 937

	vertex_position_3d(buf, -0.1913, 0.9619, -0.1951);
	vertex_normal(buf, -0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.3827, 0.9239, -0.0);
	vertex_normal(buf, -0.3827, 0.9239, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);
	vertex_position_3d(buf, -0.1951, 0.9808, -0.0);
	vertex_normal(buf, -0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.4375);

	//triangle 938

	vertex_position_3d(buf, -0.0747, 0.3753, 0.9239);
	vertex_normal(buf, -0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.4375);
	vertex_position_3d(buf, -0.0747, 0.1802, 0.9808);
	vertex_normal(buf, -0.0769, 0.1856, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.4375);
	vertex_position_3d(buf, -0.0381, 0.1913, 0.9808);
	vertex_normal(buf, -0.0392, 0.1971, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.4375);

	//triangle 939

	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.8125);
	vertex_position_3d(buf, -0.3753, 0.9061, -0.1951);
	vertex_normal(buf, -0.3754, 0.9063, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.8125);
	vertex_position_3d(buf, -0.1913, 0.9619, -0.1951);
	vertex_normal(buf, -0.1914, 0.9622, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.8125);

	//triangle 940

	vertex_position_3d(buf, -0.1084, 0.5449, 0.8315);
	vertex_normal(buf, -0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);
	vertex_position_3d(buf, -0.1464, 0.3536, 0.9239);
	vertex_normal(buf, -0.1484, 0.3583, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);
	vertex_position_3d(buf, -0.0747, 0.3753, 0.9239);
	vertex_normal(buf, -0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);

	//triangle 941

	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);
	vertex_position_3d(buf, -0.3536, 0.8536, -0.3827);
	vertex_normal(buf, -0.3539, 0.8544, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);
	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.875);

	//triangle 942

	vertex_position_3d(buf, -0.1379, 0.6935, 0.7071);
	vertex_normal(buf, -0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.3125);
	vertex_position_3d(buf, -0.2126, 0.5133, 0.8315);
	vertex_normal(buf, -0.2142, 0.5171, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.3125);
	vertex_position_3d(buf, -0.1084, 0.5449, 0.8315);
	vertex_normal(buf, -0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.3125);

	//triangle 943

	vertex_position_3d(buf, -0.2706, 0.6533, -0.7071);
	vertex_normal(buf, -0.2717, 0.6561, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);
	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);
	vertex_position_3d(buf, -0.1379, 0.6935, -0.7071);
	vertex_normal(buf, -0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);

	//triangle 944

	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.375);
	vertex_position_3d(buf, -0.2706, 0.6533, 0.7071);
	vertex_normal(buf, -0.2717, 0.6561, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.375);
	vertex_position_3d(buf, -0.1379, 0.6935, 0.7071);
	vertex_normal(buf, -0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.375);

	//triangle 945

	vertex_position_3d(buf, -0.2126, 0.5133, -0.8315);
	vertex_normal(buf, -0.2142, 0.5171, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.75);
	vertex_position_3d(buf, -0.1379, 0.6935, -0.7071);
	vertex_normal(buf, -0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.75);
	vertex_position_3d(buf, -0.1084, 0.5449, -0.8315);
	vertex_normal(buf, -0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.75);

	//triangle 946

	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, 0.0, 0.9239, -0.3827);
	vertex_normal(buf, 0.0, 0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);

	//triangle 947

	vertex_position_3d(buf, -0.1084, 0.5449, 0.8315);
	vertex_normal(buf, -0.1092, 0.549, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);
	vertex_position_3d(buf, 0.0, 0.3827, 0.9239);
	vertex_normal(buf, 0.0, 0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);
	vertex_position_3d(buf, 0.0, 0.5556, 0.8315);
	vertex_normal(buf, 0.0, 0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.8125);

	//triangle 948

	vertex_position_3d(buf, 0.0, 0.8315, -0.5556);
	vertex_normal(buf, 0.0, 0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.25);
	vertex_position_3d(buf, -0.1802, 0.9061, -0.3827);
	vertex_normal(buf, -0.1804, 0.907, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.25);
	vertex_position_3d(buf, 0.0, 0.9239, -0.3827);
	vertex_normal(buf, 0.0, 0.9247, -0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.25);

	//triangle 949

	vertex_position_3d(buf, -0.1379, 0.6935, 0.7071);
	vertex_normal(buf, -0.1385, 0.6965, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, 0.0, 0.5556, 0.8315);
	vertex_normal(buf, 0.0, 0.5598, 0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);

	//triangle 950

	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);
	vertex_position_3d(buf, -0.1622, 0.8155, -0.5556);
	vertex_normal(buf, -0.1626, 0.8173, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);
	vertex_position_3d(buf, 0.0, 0.8315, -0.5556);
	vertex_normal(buf, 0.0, 0.8333, -0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.3125);

	//triangle 951

	vertex_position_3d(buf, -0.1622, 0.8155, 0.5556);
	vertex_normal(buf, -0.1626, 0.8173, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.6875);
	vertex_position_3d(buf, 0.0, 0.7071, 0.7071);
	vertex_normal(buf, 0.0, 0.7101, 0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.6875);
	vertex_position_3d(buf, 0.0, 0.8315, 0.5556);
	vertex_normal(buf, 0.0, 0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.6875);

	//triangle 952

	vertex_position_3d(buf, 0.0, 0.5556, -0.8315);
	vertex_normal(buf, 0.0, 0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);
	vertex_position_3d(buf, -0.1379, 0.6935, -0.7071);
	vertex_normal(buf, -0.1385, 0.6965, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);
	vertex_position_3d(buf, 0.0, 0.7071, -0.7071);
	vertex_normal(buf, 0.0, 0.7101, -0.704);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);

	//triangle 953

	vertex_position_3d(buf, -0.1802, 0.9061, 0.3827);
	vertex_normal(buf, -0.1804, 0.907, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, 0.0, 0.8315, 0.5556);
	vertex_normal(buf, 0.0, 0.8333, 0.5528);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);
	vertex_position_3d(buf, 0.0, 0.9239, 0.3827);
	vertex_normal(buf, 0.0, 0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.75);

	//triangle 954

	vertex_position_3d(buf, 0.0, 0.3827, -0.9239);
	vertex_normal(buf, 0.0, 0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.1875);
	vertex_position_3d(buf, -0.1084, 0.5449, -0.8315);
	vertex_normal(buf, -0.1092, 0.549, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.1875);
	vertex_position_3d(buf, 0.0, 0.5556, -0.8315);
	vertex_normal(buf, 0.0, 0.5598, -0.8286);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1562, 0.1875);

	//triangle 955

	vertex_position_3d(buf, -0.1913, 0.9619, 0.1951);
	vertex_normal(buf, -0.1914, 0.9622, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, 0.0, 0.9239, 0.3827);
	vertex_normal(buf, 0.0, 0.9247, 0.3805);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);
	vertex_position_3d(buf, 0.0, 0.9808, 0.1951);
	vertex_normal(buf, 0.0, 0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.25);

	//triangle 956

	vertex_position_3d(buf, 0.0, 0.1951, -0.9808);
	vertex_normal(buf, 0.0, 0.201, -0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.25);
	vertex_position_3d(buf, -0.0747, 0.3753, -0.9239);
	vertex_normal(buf, -0.0757, 0.3804, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.25);
	vertex_position_3d(buf, 0.0, 0.3827, -0.9239);
	vertex_normal(buf, 0.0, 0.3879, -0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.25);

	//triangle 957

	vertex_position_3d(buf, -0.1951, 0.9808, -0.0);
	vertex_normal(buf, -0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.625);
	vertex_position_3d(buf, 0.0, 0.9808, 0.1951);
	vertex_normal(buf, 0.0, 0.981, 0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.625);
	vertex_position_3d(buf, 0.0, 1.0, -0.0);
	vertex_normal(buf, 0.0, 1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.125, 0.625);

	//triangle 958

	vertex_position_3d(buf, 0.0, 0.9808, -0.1951);
	vertex_normal(buf, 0.0, 0.981, -0.1939);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);
	vertex_position_3d(buf, -0.1951, 0.9808, -0.0);
	vertex_normal(buf, -0.1951, 0.9808, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);
	vertex_position_3d(buf, 0.0, 1.0, -0.0);
	vertex_normal(buf, 0.0, 1.0, 0.0);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.625);

	//triangle 959

	vertex_position_3d(buf, -0.0747, 0.3753, 0.9239);
	vertex_normal(buf, -0.0757, 0.3804, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);
	vertex_position_3d(buf, 0.0, 0.1951, 0.9808);
	vertex_normal(buf, 0.0, 0.201, 0.9796);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);
	vertex_position_3d(buf, 0.0, 0.3827, 0.9239);
	vertex_normal(buf, 0.0, 0.3879, 0.9217);
	vertex_color(buf, c_white, 1);
	vertex_texcoord(buf, 0.1563, 0.6875);

vertex_end(buf);
	
	if (freeze){
		vertex_freeze(buf);
	}
	
	return buf;

}