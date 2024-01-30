/// @description fade out

if can_fade_out == true
{
	image_alpha -= 0.01;
}

if image_alpha <= 0
{
	instance_destroy();
	var _target = rm_main_menu;
	transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
	if os_browser != browser_not_a_browser
	{
		room_goto(_target);
		//o_game_manager.inTransition = false;
	}
}