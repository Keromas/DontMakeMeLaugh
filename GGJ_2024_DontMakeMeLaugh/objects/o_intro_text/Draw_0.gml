/// @description draw text
draw_set_font(ft_intro_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed_color(room_width / 2, room_height / 2, text, 10, 500, 1, 1, 0, c_white, c_white, c_white, c_white, image_alpha);
