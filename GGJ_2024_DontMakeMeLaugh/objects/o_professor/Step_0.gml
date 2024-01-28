
#region Déplacements

x += lengthdir_x(spd, dir);

if side == 0
{
	dir = 0; //TO RIGHT
}

if side == 1
{
	dir = 180; //TO LEFT
}
if x < originalX
{
	event_user(0);
}

if x > destinationX
{
	event_user(0);
}

#endregion

#region Patience

if o_game_manager.professor_patience_current >= o_game_manager.professor_patience_max
{
	o_game_manager.professor_patience_current = 0;
	image_index = 1;
	is_striking = true;
	alarm[0] = strike_time;
	alarm[1] = delay_creation_button;
	spd = 0;
	instance_create_depth(x + 20, y - 175, depth - 1, o_professor_eye_flash);
	
}

#endregion