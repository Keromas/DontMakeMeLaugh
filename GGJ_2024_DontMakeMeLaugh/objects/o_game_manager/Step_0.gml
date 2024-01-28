/*if keyboard_check_pressed(vk_space)
{
	instance_create_layer(mouse_x, mouse_y, "Instances", o_laugh_button);
}

if keyboard_check_pressed(vk_shift)
	room_goto(rm_punish_room);*/
	
if keyboard_check_pressed(vk_escape) and room != rm_main_menu
{
	var _target = rm_main_menu;
	transitionRoomStart(_target, sq_roomTransOut, sq_roomTransIn);
	o_game_manager.inTransition = true;

	alarm[4] = 50;
}
	
if inTransition == true
{
	cursor_sprite = noone;
}
else
	cursor_sprite = cursor_display;