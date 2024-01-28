/// @description reset vars
game_duration = 60 * 60;
game_time_current = 0;
needle_angle = 90;
player_score = 0;
temp_score = 0;
point_offsetX = 0;
point_offsetY = 0;
punish_time = 60 * 5;

cursor_sprite = s_hand_cursor;

point_current = noone;

//Displaying final score
is_displaying_score = false;
point_final_current = 0;
_startX = 1200;
_startY = 310;
_offsetX = 0;
_offsetY = 0;

instance_destroy(o_point);

//Instanciate first point displayer
if !instance_exists(o_point)
{
	var _point_first = instance_create_depth((room_width / 2 + 20) + point_offsetX, room_height - 130 + point_offsetY, -100, o_point);
	point_current = _point_first;
}