/// @description Load new model

//var b = load_model(global.vtf);
var f = get_open_filename("buffer|*.buf", "");
if (f != "" ){
	var b = buffer_load(f);
	vertex_delete_buffer(model);
	if (show_question("Is this model a triangle list?")){
		model = vertex_create_buffer_from_buffer(b, global.vtf);
		draw_mode = pr_trianglelist;
	} else {
		model = vertex_create_buffer_from_buffer(b, global.vtf_lite);
		if (show_question("Is this model a line list?")){
			draw_mode = pr_linelist;
		} else {
			draw_mode = pr_pointlist;
		}
	}
	buffer_delete(b);
	global.model_name = filename_name(f);
	r = 0;
}