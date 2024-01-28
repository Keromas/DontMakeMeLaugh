
draw_self();

if room == rm_class
	draw_pie(x, y, time_current, time_max, c_maroon, (sprite_width / 2) - 7, 0.5);
else if room == rm_punish_room
	draw_pie(x, y, time_current, time_max, c_red, (sprite_width / 2) - 16, 0.5);