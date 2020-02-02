/// @desc Control Menu & Animate text

//Keyboard controls
if(menu_control){
	if (keyboard_check_pressed(vk_up)){
		menu_cursor++;
		global.cursor_y -= menu_itemmargin;
		if(menu_cursor >= menu_items){
			menu_cursor = 0;
			global.cursor_y = menu_y;
		}
	}
	
	if (keyboard_check_pressed(vk_down)){
		menu_cursor--;
		global.cursor_y += menu_itemmargin;
		if(menu_cursor < 0){
			menu_cursor = menu_items-1;
			global.cursor_y = menu_y - (menu_itemmargin * (menu_items-1));
		}
	}
	
	if(keyboard_check_pressed(vk_enter)){
		menu_committed = menu_cursor;
		menu_control = false;
	}
	
}

if(menu_committed != -1){
	slideTransition(TRANS_MODE.GOTO, rGameSpace);
	global.curr_level = global.levelNames[menu_committed];
}