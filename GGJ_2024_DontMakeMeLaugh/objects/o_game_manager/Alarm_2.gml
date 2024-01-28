/// @description out punish room

if room == rm_punish_room
{
	var _target = rm_class;
	transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
	o_game_manager.inTransition = true;
}