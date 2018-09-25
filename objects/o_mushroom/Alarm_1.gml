/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28BC849D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if flashing = true {$(13_10)$(13_10)	if image_alpha = .95 {$(13_10)		image_alpha = 0.1;$(13_10)	} else {$(13_10)		image_alpha = .95;$(13_10)	}$(13_10)	$(13_10)	alarm[1] = 3;$(13_10)}$(13_10)"
/// @description Execute Code
if flashing = true {

	if image_alpha = .95 {
		image_alpha = 0.1;
	} else {
		image_alpha = .95;
	}
	
	alarm[1] = 3;
}