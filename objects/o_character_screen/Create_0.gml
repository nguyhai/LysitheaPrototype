/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C1DE7D0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)globalvar showChar; // Display the character screen$(13_10)showChar = false;$(13_10)$(13_10)// Need something for inventory stats$(13_10)stats = -1;$(13_10)statrows = 4;$(13_10)statcolumns = 2;$(13_10)statspace = 30;$(13_10)// Creating another array to add some buttons for stats on the inventory screen$(13_10)for (i = 0; i < 8; i+=1){$(13_10)	//Create the slots$(13_10)	stats[i] = -1;$(13_10)	$(13_10)	stat_button[i] = instance_create_depth(0,0,0,o_character_stat_button); //$(13_10)	stat_button[i].slot = i;//Assign slot a variable so we can track it$(13_10)	$(13_10)	// Need these next coordinates so we can draw our item grid$(13_10)    stat_coordx[i] = 0;$(13_10)    stat_coordy[i] = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)//---- Create POOL stats for the removal of stat points when clicking the button$(13_10)str_pool = 0;$(13_10)dex_pool = 0;$(13_10)int_pool = 0;$(13_10)vit_pool = 0;$(13_10)$(13_10)// Need invisible buttons so we can hover over a stat and see it's information$(13_10)$(13_10)colspace = 25;$(13_10)infocolumns = 1$(13_10)$(13_10)for (q = 0; q < 12; q+=1){$(13_10)	//Create the slots$(13_10)	stats[q] = -1;$(13_10)	$(13_10)	info_button1[q] = instance_create_depth(0,0,0,o_character_info_col1); $(13_10)	info_button1[q].slot = q;//Assign slot a variable so we can track it$(13_10)	$(13_10)    info_coord1x[q] = 0;$(13_10)    info_coord1y[q] = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)for (w = 0; w < 12; w+=1){$(13_10)	//Create the slots$(13_10)	stats[w] = -1;$(13_10)	$(13_10)	info_button2[w] = instance_create_depth(0,0,0,o_character_info_col2); $(13_10)	info_button2[w].slot = w;//Assign slot a variable so we can track it$(13_10)$(13_10)    info_coord2x[w] = 0;$(13_10)    info_coord2y[w] = 0;$(13_10)	$(13_10)}"
/// @description Execute Code
globalvar showChar; // Display the character screen
showChar = false;

// Need something for inventory stats
stats = -1;
statrows = 4;
statcolumns = 2;
statspace = 30;
// Creating another array to add some buttons for stats on the inventory screen
for (i = 0; i < 8; i+=1){
	//Create the slots
	stats[i] = -1;
	
	stat_button[i] = instance_create_depth(0,0,0,o_character_stat_button); //
	stat_button[i].slot = i;//Assign slot a variable so we can track it
	
	// Need these next coordinates so we can draw our item grid
    stat_coordx[i] = 0;
    stat_coordy[i] = 0;
	
}

//---- Create POOL stats for the removal of stat points when clicking the button
str_pool = 0;
dex_pool = 0;
int_pool = 0;
vit_pool = 0;

// Need invisible buttons so we can hover over a stat and see it's information

colspace = 25;
infocolumns = 1

for (q = 0; q < 12; q+=1){
	//Create the slots
	stats[q] = -1;
	
	info_button1[q] = instance_create_depth(0,0,0,o_character_info_col1); 
	info_button1[q].slot = q;//Assign slot a variable so we can track it
	
    info_coord1x[q] = 0;
    info_coord1y[q] = 0;
	
}

for (w = 0; w < 12; w+=1){
	//Create the slots
	stats[w] = -1;
	
	info_button2[w] = instance_create_depth(0,0,0,o_character_info_col2); 
	info_button2[w].slot = w;//Assign slot a variable so we can track it

    info_coord2x[w] = 0;
    info_coord2y[w] = 0;
	
}