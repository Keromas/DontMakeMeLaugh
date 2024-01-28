grav = 0.8;

/*var _dist = point_distance(x, y, mouse_x, mouse_y);
var _spd_taux_augmentation = 0.01;
var _vitesse_base = 40;
spd = _vitesse_base + (_dist * _spd_taux_augmentation);*/
spd = 40;
acceleration_spd = (spd * 2) - (spd * 25 / 100);
//show_debug_message(acceleration_spd);


grav_direction = 270;
dir = 0; //to be define on creation
shrink_modifier = 0.022;
hit_timer = 60;
my_path = 0;

can_move = true;
can_fade_out = false;

gravity_direction = grav_direction;

alarm[0] = 1;

image_angle = random_range(0, 360);

//particules
fade_time = 1
fade_timer = fade_time;