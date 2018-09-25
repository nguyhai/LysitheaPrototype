/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalvit = 0;$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 35; j < 36; j ++) { $(13_10)		if global.inventory[i,35] > 0 {$(13_10)			totalvit = totalvit + global.inventory[i,35];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totalvit$(13_10)$(13_10)"
/// @description Execute Code

totalvit = 0;

for (i = 63 ;i < 75; i++) {
	for (j = 35; j < 36; j ++) { 
		if global.inventory[i,35] > 0 {
			totalvit = totalvit + global.inventory[i,35];
		}
	}
	
}return totalvit