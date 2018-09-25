/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Calculate $(13_10)resist = 0;$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)$(13_10)	//Update J to tbe the slot number$(13_10)	$(13_10)	for (j = 17; j < 18; j ++) { $(13_10)		if global.inventory[i,17] > 0 {$(13_10)			resist = resist + global.inventory[i,17];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return resist$(13_10)$(13_10)"
/// @description Execute Code
// Calculate 
resist = 0;

for (i = 63 ;i < 75; i++) {

	//Update J to tbe the slot number
	
	for (j = 17; j < 18; j ++) { 
		if global.inventory[i,17] > 0 {
			resist = resist + global.inventory[i,17];
		}
	}
	
}return resist