if (window_has_focus()){
	if ((window_get_width() != surface_get_width(application_surface)) || (window_get_height() != surface_get_height(application_surface))){
		var w = max(window_get_width(), 1);
		var h = max(window_get_height(), 1);
		show_debug_message("Resizing application surface to " + string(w) + "x" + string(h) + "...");
		surface_resize(application_surface, w, h);
	}
}