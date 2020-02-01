 /// @description Draw menu

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var offset = 3;

for(var i = 0; i < menu_items; i++){
	var menu_txt = menu_num[i];
	
	if(menu_cursor == i){
		menu_txt = string_insert("> ", menu_txt, 0);
		var col = c_white;
	}else{
		var col = c_gray;
	} 
	
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * i * 1.5);
	
	draw_set_color(c_black);
	draw_text(xx-offset,yy,menu_txt);
	draw_text(xx+offset,yy,menu_txt);
	draw_text(xx,yy+offset,menu_txt);
	draw_text(xx,yy-offset,menu_txt);
	draw_set_color(col);
	draw_text(xx,yy,menu_txt)
}

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(c_yellow);
draw_text(title_x-offset-2,title_y,title_txt);
draw_text(title_x+offset+2,title_y,title_txt);
draw_text(title_x,title_y+offset+2,title_txt);
draw_text(title_x,title_y-offset-2,title_txt);
draw_set_color(c_black);
draw_text(title_x,title_y,title_txt);

draw_set_font(fText);
draw_set_color(c_yellow);
draw_text(subtitle_x-offset,subtitle_y,subtitle_txt);
draw_text(subtitle_x+offset,subtitle_y,subtitle_txt);
draw_text(subtitle_x,subtitle_y+offset,subtitle_txt);
draw_text(subtitle_x,subtitle_y-offset,subtitle_txt);
draw_set_color(c_black);
draw_text(subtitle_x,subtitle_y,subtitle_txt)