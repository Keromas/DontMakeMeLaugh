/// @description 
if(room == rm_punish_room)
{
	o_clock.time_current = game_time_current;
	o_clock_needle.image_angle = needle_angle;
	alarm[0] = punish_time;
}

if(room == rm_class)
{
	cursor_sprite = s_target_ursor;
}

if(room == rm_main_menu)
{
	cursor_sprite = s_hand_cursor;
}