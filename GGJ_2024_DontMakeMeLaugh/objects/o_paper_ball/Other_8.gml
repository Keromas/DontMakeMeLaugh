///@description score points
o_game_manager.player_score += 1;
show_debug_message(o_game_manager.player_score);
alarm[1] = 60;
instance_create_depth(720 + o_game_manager.point_offsetX, 660 + o_game_manager.point_offsetY, -100, o_point);
o_game_manager.point_offsetX += 7;
if o_game_manager.player_score % 15 = 0
{
	o_game_manager.point_offsetY += 30;
	o_game_manager.point_offsetX = 0;
}
