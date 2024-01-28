/// @description 
if(room == rm_punish_room)
{
	cursor_display = s_hand_cursor;
	o_clock.time_current = game_time_current;
	o_clock_needle.image_angle = needle_angle;
	alarm[0] = punish_time;
}

if(room == rm_class)
{
	layer_set_visible("Screen_shake", false);
	cursor_display = s_target_cursor;
	if has_played_tutorial01 == false
	{
		instance_create_layer(x, y, "Instances", o_textbox_tutorial1);
		has_played_tutorial01 = true;
	}
}

if(room == rm_main_menu)
{
	cursor_display = s_hand_cursor;
}

if(room == rm_score_screen)
{
	cursor_display = s_hand_cursor;
	//display_final_score();
	is_displaying_score = true;
	alarm[1] = 60;
}