/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalint = 0;$(13_10)$(13_10)// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 34; j < 35; j ++) { $(13_10)		if global.inventory[i,34] > 0 {$(13_10)			totalint = totalint + global.inventory[i,34];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totalint$(13_10)$(13_10)"
/// @description Execute Code

totalint = 0;

// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg
for (i = 63 ;i < 75; i++) {
	for (j = 34; j < 35; j ++) { 
		if global.inventory[i,34] > 0 {
			totalint = totalint + global.inventory[i,34];
		}
	}
	
}return totalint