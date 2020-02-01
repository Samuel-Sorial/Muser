/// @description 

if(isOccupied){
	with(occupiedBy){
		if(global.mouse_grabbed == self){
			other.isOccupied = !other.isOccupied;
			other.occupiedBy = 0;
		}
	}
}