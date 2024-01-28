if !instance_exists(o_textbox_parent)
{
	image_angle -= o_clock.time_speed / 10;
	o_game_manager.needle_angle = image_angle;
}