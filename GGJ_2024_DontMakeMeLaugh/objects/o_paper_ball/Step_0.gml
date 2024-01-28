
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
if path_position >= 0.01
{
	//Reduce size
	if image_xscale >= 0.2
	{
		image_xscale -= shrink_modifier;
		image_yscale -= shrink_modifier;
	}
}

//Acceleration
if path_position <= 0.4
{
	path_speed = acceleration_spd;
}
else
	path_speed = 40;

//Particules trail
fade_timer--;
if(fade_timer <= 0)
{
	fade_timer = fade_time;
	if instance_exists(o_particule_manager)
	{
		if path_position < 1 
			part_particles_create(o_particule_manager.particuleSystem, x, y, o_particule_manager.particule_paper_ball_trail, 1);
	}
}

#region Death
if can_fade_out == true
	image_alpha -= 0.01;

if image_alpha <= 0
	instance_destroy();

#endregion