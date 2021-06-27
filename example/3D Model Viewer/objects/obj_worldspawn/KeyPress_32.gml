
var b =  buffer_create(1, buffer_grow, 1);
//var s = "hello world!"
//buffer_write(b, buffer_text, s);

//buffer_write(b, buffer_s16, 12345);
//buffer_write(b, buffer_s16, 6789);


//var v = vertex_buffer_quad(global.vtf, 1, 0, 0, 0, 1, false);
//vertex_format_begin();
//	vertex_format_add_position_3d();
//	vertex_format_add_normal();
//	vertex_format_add_color();
//var f = vertex_format_end();

var v =  vertex_create_buffer();
	vertex_begin(v, global.vtf);
	
		vertex_position_3d(v, 12.345, -5.432, 2.345);
		vertex_normal(v, 0.1, -0.5, 0.75);
		vertex_color(v, c_aqua, 1);
		vertex_texcoord(v, 0.35, 0.85);
		
		vertex_position_3d(v, 5.432, 3.456, -9.876);
		vertex_normal(v, -0.2, 0.65, -0.05);
		vertex_color(v, c_green, 0.5);
		vertex_texcoord(v, 0.95, 0.123);
		
	vertex_end(v);
var b = buffer_create_from_vertex_buffer(v, buffer_vbuffer, 1);

//buffer_write(b, buffer_text, s);
var f = get_save_filename("buffer|*.buf", "")
if (f != "" ){
	buffer_save(b, f);
}