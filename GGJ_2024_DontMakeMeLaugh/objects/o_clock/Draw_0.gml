draw_self();
if room == rm_class
	draw_pie(x, y, time_current, time_max, c_aqua, (sprite_width / 2) - 4, 0.5);
else if room == rm_punish_room
	draw_pie(x, y, time_current, time_max, c_red, (sprite_width / 2) - 4, 0.5);