/// @description change scene on fail
var _target = rm_punish_room;
transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
o_game_manager.inTransition = true;

instance_destroy();