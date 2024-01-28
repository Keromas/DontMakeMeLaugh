
if can_fill == true and !instance_exists(o_textbox_parent)
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
	layer_set_visible("Screen_shake", true);
	spawn_laugh(o_text_hi);
}

if fill_amount >= max_fill
{
	if !instance_exists(o_textbox_parent)
	{
		can_fill = false;
		fill_amount = 0;
		var _text_clash = choose(o_textbox_clash01, o_textbox_clash02, o_textbox_clash03, o_textbox_clash04, o_textbox_clash05, o_textbox_clash06);
		instance_create_layer(x, y, "Instances", _text_clash);
		layer_set_visible("Screen_shake", false);
	}
}

bump();