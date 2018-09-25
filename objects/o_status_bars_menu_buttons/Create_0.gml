/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1833F74E
/// @DnDArgument : "code" "/// @description Status bars and Buttons$(13_10)draw_health = 0;$(13_10)draw_mana = 0;$(13_10)draw_exp = 0;$(13_10)$(13_10)columns = 3$(13_10)space = 115;$(13_10)// Need an array to create 6 buttons$(13_10)for (i = 0; i < 6; i++){$(13_10)	//Create the slots$(13_10)	global.uibutton[i] = -1;$(13_10)	$(13_10)	button[i] = instance_create_depth(0,0,0,o_menu_button); //Create inventory buttons for each slot$(13_10)	button[i].slot = i;//Assign slot a variable so we can track it$(13_10)	$(13_10)   // Need these next coordinates so we can draw our item grid$(13_10)   coordx[i] = 0;$(13_10)   coordy[i] = 0;$(13_10)}$(13_10)$(13_10)"
/// @description Status bars and Buttons
draw_health = 0;
draw_mana = 0;
draw_exp = 0;

columns = 3
space = 115;
// Need an array to create 6 buttons
for (i = 0; i < 6; i++){
	//Create the slots
	global.uibutton[i] = -1;
	
	button[i] = instance_create_depth(0,0,0,o_menu_button); //Create inventory buttons for each slot
	button[i].slot = i;//Assign slot a variable so we can track it
	
   // Need these next coordinates so we can draw our item grid
   coordx[i] = 0;
   coordy[i] = 0;
}