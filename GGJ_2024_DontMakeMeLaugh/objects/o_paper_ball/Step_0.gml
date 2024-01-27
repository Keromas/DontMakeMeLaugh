
//if alarm[0] <= 0
	//alarm[0] = hit_timer;

/*
if can_move == true
{
	speed = spd;
	direction = dir;
	gravity += grav;
	//x += lengthdir_x(spd, dir);
	//y += lengthdir_y(spd, dir);

	image_xscale -= shrink_modifier;
	image_yscale -= shrink_modifier;
}*/

//Reduce size
if image_xscale >= 0.2
{
	image_xscale -= shrink_modifier;
	image_yscale -= shrink_modifier;
}

//Acceleration
if path_position <= 0.4
{
	path_speed = 70;
}
else
	path_speed = 40;

#region Death
if can_fade_out == true
	image_alpha -= 0.01;

if image_alpha <= 0
	instance_destroy();

#endregion