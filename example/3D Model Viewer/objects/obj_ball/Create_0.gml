//set the z value to 0, for height stuff in 3D
z = 0;

m = matrix_build_identity();
m2 = matrix_build(2, 0, 0, 0, 0, 0, 1, 1, 1);
r = 0;
ball = vertex_buffer_sphere(global.vtf, true);

//set textures for the ball's shadow
//tex_shadow = sprite_get_texture(bg_ball_shadow, 0);
//tex_shadow_ao = sprite_get_texture(bg_ball_shadow_ao, 0);

//tex_test = sprite_get_texture(Sprite5, 0);

//set some variables for movement, the amount of speed to add per step, the max speed, and the friction
add_speed = .02;
max_speed = 1;
friction = .01;

shadow_dir = point_direction(0, 0, 0, 1);

//buf_shadow = vertex_buffer_quad(global.vtf, 3, lengthdir_x(0.5, shadow_dir), lengthdir_y(0.5, shadow_dir), -.98, 1, true);
//buf_ao = vertex_buffer_quad(global.vtf, 3, 0, 0, -.99, 1, true);

//test = load_model(global.vtf);
//var f = get_open_filename("buffer|*.buf", "")
//if (f != "" ){
//	b = buffer_load(f);
//}
//test = vertex_create_buffer_from_buffer(b, global.vtf);

//the depth for this object is set to -10 so it will draw after the camera, but before the HUD

