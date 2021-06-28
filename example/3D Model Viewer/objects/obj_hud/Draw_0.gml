//set the projection to ortho, so we can draw a flat HUD over the main projection
//d3d_set_projection_ortho(0 ,0, 960, 540, 0);



matrix_set(matrix_world, m);
a = [0, 0, window_get_width(), window_get_height()];

var v9;
	v9[0] = 0 + (a[2] / 2);
	v9[1] = 0 + (a[3] / 2);
	v9[2] = -16000;
	v9[3] = 0 + (a[2] / 2);
	v9[4] = 0 + (a[3] / 2);
	v9[5] = 0;
	v9[6] = dsin(0);
	v9[7] = dcos(0);
	v9[8] = 0;
	
var scale = a[2] / 960;

var matrix_lookat = matrix_build_lookat(v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8]);
var matrix_proj = matrix_build_projection_ortho(a[2], a[3], 1, 32000);

camera_set_view_mat(camera, matrix_lookat);
camera_set_proj_mat(camera, matrix_proj);
camera_apply(camera);

draw_set_lighting(false);
gpu_set_ztestenable(false);
gpu_set_fog(false, fog_color, fog_dist_near, fog_dist_far);

//set color to black and alpha to .25 for HUD elements
draw_set_color(c_black);
draw_set_alpha(.5);

//draw box for HUD
draw_rectangle(a[0] + scale_var(10, scale), a[3] - scale_var(110, scale), a[0] + scale_var(110, scale), a[3] - scale_var(10, scale), false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_set_font(fnt_arial);
draw_text_transformed(a[0] + scale_var(10, scale), a[1] + scale_var(10, scale), string(global.model_name), scale * 0.3, scale * 0.3, 0);

//draw camera
if (instance_exists(obj_camera)){
	var c = obj_camera;
	var crot = ((angle_difference(0, c.rot[1]) + 180) / 6) + 30;
	var cx = a[0] + scale_var(60, scale) + scale_var(c.pos[0], scale) + lengthdir_x(lengthdir_x(scale_var((c.dis + 50) / 3, scale), c.rot[1]), c.rot[0]);
	var cy = a[3] - scale_var(60, scale) + scale_var(c.pos[1], scale) + lengthdir_y(lengthdir_x(scale_var((c.dis + 50) / 3, scale), c.rot[1]), c.rot[0]);

	if (angle_difference(0, c.rot[1]) >= 0){
		draw_set_color(c_teal);
		draw_circle(a[0] + scale_var(60, scale), a[3] - scale_var(60, scale), scale_var(5, scale), false);
	}
	
	draw_sprite_ext(spr_camera, crot, clamp(cx, a[0] + scale_var(10, scale), a[0] + scale_var(110, scale)), clamp(cy, a[3] - scale_var(110, scale), a[3] - scale_var(10, scale)), scale * 0.3, scale * 0.3, c.rot[0], c_white, 1);
	
	if (angle_difference(0, c.rot[1]) < 0){
		draw_set_color(c_teal);
		draw_circle(a[0] + scale_var(60, scale), a[3] - scale_var(60, scale), scale_var(5, scale), false);
	}
}

//re-enable lighting, and reset alpha to 1 and color to white so things draw correctly in the next step
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_lighting(true);

