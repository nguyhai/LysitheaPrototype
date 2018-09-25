/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totaldef = 0;$(13_10)$(13_10)// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 15; j < 16; j ++) { $(13_10)		if global.inventory[i,15] > 0 {$(13_10)			totaldef = totaldef + global.inventory[i,15];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totaldef$(13_10)$(13_10)"
/// @description Execute Code

totaldef = 0;

// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg
for (i = 63 ;i < 75; i++) {
	for (j = 15; j < 16; j ++) { 
		if global.inventory[i,15] > 0 {
			totaldef = totaldef + global.inventory[i,15];
		}
	}
	
}return totaldef