matrix_set( matrix_world, m);

//set the alpha to 1 and color to white so everything draws correctly if any other objects didn't reset them
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_lighting(false);

//clear the screen, the same color as the fog
draw_clear(fog_color);

//enable fog
gpu_set_fog(true, fog_color, fog_dist_near, fog_dist_far);

//draw the floor grid
vertex_submit(buf, pr_linelist, -1);

draw_set_lighting(true);