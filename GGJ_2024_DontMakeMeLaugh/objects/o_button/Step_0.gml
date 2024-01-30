/// @description
switch (index)
{
	case QUIT_BUTTON:
		sprite_index = s_quit_button;
		break;
	case PLAY_BUTTON:
		sprite_index = s_play_button;
		break;
}

if mouse_check_button_pressed(mb_left) and mouse_over == true
{
	audio_play_sound(snd_display_score, 10, false, 1.5);
	switch (index)
	{
		case QUIT_BUTTON:
			if os_browser != browser_not_a_browser
			{
				window_set_fullscreen(false);
			}
			else
				game_end();
			break;
		case PLAY_BUTTON:
			var _target = rm_class;
			transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
			o_game_manager.inTransition = true;
			if os_browser != browser_not_a_browser
			{
				room_goto(_target);
				o_game_manager.inTransition = false;
			}
			break;
	}
}