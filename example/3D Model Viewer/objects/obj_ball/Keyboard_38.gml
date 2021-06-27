//add motion based on the camera's orientation to the ball object
if (instance_exists(obj_camera)){
    motion_add(point_direction(x,y,obj_camera.x,obj_camera.y)+180,add_speed);
    }

//make sure the speed doesn't exceed the max speed
if (speed > max_speed) {
    speed = max_speed;
    }

