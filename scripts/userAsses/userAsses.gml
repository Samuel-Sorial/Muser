isCorrect = true;
for(i=0;i<8;i++){
	if(global.generatedScale[i]!=global.shuffledScale[i]){
		isCorrect = false
		break;
	}
}
return isCorrect;


