/// @description Insert description here
// You can write your code in this editor

draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_set_color(c_black);
draw_text(lvl_x,lvl_y,lvl_txt);
draw_text(scale_x, scale_y, scale_txt);

draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(win_x,win_y,win_txt);