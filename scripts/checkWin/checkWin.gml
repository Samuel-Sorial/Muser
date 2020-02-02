/*
isCorrect = true;
for(i=0;i<8;i++){
	if(global.generatedScale[i]!=global.shuffledScale[i]){
		isCorrect = false
		break;
	}
}
return isCorrect;
*/

for (var i = 0; i < 8; i++){
	if(instance_find(oTile, i).x == global.correct_pos[i]){
		show_debug_message("WIN");
		return true;
	}else{
		return false;
	}
}