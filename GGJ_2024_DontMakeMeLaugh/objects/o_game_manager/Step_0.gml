if keyboard_check_pressed(vk_space)
{
	instance_create_layer(mouse_x, mouse_y, "Instances", o_laugh_button);
}

if keyboard_check_pressed(vk_shift)
	room_goto(rm_punish_room);