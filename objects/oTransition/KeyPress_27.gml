/// @desc Return to previous screen

if room == rLevelSelect slideTransition(TRANS_MODE.GOTO, rMainMenu);
if room == rGameSpace slideTransition(TRANS_MODE.GOTO, rLevelSelect);