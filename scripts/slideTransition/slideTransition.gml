/// @desc slideTransition(mode, targetroom)
/// @arg mode sets transition mode between restart and goto
/// @arg targetroom sets target room when using the goto mode.

with(oTransition){
	global.leaveScreen = false;
	mode = argument[0];
	if(argument_count > 1){
		target = argument[1]
	}
}