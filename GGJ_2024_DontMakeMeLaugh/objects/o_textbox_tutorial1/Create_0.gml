//Put the textbox in front of everything
depth = -999;

scr_txtBoxInit(ft_dialogues, 700, 110, 15, 40, s_dialogue_background, 6/60, 0.5);

//Set font
//global.font_main = fDialogue;

/*textbox_width = 800;
textbox_height = 200;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;

txt_spr = sDialogue;
txt_img = 0;
txt_img_spd =  6/60;*/

page = 0;
page_number = 0;

//Array of texts
text[0] = "Throws paper balls on the board to score";
text_length[0] = string_length(text[0]);
/*draw_char = 0;
text_spd = 1;*/

setup = false;
can_change_dialogue = false;