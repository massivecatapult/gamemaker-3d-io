z = 0;
m = matrix_build_identity();

var b = buffer_load("sphere.buf");
ball = vertex_create_buffer_from_buffer(b, global.vtf);
buffer_delete(b);