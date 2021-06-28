function scale_var(v, scale){
	return v * scale;
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