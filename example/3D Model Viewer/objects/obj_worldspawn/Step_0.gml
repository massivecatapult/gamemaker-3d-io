if ((window_get_width() != surface_get_width(application_surface)) || (window_get_height() != surface_get_height(application_surface))){
	show_debug_message("Resizing application surface...");
	surface_resize(application_surface, window_get_width(), window_get_height());
}