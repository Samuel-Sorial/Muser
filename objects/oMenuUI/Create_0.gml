/// @desc GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();


menu_x = gui_width*.375;
menu_y = gui_height*.81;
menu_font = fMenu;
menu_itemmargin = font_get_size(menu_font)*3.375;
menu_committed = -1;
menu_control = true;

menu_num[3] = "Level Select";
menu_num[2] = "Profile";
menu_num[1] = "Settings";
menu_num[0] = "Quit";

menu_items = array_length_1d(menu_num);

menu_cursor = menu_items-1;

global.cursor_y =  menu_y - (menu_itemmargin * (menu_items-1));
global.cursor_x = menu_x - menu_x*.25;