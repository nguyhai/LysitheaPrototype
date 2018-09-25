/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 58460B18
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)listcheck = 0;$(13_10)image_alpha = 0;$(13_10)target_image_alpha = 1$(13_10)startdraw = false;$(13_10)//text_alpha = 1;$(13_10)timerstart = false;$(13_10)timer = 0;$(13_10)$(13_10)globalvar showPickup; // Display the inventory$(13_10)showPickup = false;$(13_10)$(13_10)// We only need the index and the stack count$(13_10)for (i = 0; i < 30; i+=1){$(13_10)	global.showPickup[i] = -1;$(13_10)$(13_10)	for (j = 0; j < 3; j++){$(13_10)		global.showPickup[i,j] = -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
listcheck = 0;
image_alpha = 0;
target_image_alpha = 1
startdraw = false;
//text_alpha = 1;
timerstart = false;
timer = 0;

globalvar showPickup; // Display the inventory
showPickup = false;

// We only need the index and the stack count
for (i = 0; i < 30; i+=1){
	global.showPickup[i] = -1;

	for (j = 0; j < 3; j++){
		global.showPickup[i,j] = -1;
	}
}