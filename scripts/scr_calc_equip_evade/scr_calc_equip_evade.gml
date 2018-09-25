/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalevade = 0;$(13_10)$(13_10)// We gotta loop through and use slot 53 (EVASION) and if its above 0, then add it to totalevade$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 53; j < 54; j ++) { $(13_10)		if global.inventory[i,53] > 0 {$(13_10)			totalevade = totalevade + global.inventory[i,53];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totalevade$(13_10)$(13_10)"
/// @description Execute Code

totalevade = 0;

// We gotta loop through and use slot 53 (EVASION) and if its above 0, then add it to totalevade
for (i = 63 ;i < 75; i++) {
	for (j = 53; j < 54; j ++) { 
		if global.inventory[i,53] > 0 {
			totalevade = totalevade + global.inventory[i,53];
		}
	}
	
}return totalevade