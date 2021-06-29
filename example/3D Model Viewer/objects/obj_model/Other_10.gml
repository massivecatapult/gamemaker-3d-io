/// @description Load new model

//var b = load_model(global.vtf);
var f = get_open_filename("buffer|*.buf", "");
if (f != "" ){
	var b = buffer_load(f);
	vertex_delete_buffer(model);
	model = vertex_create_buffer_from_buffer(b, global.vtf);
	buffer_delete(b);
	global.model_name = filename_name(f);
	r = 0;
}