function bump()
{
	image_xscale = lerp(image_xscale, 1, 0.15);
	image_yscale = lerp(image_yscale, 1, 0.15);
}

function fade_out_to_destroy(_alpha_decrease_speed)
{
	if can_fade_out == true
	{
		image_alpha -= _alpha_decrease_speed;
	}

	if image_alpha <= 0
	{
		instance_destroy();
	}
}

function draw_pie(x ,y ,value, _max, colour, radius, transparency)
{
	if (value > 0)
	{ // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
    
	    val = (value/_max) * numberofsections 
    
	    if (val > 1)
		{ // HTML5 version doesnt like triangle with only 2 sides 
    
	        draw_set_colour(colour);
	        draw_set_alpha(transparency);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(x, y);
        
	        for(i = 0; i <= val; i++)
			{
	            len = -(i * sizeofsection) + 90; // the 90 here is the starting angle
	            tx = lengthdir_x(radius, len);
	            ty = lengthdir_y(radius, len);
	            draw_vertex(x + tx, y + ty);
	        }
	        draw_primitive_end();
        
	    }
	    draw_set_alpha(1);
	}
}