//show_debug_message("fin de la partie");
var _target = rm_score_screen;
transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
o_game_manager.inTransition = true;
if os_browser != browser_not_a_browser
{
	room_goto(_target);
	o_game_manager.inTransition = false;
}