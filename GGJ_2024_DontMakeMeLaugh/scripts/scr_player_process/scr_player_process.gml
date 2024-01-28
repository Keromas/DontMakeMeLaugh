function shoot()
{
	if can_shoot == true && o_professor.is_striking == false
	{
		if mouse_check_button_pressed(mb_left) and place_meeting(mouse_x, mouse_y, o_board)
		{
			image_speed = 1;
			can_shoot = false;
			var _projectile = instance_create_depth(x, y, -100, o_paper_ball);
			my_projectile = _projectile;
			
			var _start_x = x;
			var _start_y = y;
			var _end_x = mouse_x;
			var _end_y = mouse_y;

			// Créer un nouveau path
			var _path = path_add();
			path_set_kind(_path, 1);
			path_set_closed(_path, false);
		
			// Ajouter le point de départ au path
			path_add_point(_path, _start_x, _start_y, _projectile.spd);
		
			// Ajouter un point de contrôle pour créer une courbe
			var _dist = point_distance(_projectile.x, _projectile.y, mouse_x, mouse_y);
			//show_debug_message(_dist);
			var _control_point_divider = 2;
			var _control_point_y_remover = 170;
			if _dist > 500
			{
				_control_point_divider = 2.2;
				_control_point_y_remover = 210;
			}
			if _dist > 700
			{
				_control_point_divider = 2.3;
				_control_point_y_remover = 250;
			}
			var _control_x = (_start_x + _end_x) / _control_point_divider; // Ajuste ces valeurs selon tes besoins
			var _control_y = min(_start_y, _end_y) - _control_point_y_remover;
			path_add_point(_path, _control_x, _control_y, _projectile.spd);

			// Ajouter le point d'arrivée au path
			path_add_point(_path, _end_x, _end_y, _projectile.spd);

			_projectile.my_path = _path;
			
			// Assure-toi de détruire le path lorsque tu n'en as plus besoin
			//path_delete(_path);
			alarm[0] = shoot_cooldown;
			
			spawn_laugh(o_text_ha);
		}
	}
}

function launch_projectile()
{
	instance_create_depth(x, y, depth + 1, o_speed_effect);
	with(my_projectile)
	{
		if path_position <= 0.01
			path_start(my_path, spd, path_action_stop, false);
	}
}

function spawn_laugh(_type)
{
	var _odds = irandom_range(0, 100);
	if _odds < 40 //une chance sur quatre
	{
		var _side = choose(0, 1);
		var _x, _y, _minX, _maxX, _minY, _maxY, _dir, _length;
		switch (_side)
		{
			case 0:
				_minX = 200;
				_maxX = 600;
				_minY = 300;
				_maxY = 500;
				_x = random_range(_minX, _maxX);
				_y = random_range(_maxY, _maxY);
				_dir = 70;
				break;
			case 1:
				_minX = 1400;
				_maxX = 1720;
				_minY = 300;
				_maxY = 400;
				_x = random_range(_minX, _maxX);
				_y = random_range(_maxY, _maxY);
				_dir = 110;
				break;
		}
		switch (_type)
		{
			case o_text_ha:
				_length = choose(s_text_ha_long, s_text_ha_short);
				break;
			case o_text_hi:
				_length = choose(s_text_hi_long, s_text_hi_short);
				break;
		}
		
		var _laugh = instance_create_depth(_x, _y, depth + 1, _type);
		_laugh.side = _side;
		_laugh.dir = _dir;
		_laugh.sprite_index = _length;
	}
}

function set_power()
{
	var _taux_augmentation = 0.01;
	var _distance = point_distance(x, y, mouse_x, mouse_y);
	var _spd_max = 20;
	var _spd = _spd_max + (_distance * _taux_augmentation);
	
	return _spd;
}

function set_hit_timer()
{
	var _taux_augmentation = 0.01;
	var _distance = point_distance(x, y, mouse_x, mouse_y);
	var _hit_timer_max = 30;
	var _hit_timer = _hit_timer_max + (_distance * _taux_augmentation);
	
	return _hit_timer;
}

function set_shrink_modifier()
{
	var _taux_reduction = 0.0001;
	var _distance = point_distance(x, y, mouse_x, mouse_y);
	// Taille initiale de l'objet
	var _initial_size = 1;
	// Calcul de la taille en fonction de la distance
	var _shrink_modifier = _initial_size + (_distance * _taux_reduction);
	
	return _shrink_modifier;
}

function set_angle_modifier()
{
	var _taux_augmentation = 0.01;
	var _distance = point_distance(x, y, mouse_x, mouse_y);
	var _angle_max = 20;
	var _angle = _angle_max + (_distance * _taux_augmentation);
	
	return _angle;
}