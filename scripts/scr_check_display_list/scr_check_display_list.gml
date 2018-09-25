/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 58C6D90D
/// @DnDArgument : "code" "/// @description Check Pickup List for items$(13_10)for (i = 0; i < 30; i++) {$(13_10)	if global.showPickup[i] = 1 {$(13_10)		return(1)$(13_10)	}$(13_10)$(13_10)}$(13_10)return(0)"
/// @description Check Pickup List for items
for (i = 0; i < 30; i++) {
	if global.showPickup[i] = 1 {
		return(1)
	}

}
return(0)