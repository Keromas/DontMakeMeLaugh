/// @description create laugh button
var _laugh_button = instance_create_depth(room_width / 2, room_height - 300, -100, o_laugh_button);
	_laugh_button.life_time = strike_time;

if o_game_manager.has_played_tutorial02 == false
{
	o_game_manager.has_played_tutorial02 = true;
}