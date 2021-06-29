function scale_var(v, scale){
	return v * scale;
}

function draw_toggle(x, y, scale, label, state){
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_roundrect_ext(x, y, x + (100 * scale), y + (20 * scale), 4 * scale, 4 * scale, false);
	draw_set_alpha(1);
	draw_set_color(c_dkgray);
	draw_roundrect_ext(x + (70 * scale), y + (4 * scale), x + (96 * scale), y + (16 * scale), 4 * scale, 4 * scale, false);
	draw_set_color(c_gray);
	if (state){
		draw_roundrect_ext(x + (86 * scale), y + (5 * scale), x + (95 * scale), y + (15 * scale), 4 * scale, 4 * scale, false);
		draw_set_color(c_white);
	} else {
		draw_roundrect_ext(x + (71 * scale), y + (5 * scale), x + (80 * scale), y + (15 * scale), 4 * scale, 4 * scale, false);
		draw_set_color(c_ltgray);
	}
	
	draw_set_alpha(1);
	draw_text_transformed(x + (7 * scale), y + (3.25 * scale), string(label), scale * 0.275, scale * 0.275, 0);
	draw_set_color(c_white);
}

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