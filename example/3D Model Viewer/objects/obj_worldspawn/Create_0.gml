//turn on anti-aliasing for prettiness
display_reset(8, true);

//make some global vars so we don't get any missing var errors/problems
global.ambient_light_color = make_color_rgb(93, 101, 111);

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

//create example objects
instance_create_depth(0, 0, 0, obj_camera);
instance_create_depth(0, 0, -20, obj_hud);
instance_create_depth(0, 0, -10, obj_ball);
instance_create_depth(0, 0, -5, obj_floor);