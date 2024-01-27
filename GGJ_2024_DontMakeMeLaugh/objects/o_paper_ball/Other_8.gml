///@description score points
o_game_manager.player_score += 1;

#region Professor patience increase according to distance

var _dist_to_professor = point_distance(x, y, o_professor.x, o_professor.y);
if _dist_to_professor < o_professor.distance_zone_close
{
	o_game_manager.professor_patience_current += o_professor.patience_increaser_huge;
	var _inst = instance_create_depth(o_professor.x, o_professor.y, -99, o_professor_patience_triggered);
	_inst.owner = o_professor;
}
else if _dist_to_professor > o_professor.distance_zone_close and _dist_to_professor < o_professor.distance_zone_middle
{
	o_game_manager.professor_patience_current += o_professor.patience_increaser_small;
	var _inst = instance_create_depth(o_professor.x, o_professor.y, -99, o_professor_patience_triggered);
	_inst.owner = o_professor;
}
else if _dist_to_professor > o_professor.distance_zone_far
{
	var _odds_to_increase_patience = irandom_range(0, 100);
	if _odds_to_increase_patience < o_professor.patience_increaser_chance
	{
		o_game_manager.professor_patience_current += o_professor.patience_increaser_small;	
		var _inst = instance_create_depth(o_professor.x, o_professor.y, -99, o_professor_patience_triggered);
		_inst.owner = o_professor;
	}
}

#endregion
//show_debug_message(o_game_manager.player_score);

//trigger death
alarm[1] = 60;

instance_create_depth((room_width / 2 + 50) + o_game_manager.point_offsetX, room_height - 170 + o_game_manager.point_offsetY, -100, o_point);

o_game_manager.point_offsetX += 7;
if o_game_manager.player_score % 15 = 0
{
	o_game_manager.point_offsetY += 30;
	o_game_manager.point_offsetX = 0;
}

//destroy path
path_delete(my_path);
