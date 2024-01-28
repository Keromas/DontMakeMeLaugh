// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
global.midTransition = false;
global.roomTarget = -1;

function transitionPlaceSequence(_type)
{
	if(layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay,0,0,_type);
}

function transitionStart(_typeOut)
{
	if(!global.midTransition)
	{
		global.midTransition = true;
		transitionPlaceSequence(_typeOut);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function transitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
	
}

function victoryScreenFinished()
{
	global.midTransition = false;
	o_game_manager.game_stop = true;
}

function transitionRoomStart(_roomTarget, _typeOut, _typeIn)
{
	if(!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		transitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		transitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function transitionChangeRoom()
{
	room_goto(global.roomTarget);
}

function transitionRoomFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
	o_game_manager.inTransition = false;
}