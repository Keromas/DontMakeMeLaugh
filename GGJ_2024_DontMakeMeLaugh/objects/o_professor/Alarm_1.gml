/// @description create laugh button
/*var _laugh_button = instance_create_depth(room_width / 2, room_height - 300, -100, o_laugh_button);
	_laugh_button.life_time = strike_time;

if o_game_manager.has_played_tutorial02 == false
{
	o_game_manager.has_played_tutorial02 = true;
}*/

o_laugh_button.lock = false;
o_laugh_button.can_fill = true;
o_laugh_button.alarm[0] = o_laugh_button.life_time;
o_laugh_button.image_index = 0;