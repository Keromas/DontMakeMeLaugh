
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
}

if fill_amount >= max_fill
{
	instance_destroy();
	show_debug_message("fail");
}

bump();