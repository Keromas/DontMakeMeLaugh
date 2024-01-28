///@description score points
var _score_increase = 0;

#region Professor patience and score increase according to distance

var _dist_to_professor = point_distance(x, y, o_professor.x, o_professor.y);
if _dist_to_professor < o_professor.distance_zone_close
{
	o_game_manager.professor_patience_current += o_professor.patience_increaser_huge;
	var _inst = instance_create_depth(o_professor.x - 20, o_professor.y - 180, -99, o_professor_patience_triggered);
	_inst.owner = o_professor;
	_score_increase = 3;
	o_game_manager.player_score += 3;
	o_game_manager.temp_score += 3;
}
else if _dist_to_professor > o_professor.distance_zone_close and _dist_to_professor < o_professor.distance_zone_middle
{
	o_game_manager.professor_patience_current += o_professor.patience_increaser_small;
	var _inst = instance_create_depth(o_professor.x - 20, o_professor.y - 180, -99, o_professor_patience_triggered);
	_inst.owner = o_professor;
	_score_increase = 2;
	o_game_manager.player_score += 2;
	o_game_manager.temp_score += 2;
}
else if _dist_to_professor > o_professor.distance_zone_far
{
	var _odds_to_increase_patience = irandom_range(0, 100);
	if _odds_to_increase_patience < o_professor.patience_increaser_chance
	{
		o_game_manager.professor_patience_current += o_professor.patience_increaser_small;	
		var _inst = instance_create_depth(o_professor.x - 20, o_professor.y - 180, -99, o_professor_patience_triggered);
		_inst.owner = o_professor;
	}
	_score_increase = 1;
	o_game_manager.player_score += 1;
	o_game_manager.temp_score += 1;
}

#endregion
//show_debug_message(o_game_manager.player_score);

//trigger death
alarm[1] = 60;

//Add new visual point
var _image_left = -(o_game_manager.point_current.image_index - (o_game_manager.point_current.image_number - 1));
if _score_increase > _image_left
{
	var _catch_late = _score_increase - _image_left;
	o_game_manager.point_offsetX += 30;
	o_game_manager.point_current.image_index = o_game_manager.point_current.image_number-1;
	var _inst = instance_create_depth((room_width / 2 + 20) + o_game_manager.point_offsetX, room_height - 120 + o_game_manager.point_offsetY, -100, o_point);
	o_game_manager.point_current = _inst;
	o_game_manager.point_current.image_index += _catch_late-1;
	show_debug_message("create new point square");
	show_debug_message(o_game_manager.player_score);
}
else if instance_exists(o_game_manager.point_current)
{
	o_game_manager.point_current.image_index += _score_increase;
	show_debug_message("update current point square");
	show_debug_message(o_game_manager.player_score);
}

if o_game_manager.temp_score / 20 >= 1
{
	o_game_manager.temp_score = 0;
	o_game_manager.point_offsetY += 25;
	o_game_manager.point_offsetX = -30;
}

//Add visual point old

//instance_create_depth((room_width / 2 + 50) + o_game_manager.point_offsetX, room_height - 170 + o_game_manager.point_offsetY, -100, o_point);

//destroy path
path_delete(my_path);
