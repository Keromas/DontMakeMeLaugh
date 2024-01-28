if room == rm_score_screen
{
	if is_displaying_score == false
	{
		draw_set_color(c_red);
		draw_set_font(ft_total_score);
		draw_text_ext_transformed(1480, 750, player_score, 10, 150, 1, 1, 15);
	}
}
