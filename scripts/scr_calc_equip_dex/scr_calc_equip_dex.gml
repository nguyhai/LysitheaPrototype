/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totaldex = 0;$(13_10)$(13_10)// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg$(13_10)for (i = 33 ;i < 75; i++) {$(13_10)	for (j = 33; j < 34; j ++) { $(13_10)		if global.inventory[i,33] > 0 {$(13_10)			totaldex = totaldex + global.inventory[i,33];$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}return totaldex$(13_10)$(13_10)"
/// @description Execute Code

totaldex = 0;

// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg
for (i = 33 ;i < 75; i++) {
	for (j = 33; j < 34; j ++) { 
		if global.inventory[i,33] > 0 {
			totaldex = totaldex + global.inventory[i,33];
		}
	}
	
}return totaldex