/// @description Movement

if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && global.mouse_grabbed == noone){
	global.mouse_grabbed = self;
	curr_state = state.idle;
}

if(global.mouse_grabbed == self){
	x = mouse_x;
	y = mouse_y;
	depth = -11;
}

if(curr_state == state.shuffle){
	x = lerp(x, x_new, 0.1);
}