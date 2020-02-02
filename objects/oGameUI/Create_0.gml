/// @desc GUI/Vars/Menu setup

scaleGenerator();
shuffleScale();

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

lvl_x = gui_width * .225;
lvl_y = gui_height * .2;
//lvl_y_target = gui_height/3;
lvl_txt = "Difficulty Level: "+global.curr_level;

scale_x = gui_width * .265;
scale_y = gui_height * .235;
scale_txt = global.root_name + " " + global.scale_type;

win_x = gui_width *.5;
win_y = gui_height +200;
win_y_target = gui_height * .5;
win_speed = 10;
win_txt = "Success!"