/// @description 
if can_fade_out == true
{
	image_alpha -= 0.06;
}

if image_alpha <= 0
{
	instance_destroy();
}