gpu_set_tex_repeat(false);

matrix_set(matrix_world, m);

if (!global.use_lighting){
	draw_set_lighting(false);
}

if (global.use_culling){
	gpu_set_cullmode(cull_counterclockwise);
} else {
	gpu_set_cullmode(cull_noculling);
}

if (global.use_texture){
	gpu_set_texrepeat(true);
	vertex_submit(model, draw_mode, tex);
	gpu_set_texrepeat(false);
} else {
	vertex_submit(model, draw_mode, -1);
}

gpu_set_cullmode(cull_counterclockwise);


draw_set_lighting(true);
draw_set_color(c_white);