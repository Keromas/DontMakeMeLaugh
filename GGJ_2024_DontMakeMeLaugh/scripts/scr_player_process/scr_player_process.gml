function shoot()
{
	if can_shoot == true
	{
		if mouse_check_button_pressed(mb_left) and place_meeting(mouse_x, mouse_y, o_board)
		{
			can_shoot = false;
			//var _projectile_spd = set_power();
			//var _projectile_hit_timer = set_hit_timer();
			//var _projectile_shrink_modifier = set_hit_timer();
			//var _projectile_angle_modifier = set_angle_modifier();
			var _projectile = instance_create_depth(x, y, -100, o_paper_ball);
			//_projectile.dir = point_direction(x, y, mouse_x, mouse_y) - _projectile_angle_modifier;
			//_projectile.spd = _projectile_spd;
			//_projectile.hit_timer = _projectile_hit_timer;
			//_projectile.shrink_modifier = _projectile_shrink_modifier;
			// Définir les positions de départ et d'arrivée
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
			var _control_x = (_start_x + _end_x) / 2; // Ajuste ces valeurs selon tes besoins
			var _control_y = min(_start_y, _end_y) - 170;
			path_add_point(_path, _control_x, _control_y, _projectile.spd);

			// Ajouter le point d'arrivée au path
			path_add_point(_path, _end_x, _end_y, _projectile.spd);

			_projectile.my_path = _path;
			with(_projectile)
			{
				path_start(my_path, spd, path_action_stop, false);
			}
			// Assure-toi de détruire le path lorsque tu n'en as plus besoin
			//path_delete(_path);
			alarm[0] = shoot_cooldown;
		}
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