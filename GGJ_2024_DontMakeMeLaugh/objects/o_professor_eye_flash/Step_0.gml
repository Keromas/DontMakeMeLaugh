/// @description
if image_xscale < 2.3
	image_angle += 10;
else
	image_angle += 2;

image_xscale = lerp(image_xscale, 2.3, 0.06);
image_yscale = lerp(image_yscale, 2.3, 0.06);