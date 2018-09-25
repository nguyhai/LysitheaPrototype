/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61C9481A
/// @DnDArgument : "code" "columns = 8$(13_10)space = 42;$(13_10)// Need an array to create 8 buttons$(13_10)for (i = 0; i < 8; i++){$(13_10)	//Create the slots$(13_10)	global.skillbar[i] = -1;$(13_10)	$(13_10)	button[i] = instance_create_depth(0,0,0,o_skill_button); //Create skill buttons for each slot$(13_10)	button[i].slot = i;//Assign slot a variable so we can track it$(13_10)	$(13_10)   // Need these next coordinates so we can draw our item grid$(13_10)   coordx[i] = 0;$(13_10)   coordy[i] = 0;$(13_10)}$(13_10)"
columns = 8
space = 42;
// Need an array to create 8 buttons
for (i = 0; i < 8; i++){
	//Create the slots
	global.skillbar[i] = -1;
	
	button[i] = instance_create_depth(0,0,0,o_skill_button); //Create skill buttons for each slot
	button[i].slot = i;//Assign slot a variable so we can track it
	
   // Need these next coordinates so we can draw our item grid
   coordx[i] = 0;
   coordy[i] = 0;
}