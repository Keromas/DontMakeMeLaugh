time_current = o_game_manager.game_time_current;
time_speed = 1;
time_max = o_game_manager.game_duration;

my_needle = instance_create_depth(x, y, depth - 1, o_clock_needle);
my_needle.image_angle = o_game_manager.needle_angle;