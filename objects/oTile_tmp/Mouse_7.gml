/// @description Insert description here
// You can write your code in this editor
scaleGenerator();
shuffleScale();
global.mouse_grabbed = noone;
depth = -10;
sprite_index = sTile_Idle;

with(oContainer){
	if(place_meeting(x,y, other) && !isOccupied){
		isOccupied = !isOccupied;
		occupiedBy = other;
		other.x = x;
		other.y = y;
	}
}