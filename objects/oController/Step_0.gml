/// @description Insert description here
// You can write your code in this editor

with(oPlayButton){
	if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && !other.isPlaying){
		other.isPlaying = true;
		show_debug_message("button pressed");
		other.alarm[0] = 1;
		
		if(checkWin()){
			global.isWin = true;
		}
		if(!global.isShuffled){
			global.isShuffled = true;
		for(var i = 0; i < 8; i++){
			var obj = instance_find(oTile, i);
			obj.curr_state = state.shuffle;
		}
		}
		
		
	}
}