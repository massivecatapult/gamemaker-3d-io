//set the projection to ortho, so we can draw a flat HUD over the main projection
//d3d_set_projection_ortho(0 ,0, 960, 540, 0);

matrix_set(matrix_world, m);

var v9;
	v9[0] = 0 + (960 / 2);
	v9[1] = 0 + (540 / 2);
	v9[2] = -16000;
	v9[3] = 0 + (960 / 2);
	v9[4] = 0 + (540 / 2);
	v9[5] = 0;
	v9[6] = dsin(0);
	v9[7] = dcos(0);
	v9[8] = 0;

var matrix_lookat = matrix_build_lookat(v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8]);
var matrix_proj = matrix_build_projection_ortho(960, 540, 1, 32000);

camera_set_view_mat(camera, matrix_lookat);
camera_set_proj_mat(camera, matrix_proj);
camera_apply(camera);

//disable lighting for now, so our HUD doesn't draw completely black, since 2D elements can't be lit
//also disable fog, so it doesn't mess with the HUD - don't need to worry about the values we set for this, they get updated on re-enable
draw_set_lighting(false);
gpu_set_fog(false, fog_color, fog_dist_near, fog_dist_far);

//set color to black and alpha to .25 for HUD elements
draw_set_color(c_black);
draw_set_alpha(.5);

//draw box for HUD
draw_rectangle(10, 430, 110, 530, false);

//set color to red and alpha back to 1
draw_set_color(c_red);
draw_set_alpha(1);

//draw the HUD ball
draw_circle(60, 480, 6, false);

//set color back to white for ball outline
draw_set_color(c_white);

//draw the HUD ball outline
draw_circle(60, 480, 6, true);

//draw camera sprite, with distance and rotation set directly from the camera's distance and angle variables
if (instance_exists(obj_camera)){
    //var d = obj_camera.dist;
    //var a = obj_camera.angle;
    //var t = ((d / 20) * 10) + 10;
    //draw_sprite_ext(spr_cam, -1, 60+lengthdir_x(t,a), 480+lengthdir_y(t,a), .75, .75, a+90, c_white, 1);
    }

//re-enable lighting, and reset alpha to 1 and color to white so things draw correctly in the next step
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_lighting(true);

