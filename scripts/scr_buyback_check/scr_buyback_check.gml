/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07020E93
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)"
/// @description Execute Code

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69EAA4F5
/// @DnDArgument : "code" "/// @description Checks to see if there are any free slots in shop buyback$(13_10)$(13_10)for (i=21;i<37;i++) {$(13_10)$(13_10)	if global.shop[i] = -1 {$(13_10)		return(1)$(13_10)		$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)return(0);$(13_10)"
/// @description Checks to see if there are any free slots in shop buyback

for (i=21;i<37;i++) {

	if global.shop[i] = -1 {
		return(1)
		
	}
	
}

return(0);