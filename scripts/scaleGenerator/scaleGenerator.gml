randomize();

outputList = [];
spacing = [];
majorSpacing = [];
majorSpacing[0]=0;
majorSpacing[1]=2;
majorSpacing[2]=4;
majorSpacing[3]=5;
majorSpacing[4]=7;
majorSpacing[5]=9;
majorSpacing[6]=11;
majorSpacing[7]=12;

minorSpacing = [];
minorSpacing[0]=0;
minorSpacing[1]=2;
minorSpacing[2]=3;
minorSpacing[3]=5;
minorSpacing[4]=7;
minorSpacing[5]=8;
minorSpacing[6]=10;
minorSpacing[7]=12;

scaleNum = irandom_range(0,1);
rootNum = irandom_range(0,11);
currRoot = global.allnotes[rootNum];
currType = global.allScales[scaleNum];

if(scaleNum==0){
	spacing = majorSpacing;
}else{
	spacing = minorSpacing;
}

for(i=0; i<8; i++){
	outputList[i] = rootNum + spacing[i];
}

global.generatedScale = outputList;
global.root_name = ds_map_find_value(global.transposeMap, currRoot);
show_debug_message(global.root_name);
global.root_name = string_delete(global.root_name,string_length(global.root_name),1);
global.scale_type = currType;

