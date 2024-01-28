///@description success
if fill_amount <= max_fill and !instance_exists(o_textbox_parent)
{
	instance_destroy();
	layer_set_visible("Screen_shake", false);
}
