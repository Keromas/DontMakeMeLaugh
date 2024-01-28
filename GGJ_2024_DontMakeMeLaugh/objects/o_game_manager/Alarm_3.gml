/// @description back to main menu

var _target = rm_main_menu;
transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
o_game_manager.inTransition = true;

alarm[4] = 50;