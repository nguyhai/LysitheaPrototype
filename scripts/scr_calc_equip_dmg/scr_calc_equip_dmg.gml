/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793F0506
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)totalmaxdmg = 0;$(13_10)totalmindmg = 0$(13_10)$(13_10)// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 3; j < 4; j ++) { $(13_10)		if global.inventory[i,3] > 0 {$(13_10)			totalmaxdmg = totalmaxdmg + global.inventory[i,3];$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)for (i = 63 ;i < 75; i++) {$(13_10)	for (j = 2; j < 3; j ++) { $(13_10)		if global.inventory[i,2] > 0 {$(13_10)			totalmindmg = totalmindmg + global.inventory[i,2];$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)totaldmg = (totalmindmg + totalmaxdmg)/2$(13_10)$(13_10)return totaldmg$(13_10)$(13_10)"
/// @description Execute Code

totalmaxdmg = 0;
totalmindmg = 0

// We gotta loop through and use slot 3 (the max dmg) and if its above 0, then add it to totalmaxdmg
for (i = 63 ;i < 75; i++) {
	for (j = 3; j < 4; j ++) { 
		if global.inventory[i,3] > 0 {
			totalmaxdmg = totalmaxdmg + global.inventory[i,3];
		}
	}
}

for (i = 63 ;i < 75; i++) {
	for (j = 2; j < 3; j ++) { 
		if global.inventory[i,2] > 0 {
			totalmindmg = totalmindmg + global.inventory[i,2];
		}
	}
}

totaldmg = (totalmindmg + totalmaxdmg)/2

return totaldmg