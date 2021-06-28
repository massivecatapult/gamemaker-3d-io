gpu_set_tex_repeat(false);

	m[12] = x;
	m[13] = y;
	m[14] = z;
	matrix_set( matrix_world, m);

if (!use_lighting){
	draw_set_lighting(false);
}

if (use_texture){
	vertex_submit(model, pr_trianglelist, tex);
} else {
	vertex_submit(model, pr_trianglelist, -1);
}

draw_set_lighting(true);
draw_set_color(c_white);