for(var i = 0; i<8; i++){
	var obj = instance_find(oTile, i);
	obj.notename_ = ds_map_find_value(global.transposeMap,global.generatedScale[i]);
	for(var j = 0; j < 8; j++){
		if(obj.notename_ == ds_map_find_value(global.transposeMap,global.allnotes[global.shuffledScale[j]])){
			obj.x_new = 128 * j;
		}
	}
}

global.isShuffled = false;