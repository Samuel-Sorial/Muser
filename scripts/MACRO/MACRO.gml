gml_pragma("global", "MACRO()");

// Mouse Control Variables
global.mouse_grabbed = noone;

// Transition Variables
global.leaveLevel = false;
global.target = room0;

//Note Lists
global.allnotes = [];
global.allnotes[0] = piano_C;
global.allnotes[1] = piano_Db;
global.allnotes[2] = piano_D;
global.allnotes[3] = piano_Eb;
global.allnotes[4] = piano_E;
global.allnotes[5] = piano_F;
global.allnotes[6] = piano_Gb;
global.allnotes[7] = piano_G;
global.allnotes[8] = piano_Ab;
global.allnotes[9] = piano_A;
global.allnotes[10] = piano_Bb;
global.allnotes[11] = piano_B;
global.allnotes[12] = piano_C1;
global.allnotes[13] = piano_Db1;
global.allnotes[14] = piano_D1;
global.allnotes[15] = piano_Eb1;
global.allnotes[16] = piano_E1;
global.allnotes[17] = piano_F1;
global.allnotes[18] = piano_Gb1;
global.allnotes[19] = piano_G1;
global.allnotes[20] = piano_Ab1;
global.allnotes[21] = piano_A1;
global.allnotes[22] = piano_Bb1;
global.allnotes[23] = piano_B1;
//Scale Lists
global.allScales = [];
global.allScales[0] = "Major";
global.allScales[1] = "Minor";

// All notes map

sharpNotesMap = ds_map_create();
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


//Flat notes map 
flatNotesMap = ds_map_create();
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
	ds_map_add(sharpNotesMap, global.sharpNotes[i]+"0", global.allnotes[i]);
	ds_map_add(flatNotesMap, global.flatNotes[i]+"0", global.allnotes[i]);
	ds_map_add(sharpNotesMap, global.sharpNotes[i]+"1", global.allnotes[i+12]);
	ds_map_add(flatNotesMap, global.flatNotes[i]+"1", global.allnotes[i+12]);
}

//CurrentScale array after randomization
global.currentScale=[];