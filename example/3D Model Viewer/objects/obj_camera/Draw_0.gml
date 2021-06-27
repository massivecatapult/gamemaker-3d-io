//set the projection to show the 3D objects correctly, but grab ball location first
var v3;
    v3[0] = 0;
    v3[1] = 0;
    v3[2] = 0;
if (instance_exists(obj_ball)){
    v3[0] = obj_ball.x;
    v3[1] = obj_ball.y;
    v3[2] = obj_ball.z;
    }
	
var matrix_lookat = matrix_build_lookat(x, y, z, v3[0], v3[1], v3[2], 0, 0, 1);
var matrix_proj = matrix_build_projection_perspective_fov( -45, -(16/9), 1, 32000 );

camera_set_view_mat(camera, matrix_lookat);
camera_set_proj_mat(camera, matrix_proj);
camera_apply(camera);

view_camera[0] = camera;