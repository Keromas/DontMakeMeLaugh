/// @description display final points
if point_final_current < player_score
{
	point_final_current++;
	alarm[1] = 7;
	var _point = instance_create_depth(_startX + _offsetX, _startY + _offsetY, -100, o_final_point);
	_offsetX += 35;
	if point_final_current % 10 == 0
	{
		_offsetY += 60;
		_offsetX = 0;
	}
}
else
{
	is_displaying_score = false;
	alarm[3] = 60 * 2;
}

if !instance_exists(o_textbox_parent)
{
	var _victory_text = choose(o_textbox_victoryScreen01, o_textbox_victoryScreen02, o_textbox_victoryScreen03, o_textbox_victoryScreen04);
	instance_create_layer(x, y, "Instances", _victory_text);
}