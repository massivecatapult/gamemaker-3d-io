window_set_cursor(cr_default);

if (mouse_check_button(mb_middle)){
	window_set_cursor(cr_none);
	var dx = (display_mouse_get_x() - m[0]) * sensitivity;
	var dy = (display_mouse_get_y() - m[1]) * sensitivity;
	if (keyboard_check(vk_shift)){
		//get x dir
		var p = rot[0] + 90;
		pos[0] = pos[0] - lengthdir_x((dx * 0.05), p);
		pos[1] = pos[1] - lengthdir_y((dx * 0.05), p);
		pos[2] += (dy * 0.05);
	} else if (keyboard_check(vk_control)){
		dis += (dy * 0.25);
	} else {
		rot[0] -= dx;
		rot[1] -= dy;
	}
	display_mouse_set(m[0], m[1]);
}

if (mouse_wheel_up()){
	dis -= 2;
}

if (mouse_wheel_down()){
	dis += 2;
}

if (keyboard_check_pressed(vk_numpad0)){
	pos = [0, 0, 0];
}

dis = clamp(dis, 2, 50);

x = pos[0] + lengthdir_x(lengthdir_x(dis, rot[1]), rot[0]);
y = pos[1] + lengthdir_y(lengthdir_x(dis, rot[1]), rot[0]);
z = pos[2] + lengthdir_y(dis, rot[1]);

m = [display_mouse_get_x(), display_mouse_get_y()];