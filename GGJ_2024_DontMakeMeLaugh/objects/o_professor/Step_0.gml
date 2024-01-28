
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
	layer_set_visible("Screen_shake", true);
	var _screen_shake_time = 25;
	alarm[3] = _screen_shake_time
	is_striking = true;
	spd = 0;
	instance_create_depth(x + 20, y - 175, depth - 1, o_professor_eye_flash);
	if o_game_manager.has_played_tutorial02 == false
	{
		instance_create_layer(x, y, "Instances", o_textbox_tutorial2);
	}
	else
	{
		var _warning_dialogue = choose(o_textbox_profReturn01, o_textbox_profReturn02, o_textbox_profReturn03);
		instance_create_layer(x, y, "Instances", _warning_dialogue);
	}
}

#endregion