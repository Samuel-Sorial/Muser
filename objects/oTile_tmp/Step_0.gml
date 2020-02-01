/// @description Movement

if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && global.mouse_grabbed == noone){
	global.mouse_grabbed = self
	//ds_list_add(global.mouse_touching, self);
	/*
	with(oTile_tmp){
		if(place_meeting(x,y,other)){
			other.curr_state = state.idle;
		}
	}
	*/
}


if(global.mouse_grabbed == self){
	sprite_index = sTile_Moving;
	x = mouse_x;
	y = mouse_y;
	depth = -11;
}