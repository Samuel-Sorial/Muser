/// @desc Control Menu & Animate text

// Item ease in

menu_x += (menu_x_target - menu_x) / menu_speed;
title_y += (title_y_target - title_y) / menu_speed;
subtitle_y += (subtitle_y_target - subtitle_y) / menu_speed;

//Keyboard controls

if(menu_control){
	if (keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items){
			menu_cursor = 0;
		}
	}
	
	if (keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if(menu_cursor < 0){
			menu_cursor = menu_items-1;
		}
	}
	
	if(keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_width+450;
		menu_committed = menu_cursor;
		menu_control = false;
	}
	
}

if((menu_x > gui_width+400) && (menu_committed != -1)){
	switch(menu_committed){
		case 2: default: slideTransition(TRANS_MODE.GOTO, room0); break;
		//case 1: slideTransition(TRANS_MODE.GOTO, /*INSERT ROOMNAME*/); break;
		case 0: game_end(); break;
	}
}