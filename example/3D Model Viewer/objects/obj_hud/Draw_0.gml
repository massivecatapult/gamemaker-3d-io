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



//draw box for HUD

draw_set_alpha(.5);
draw_line_color(a[0] + scale_var(20, scale), a[3] - scale_var(60, scale), a[0] + scale_var(100, scale), a[3] - scale_var(60, scale), x_axis_color, x_axis_color);
draw_line_color(a[0] + scale_var(60, scale), a[3] - scale_var(100, scale), a[0] + scale_var(60, scale), a[3] - scale_var(20, scale), y_axis_color, y_axis_color);
draw_set_alpha(1);
draw_set_color(x_axis_color);
draw_circle(a[0] + scale_var(20, scale), a[3] - scale_var(60, scale), scale_var(6, scale), false);
draw_circle(a[0] + scale_var(100, scale), a[3] - scale_var(60, scale), scale_var(6, scale), false);
draw_set_color(y_axis_color);
draw_circle(a[0] + scale_var(60, scale), a[3] - scale_var(100, scale), scale_var(6, scale), false);
draw_circle(a[0] + scale_var(60, scale), a[3] - scale_var(20, scale), scale_var(6, scale), false);
draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(a[0] + scale_var(20, scale), a[3] - scale_var(59.5, scale), "-X", scale * 0.15, scale * 0.15, 0);
	draw_text_transformed(a[0] + scale_var(100, scale), a[3] - scale_var(59.5, scale), "+X", scale * 0.15, scale * 0.15, 0);
	draw_text_transformed(a[0] + scale_var(60, scale), a[3] - scale_var(99.5, scale), "-Y", scale * 0.15, scale * 0.15, 0);
	draw_text_transformed(a[0] + scale_var(60, scale), a[3] - scale_var(19.5, scale), "+Y", scale * 0.15, scale * 0.15, 0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
draw_set_alpha(.5);
draw_roundrect_ext(a[0] + scale_var(10, scale), a[3] - scale_var(110, scale), a[0] + scale_var(110, scale), a[3] - scale_var(10, scale), scale_var(4, scale), scale_var(4, scale), false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_set_font(fnt_arial);
draw_text_transformed(a[0] + scale_var(10, scale), a[1] + scale_var(10, scale), "Model: " + string(global.model_name), scale * 0.3, scale * 0.3, 0);

//draw camera
if (instance_exists(obj_camera)){
	var c = obj_camera;
	var crot = ((angle_difference(0, c.rot[1]) + 180) / 6) + 30;
	var cx = a[0] + scale_var(60, scale) + scale_var(c.pos[0], scale) + lengthdir_x(lengthdir_x(scale_var((c.dis + 50) / 3, scale), c.rot[1]), c.rot[0]);
	var cy = a[3] - scale_var(60, scale) + scale_var(c.pos[1], scale) + lengthdir_y(lengthdir_x(scale_var((c.dis + 50) / 3, scale), c.rot[1]), c.rot[0]);

	if (angle_difference(0, c.rot[1]) >= 0){
		draw_set_color(c_orange);
		draw_circle(a[0] + scale_var(60, scale), a[3] - scale_var(60, scale), scale_var(3, scale), false);
	}
	
	draw_sprite_ext(spr_camera, crot, clamp(cx, a[0] + scale_var(10, scale), a[0] + scale_var(110, scale)), clamp(cy, a[3] - scale_var(110, scale), a[3] - scale_var(10, scale)), scale * 0.3, scale * 0.3, c.rot[0], c_white, 1);
	
	if (angle_difference(0, c.rot[1]) < 0){
		draw_set_color(c_orange);
		draw_circle(a[0] + scale_var(60, scale), a[3] - scale_var(60, scale), scale_var(3, scale), false);
	}
}

//toggles
draw_toggle(a[0] + scale_var(10, scale), a[3] - scale_var(190, scale), scale, "Demo", global.demo_mode);
draw_toggle(a[0] + scale_var(10, scale), a[3] - scale_var(165, scale), scale, "Lighting", global.use_lighting);
draw_toggle(a[0] + scale_var(10, scale), a[3] - scale_var(140, scale), scale, "Texture", global.use_texture);

//reset
gpu_set_ztestenable(true);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_lighting(true);

