/// @description fade out

if can_fade_out == true
{
	image_alpha -= 0.01;
}

if image_alpha <= 0
{
	instance_destroy();
	transitionRoomStart(rm_main_menu, sq_roomTransOut, sq_roomTransIn);
}