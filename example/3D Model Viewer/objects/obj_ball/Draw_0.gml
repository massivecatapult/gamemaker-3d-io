//draw the shadows
//d3d_draw_floor(x+1.5, y-1.5, -.99, x-1.5, y+1.5, -.99, tex_shadow_ao, 1, 1);
//d3d_draw_floor(x+1, y-2, -.98, x-2, y+1, -.98, tex_shadow, 1, 1);

gpu_set_tex_repeat(false);

//draw the ball, use translation in case any rotations might be applied later
draw_set_color(c_red);
	
	m[12] = x;
	m[13] = y;
	m[14] = z;
	matrix_set( matrix_world, m);
//vertex_submit(buf_ao, pr_trianglestrip, tex_shadow_ao);
//vertex_submit(buf_shadow, pr_trianglestrip, tex_shadow);

//d3d_draw_ellipsoid(1, -1, 1, -1, 1, -1, -1, 4, 4, 24);
vertex_submit(ball, pr_trianglelist, -1);

//matrix_set(matrix_world, matrix_build_identity());

//reset color to white so other objects draw correctly
draw_set_color(c_white);

//	r += 1;
//	m2 = matrix_build(0, 0, 4, r/4, r/2, r, 4, 4, 4);
//	matrix_set( matrix_world, m2);
//vertex_submit(test, pr_trianglelist, -1);