gpu_set_tex_repeat(false);

	m[12] = x;
	m[13] = y;
	m[14] = z;
	matrix_set( matrix_world, m);

vertex_submit(ball, pr_trianglelist, -1);
draw_set_color(c_white);