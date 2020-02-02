/// @description Draw Level Select

draw_set_font(fMenu);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
var offset = 3;

for(var i = 0; i < menu_items; i++){
	var menu_txt = menu_num[i];
	
	if(menu_cursor == i){
		var col = c_black;
	}else{
		var col = c_gray;
	} 
	
	var xx = menu_x;
	var yy = menu_y - menu_itemmargin * i;
	
	draw_set_color(c_white);
	draw_text(xx-offset,yy,menu_txt);
	draw_text(xx+offset,yy,menu_txt);
	draw_text(xx,yy+offset,menu_txt);
	draw_text(xx,yy-offset,menu_txt);
	draw_set_color(col);
	draw_text(xx,yy,menu_txt)
}

draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_set_font(fMenu);
draw_set_color(c_white);
draw_text(title_x-offset-2,title_y,title_txt);
draw_text(title_x+offset+2,title_y,title_txt);
draw_text(title_x,title_y+offset+2,title_txt);
draw_text(title_x,title_y-offset-2,title_txt);
draw_set_color(c_black);
draw_text(title_x,title_y,title_txt);