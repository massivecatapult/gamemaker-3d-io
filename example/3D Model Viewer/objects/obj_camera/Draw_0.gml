//set the projection to show the 3D objects correctly, but grab ball location first
var up = 1;
if (abs(rot[1] mod 360) > 90) && (abs(rot[1] mod 360) < 270){
	up = -1;
}
var aspect = window_get_width() / window_get_height();
var matrix_lookat = matrix_build_lookat(x, y, z, pos[0], pos[1], pos[2], 0, 0, up);
var matrix_proj = matrix_build_projection_perspective_fov( -45, -aspect, 0.1, 32000 );

camera_set_view_mat(camera, matrix_lookat);
camera_set_proj_mat(camera, matrix_proj);
camera_apply(camera);

view_camera[0] = camera;