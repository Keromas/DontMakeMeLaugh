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
	switch (index)
	{
		case QUIT_BUTTON:
			game_end();
			break;
		case PLAY_BUTTON:
			var _target = rm_class;
			transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
			o_game_manager.inTransition = true;
			break;
	}
}