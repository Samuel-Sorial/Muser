gml_pragma("global", "MACRO()");

global.tileobj_list = [];
global.prog_count = 0;

global.correct_pos = [];
global.isWin = false;
global.isShuffled = false;

// Mouse Control Variables
global.mouse_grabbed = noone;

// Transition Variables
global.leaveScreen = false;
global.target = rLevelSelect;

//Note Lists
global.allnotes = [];
global.allnotes[0] = note00;
global.allnotes[1] = note01;
global.allnotes[2] = note02;
global.allnotes[3] = note03;
global.allnotes[4] = note04;
global.allnotes[5] = note05;
global.allnotes[6] = note06;
global.allnotes[7] = note07;
global.allnotes[8] = note08;
global.allnotes[9] = note09;
global.allnotes[10] = note10;
global.allnotes[11] = note11;
global.allnotes[12] = note12;
global.allnotes[13] = note13;
global.allnotes[14] = note14;
global.allnotes[15] = note15;
global.allnotes[16] = note16;
global.allnotes[17] = note17;
global.allnotes[18] = note18;
global.allnotes[19] = note19;
global.allnotes[20] = note20;
global.allnotes[21] = note21;
global.allnotes[22] = note22;
global.allnotes[23] = note23;

//Scale Lists
global.allScales = [];
global.allScales[0] = "Major";
global.allScales[1] = "Minor";	

global.sharpNotesMap = ds_map_create();
global.sharpNotes = [];
global.sharpNotes[0] = "C";
global.sharpNotes[1] = "C#";
global.sharpNotes[2] = "D";
global.sharpNotes[3] = "D#";
global.sharpNotes[4] = "E";
global.sharpNotes[5] = "F";
global.sharpNotes[6] = "F#";
global.sharpNotes[7] = "G";
global.sharpNotes[8] = "G#";
global.sharpNotes[9] = "A";
global.sharpNotes[10] = "A#";
global.sharpNotes[11] = "B";

global.flatNotesMap = ds_map_create();
global.flatNotes = [];
global.flatNotes[0] = "C";
global.flatNotes[1] = "Db";
global.flatNotes[2] = "D";
global.flatNotes[3] = "Eb";
global.flatNotes[4] = "E";
global.flatNotes[5] = "F";
global.flatNotes[6] = "Gb";
global.flatNotes[7] = "G";
global.flatNotes[8] = "Ab";
global.flatNotes[9] = "A";
global.flatNotes[10] = "Bb";
global.flatNotes[11] = "B";

// Iterate to map each note string to the note object
for(i=0; i<12; i++){
	ds_map_add(global.sharpNotesMap, global.allnotes[i],  global.sharpNotes[i]+"0");
	ds_map_add(global.flatNotesMap, global.allnotes[i], global.flatNotes[i]+"0");
	ds_map_add(global.sharpNotesMap, global.allnotes[i+12], global.sharpNotes[i]+"1");
	ds_map_add(global.flatNotesMap, global.allnotes[i+12],  global.flatNotes[i]+"1");
}

//CurrentScale array after randomization
global.generatedScale=[];
global.shuffledScale=[];

// UI Variables
global.transposeMap = global.flatNotesMap;

global.cursor_y = 0;
global.cursor_x = 0;

//levels
global.levelNames = [];
global.levelNames[3] = "Beginner";
global.levelNames[2] = "Intermediate";
global.levelNames[1] = "Advanced";
global.levelNames[0] = "Insane";

global.curr_level = global.levelNames[0];
global.root_name = "C";
global.scale_type = "minor";