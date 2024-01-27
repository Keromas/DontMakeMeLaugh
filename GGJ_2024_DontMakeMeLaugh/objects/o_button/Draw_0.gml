/// @description
draw_self();
draw_set_color(c_black);

if mouse_over == true
{
	switch (index)
	{
		case QUIT_BUTTON:
			draw_sprite(s_quit_outline, 0, x, y);
			break;
		case PLAY_BUTTON:
			draw_sprite(s_play_outline, 0, x, y);
			break;
	}
}

/*switch (index)
{
	case QUIT_BUTTON:
		draw_text(x, y, "QUIT");
		break;
	case PLAY_BUTTON:
		draw_text(x, y, "PLAY");
		break;
}*/

