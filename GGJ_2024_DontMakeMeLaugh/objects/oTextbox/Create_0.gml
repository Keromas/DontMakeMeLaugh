//Put the textbox in front of everything
depth = -999;

scr_txtBoxInit(fDialogue, 300, 64, 8, 12, sDialogue, 6/60, 0.8);

//Set font
//global.font_main = fDialogue;

/*textbox_width = 300;
textbox_height = 64;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;

txt_spr = sDialogue;
txt_img = 0;
txt_img_spd =  6/60;*/

page = 0;
page_number = 0;

//Array of texts
text[0] = "Salut!";
text[1] = "Test de dialogue";
text[2] = "1234";
text[3] = "est ce que ça marche ?";
text_length[0] = string_length(text[0]);
/*draw_char = 0;
text_spd = 1;*/

setup = false;