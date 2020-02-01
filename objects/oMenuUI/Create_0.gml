/// @desc GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 128;

title_x = gui_width/2;
title_y = -128;
title_y_target = gui_height/3;
title_txt = "Placeholder2";

subtitle_x = gui_width/2;
subtitle_y = -256;
subtitle_y_target = gui_width/3
subtitle_txt = "Placeholder2";

menu_x = gui_width+300;
menu_y = gui_height - gui_margin/1.5;
menu_x_target = gui_width-gui_margin+50;
menu_speed = 25;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu_num[2] = "Level Select";
menu_num[1] = "Settings";
menu_num[0] = "Quit";

menu_items = array_length_1d(menu_num);

menu_cursor = menu_items-1;