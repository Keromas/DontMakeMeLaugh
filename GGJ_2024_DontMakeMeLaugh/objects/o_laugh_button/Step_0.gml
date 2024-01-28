
if can_fill == true
{
	if fill_amount <= max_fill
		fill_amount += fill_speed;
}

if mouse_over == true and mouse_check_button_pressed(mb_left)
{
	image_xscale = 0.7;
	image_yscale = 0.7;
	fill_amount -= click_fill_reducer;
	image_index = 1;
	alarm[1] = 15;
}

if fill_amount >= max_fill
{
	instance_destroy();
	var _target = rm_punish_room;
	transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
	o_game_manager.inTransition = true;
}

bump();