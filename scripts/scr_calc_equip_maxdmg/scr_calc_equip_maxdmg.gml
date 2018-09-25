/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalmaxdmg = 0;$(13_10)$(13_10)// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg$(13_10)for (i = 64 ;i < 75; i++) {$(13_10)	for (j = 3; j < 4; j ++) { $(13_10)		if global.inventory[i,3] > 0 {$(13_10)			totalmaxdmg = totalmaxdmg + global.inventory[i,3];$(13_10)		}$(13_10)	}$(13_10)}$(13_10)return totalmaxdmg$(13_10)$(13_10)"
/// @description Execute Code

totalmaxdmg = 0;

// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg
for (i = 64 ;i < 75; i++) {
	for (j = 3; j < 4; j ++) { 
		if global.inventory[i,3] > 0 {
			totalmaxdmg = totalmaxdmg + global.inventory[i,3];
		}
	}
}
return totalmaxdmg