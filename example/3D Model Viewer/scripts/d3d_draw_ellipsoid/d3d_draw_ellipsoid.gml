/// @description Draws a simple 3D ellipsoid.
/// @param x1 The initial x coordinate of the ellipsoid.
/// @param y1 The initial y coordinate of the ellipsoid.
/// @param z1 The initial z coordinate of the ellipsoid.
/// @param x2 The opposite x coordinate of the ellipsoid.
/// @param y2 The opposite y coordinate of the ellipsoid. 
/// @param z2 The opposite z coordinate of the ellipsoid.
/// @param tex The id of the texture to use (-1 for no texture)
/// @param hrepeat Amount of horizontal repetitions for the texture.
/// @param vrepeat Amount of vertical repetitions for the texture.
/// @param steps How many steps are used to make the ellipsoid "round" (typically 24)
/// @returns 
function d3d_draw_ellipsoid(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {

	var __x1 = argument0;
	var __y1 = argument1;
	var __z1 = argument2;
	var __x2 = argument3;
	var __y2 = argument4;
	var __z2 = argument5;
	var __tex = argument6;
	var __hrepeat = argument7;
	var __vrepeat = argument8;
	var __steps = argument9;

	if (__steps < 3)
	{
		__steps = 3;
	}

	if (__steps > 128)
	{
		__steps = 128;
	}

	// Create sin and cos tables
	var __cc;
	var __ss;

	__cc[__steps] = 0;
	__ss[__steps] = 0;

	var __i;
	for(__i = 0; __i <= __steps; __i++)
	{
		var __rad = (__i * 2.0 * pi) / __steps;
		__cc[__i] = cos(__rad);
		__ss[__i] = sin(__rad);
	}

	var __mx = (__x2 + __x1) / 2;
	var __my = (__y2 + __y1) / 2;
	var __mz = (__z2 + __z1) / 2;
	var __rx = (__x2 - __x1) / 2;
	var __ry = (__y2 - __y1) / 2;
	var __rz = (__z2 - __z1) / 2;

	var __rows = floor((__steps + 1) / 2);
	var __j;

	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	

	for(__j = 0; __j <= (__rows - 1); __j++)
	{
		var __row1rad = (__j*pi)/__rows;
		var __row2rad = ((__j+1)*pi)/__rows;
		var __rh1 = cos(__row1rad);
		var __rd1 = sin(__row1rad);
		var __rh2 = cos(__row2rad);
		var __rd2 = sin(__row2rad);
	
		d3d_primitive_begin_texture(pr_trianglestrip, __tex);
	
		for(__i = 0; __i <= __steps; __i++)
		{
			// Some common subexpressions here that could be eliminated
			d3d_vertex_normal_texture(__mx+__rx*__rd1*__cc[__i], __my+__ry*__rd1*__ss[__i], __mz+__rz*__rh1,__rd1*__cc[__i], __rd1*__ss[__i], __rh1, __hrepeat*__i/__steps, __j*__vrepeat/__rows);
			d3d_vertex_normal_texture(__mx+__rx*__rd2*__cc[__i], __my+__ry*__rd2*__ss[__i], __mz+__rz*__rh2,__rd2*__cc[__i], __rd2*__ss[__i], __rh2, __hrepeat*__i/__steps, (__j+1)*__vrepeat/__rows);
		}
	
		d3d_primitive_end();
	}

	gpu_set_texrepeat(__oldrep);


}
