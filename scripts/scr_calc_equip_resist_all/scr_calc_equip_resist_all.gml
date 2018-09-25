/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Calculate $(13_10)bonus = 0;$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)$(13_10)	//Update J to tbe the slot number$(13_10)	$(13_10)	for (j = 22; j < 23; j ++) { $(13_10)		if global.inventory[i,22] > 0 {$(13_10)			bonus = bonus + global.inventory[i,22];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return bonus$(13_10)$(13_10)"
/// @description Execute Code
// Calculate 
bonus = 0;

for (i = 63 ;i < 75; i++) {

	//Update J to tbe the slot number
	
	for (j = 22; j < 23; j ++) { 
		if global.inventory[i,22] > 0 {
			bonus = bonus + global.inventory[i,22];
		}
	}
	
}return bonus