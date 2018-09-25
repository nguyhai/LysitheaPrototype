/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalstr = 0;$(13_10)$(13_10)// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 32; j < 33; j ++) { $(13_10)		if global.inventory[i,32] > 0 {$(13_10)			totalstr = totalstr + global.inventory[i,32];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totalstr$(13_10)$(13_10)"
/// @description Execute Code

totalstr = 0;

// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg
for (i = 63 ;i < 75; i++) {
	for (j = 32; j < 33; j ++) { 
		if global.inventory[i,32] > 0 {
			totalstr = totalstr + global.inventory[i,32];
		}
	}
	
}return totalstr