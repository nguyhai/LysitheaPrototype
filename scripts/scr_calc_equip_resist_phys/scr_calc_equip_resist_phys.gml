/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Calculate $(13_10)physresist = 0;$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)$(13_10)	//Update J to tbe the slot number$(13_10)	$(13_10)	for (j = 16; j < 17; j ++) { $(13_10)		if global.inventory[i,16] > 0 {$(13_10)			physresist = physresist + global.inventory[i,16];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return physresist$(13_10)$(13_10)"
/// @description Execute Code
// Calculate 
physresist = 0;

for (i = 63 ;i < 75; i++) {

	//Update J to tbe the slot number
	
	for (j = 16; j < 17; j ++) { 
		if global.inventory[i,16] > 0 {
			physresist = physresist + global.inventory[i,16];
		}
	}
	
}return physresist