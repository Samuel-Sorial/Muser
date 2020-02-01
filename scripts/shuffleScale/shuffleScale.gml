var temporaryList = ds_list_create();
		show_debug_message("The generated:");
for(i=0;i<8;i++){
	ds_list_add(temporaryList,global.generatedScale[i]);

	show_debug_message(global.generatedScale[i]);
}
ds_list_shuffle(temporaryList);
	show_debug_message("The shuffled:");
for(i=0;i<8;i++){
	global.shuffledScale[i] = ds_list_find_value(temporaryList,i);
	show_debug_message(global.shuffledScale[i]);
}