// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_txtBoxInit(font, txtBox_width, txtBox_height, txt_border, txt_line_sep, txtBox_spr, txtBox_img_spd, txt_spd)
{
	global.font_main = font;

	textbox_width = txtBox_width;
	textbox_height = txtBox_height;
	border = txt_border;
	line_sep = txt_line_sep;
	line_width = textbox_width - border*2;

	txt_spr = txtBox_spr;
	txt_img = 0;
	txt_img_spd =  txtBox_img_spd;
	
	draw_char = 0;
	text_spd = txt_spd;
}

function scr_txtBoxfirstSetup(valign, halign, txt_x_offset)
{
	if(!setup)
	{
		setup = true;
		draw_set_font(global.font_main);
		draw_set_valign(valign);
		draw_set_halign(halign);
	
		page_number = array_length(text);
		for(var p = 0; p < page_number; p++)
		{
			text_length[p] = string_length(text[p]);
		
			text_x_offset[p] = txt_x_offset;
		}
	}
}

function scr_txtBoxDrawDialogue(_second_life)
{
	if setup == true
	{
		if(draw_char < text_length[page])
		{
			draw_char += text_spd;
			draw_char = clamp(draw_char,0,text_length[page]);
		}
		else
		{
			if alarm[0] <= 0
				alarm[0] = 60 * _second_life;
		}

		if can_change_dialogue == true
		{
			can_change_dialogue = false;
			if(draw_char == text_length[page])
			{
				if(page < page_number -1)
				{
					page++;
					draw_char = 0;
				}
				else
				{
					instance_destroy();
				}
			}
			else
			{
				draw_char = text_length[page];
			}
		}
	
		txt_img += txt_img_spd;
		txt_spr_w = sprite_get_width(txt_spr);
		txt_spr_h = sprite_get_height(txt_spr);

		draw_sprite_ext(txt_spr, txt_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/txt_spr_w, textbox_height/txt_spr_h, 0, c_white,1);

		var _drawtext = string_copy(text[page],1,draw_char);
		draw_text_ext(textbox_x + text_x_offset[page] + border,textbox_y + border,_drawtext,line_sep, line_width);
	}
}