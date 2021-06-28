if (keyboard_check_pressed(ord("T"))){
	if (use_texture){
		use_texture = false;
	} else {
		use_texture = true;
	}
}

if (keyboard_check_pressed(ord("L"))){
	if (use_lighting){
		use_lighting = false;
	} else {
		use_lighting = true;
	}
}