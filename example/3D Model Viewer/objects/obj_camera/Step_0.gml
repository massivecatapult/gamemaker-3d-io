//set the goal variables to x and y values relative to where the ball is, and where the cam is supposed to be
if (instance_exists(obj_ball)){
    x_goal = obj_ball.x + lengthdir_x(dist, angle);
    y_goal = obj_ball.y + lengthdir_y(dist, angle);
	z_goal = (dist * 0.2) + 5;
    }
	
//x_goal = 0;
//y_goal = 0;
//z_goal = 0;

//here's where we do all the movement smoothing for the camera
//each step, the camera moves towards it's goal point...  but not directly to it
//for x, y, z, and distance, the difference is multiplied by .07, which means 7% the distance
//for the angle, or rotation, it's multiplied by .08, so it will move faster
//there are probably better ways to do this, but this works, and it works relatively fast

x -= (x - x_goal) * ease;
y -= (y - y_goal) * ease;
z -= (z - z_goal) * ease;

var adiff = angle_difference(angle, angle_goal);
if (abs(adiff) > 0){
	angle -= adiff * ease;
}

dist -= (dist - dist_goal) * ease;