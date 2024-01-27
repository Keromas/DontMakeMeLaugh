time_current += time_speed;

if time_current >= time_max
{
	with (o_game_manager)
	{
		event_user(0);
	}
}