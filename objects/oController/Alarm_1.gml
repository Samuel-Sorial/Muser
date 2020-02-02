/// @description Insert description here
// You can write your code in this editor
if(noteIndex < 8 && isPlaying){
	audio_play_sound(global.generatedScale[noteIndex], 1, false);
	noteIndex++
	if(noteIndex == 8){
	isPlaying = false;
	noteIndex = 0;
	show_debug_message("HI");
	}
}