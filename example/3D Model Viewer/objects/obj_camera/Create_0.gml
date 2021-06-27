camera = camera_create();

//set the z value to 10, for height stuff in 3D
z = 10;

//initiate D3D
//these settings will likely change depending on what you're doing with your own game
gpu_set_ztestenable(true);
draw_set_lighting(true);
gpu_set_cullmode(cull_counterclockwise);
gpu_set_texfilter(true);
gpu_set_tex_mip_enable(mip_markedonly);
gpu_set_tex_mip_filter(tf_anisotropic);

//define a light and enable it so we can see our objects
draw_light_define_direction(1, 7.5, -7.5, -7, c_white);
draw_light_define_direction(1, 0, 1, 0, c_white);
draw_light_define_ambient(global.ambient_light_color);
draw_light_enable(1, true);

//regular and goal variables for the camera, for movement smoothing
x_goal = x;
y_goal = y;
z_goal = z;
angle = 0;
angle_goal = 270;
dist = 30;
dist_goal = 30;
ease = 0.1;