/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07F2A396
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalregen = 0;$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 14; j < 15; j ++) { $(13_10)		if global.inventory[i,14] > 0 {$(13_10)			totalregen = totalregen + global.inventory[i,14];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)} return totalregen$(13_10)$(13_10)"
/// @description Execute Code

totalregen = 0;

for (i = 63 ;i < 75; i++) {
	for (j = 14; j < 15; j ++) { 
		if global.inventory[i,14] > 0 {
			totalregen = totalregen + global.inventory[i,14];
		}
	}
	
} return totalregen