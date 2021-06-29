z = 0;
m = matrix_build_identity();
r = 0;

var b = buffer_load("sphere.buf");
model = vertex_create_buffer_from_buffer(b, global.vtf);
buffer_delete(b);

tex = sprite_get_texture(spr_uvcolorgrid, 0);