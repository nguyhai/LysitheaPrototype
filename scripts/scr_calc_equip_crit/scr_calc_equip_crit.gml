/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalcrit = 0;$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 10; j < 11; j ++) { $(13_10)		if global.inventory[i,10] > 0 {$(13_10)			totalcrit = totalcrit + global.inventory[i,10];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totalcrit$(13_10)$(13_10)"
/// @description Execute Code

totalcrit = 0;

for (i = 63 ;i < 75; i++) {
	for (j = 10; j < 11; j ++) { 
		if global.inventory[i,10] > 0 {
			totalcrit = totalcrit + global.inventory[i,10];
		}
	}
	
}return totalcrit