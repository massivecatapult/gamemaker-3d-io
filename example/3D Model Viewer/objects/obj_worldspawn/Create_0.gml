//vertex formats
vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_normal();
	vertex_format_add_color();
	vertex_format_add_texcoord();
global.vtf = vertex_format_end();

vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_color();
global.vtf_lite = vertex_format_end();

//initiate 3D
display_reset(8, true);
gpu_set_ztestenable(true);
gpu_set_cullmode(cull_counterclockwise);
gpu_set_texfilter(true);
gpu_set_tex_mip_enable(mip_markedonly);
gpu_set_tex_mip_filter(tf_anisotropic);

//define a light and enable it so we can see our objects
draw_set_lighting(true);
draw_light_define_ambient(ambient_light_color);
draw_light_define_direction(1, 1, -1, -1, c_white);
draw_light_define_direction(2, -.25, 1, .5, make_color_rgb(10, 15, 40));
draw_light_enable(1, true);
draw_light_enable(2, true);

//create example objects
instance_create_depth(0, 0, 0, obj_camera);
instance_create_depth(0, 0, -20, obj_hud);
instance_create_depth(0, 0, -10, obj_ball);
instance_create_depth(0, 0, -5, obj_floor);