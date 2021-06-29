if (keyboard_check_pressed(ord("T"))){
	if (global.use_texture){
		global.use_texture = false;
	} else {
		global.use_texture = true;
	}
}

if (keyboard_check_pressed(ord("L"))){
	if (global.use_lighting){
		global.use_lighting = false;
	} else {
		global.use_lighting = true;
	}
}

if (keyboard_check_pressed(ord("D"))){
	if (global.demo_mode){
		global.demo_mode = false;
		r = 0;
	} else {
		global.demo_mode = true;
	}
}

if (keyboard_check_pressed(ord("M"))){
	event_user(0);
}

if (global.demo_mode){
	r += 1;
}
m = matrix_build(0, 0, 0, r/3, r/2, r, 1, 1, 1);