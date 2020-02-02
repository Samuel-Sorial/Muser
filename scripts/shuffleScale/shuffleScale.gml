var temporaryList = ds_list_create();
for(i=0;i<8;i++){
	ds_list_add(temporaryList,global.generatedScale[i]);
}
ds_list_shuffle(temporaryList);
for(i=0;i<8;i++){
	global.shuffledScale[i] = ds_list_find_value(temporaryList,i);
}
audio_group_load(Piano);
for(i=0; i< array_length_1d(global.allnotes); i++){
	audio_play_sound(global.allnotes[i],1,false);
}