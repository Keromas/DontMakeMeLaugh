/// @description out punish event dialogue

if room == rm_punish_room
{
	var _text_punish_out = choose(o_textbox_backToClass01, o_textbox_backToClass02, o_textbox_backToClass03);
	instance_create_layer(x, y, "Instances", _text_punish_out);
}