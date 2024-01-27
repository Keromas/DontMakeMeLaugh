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
			room_goto(rm_class);
			break;
	}
}