/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 487ADB2D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (current_image_alpha != target_image_alpha){$(13_10)	// Approach the target image alpha$(13_10)	current_image_alpha = approach (current_image_alpha, target_image_alpha, .03);$(13_10)} else{$(13_10)	if (current_image_alpha == 1){$(13_10)		target_image_alpha = 0;$(13_10)	} else if (current_image_alpha == 0){$(13_10)		target_image_alpha = 1;$(13_10)	}$(13_10)}$(13_10)$(13_10)if tooltip_alpha = 1 {$(13_10)	tooltip_alpha -= .001;$(13_10)}"
/// @description Execute Code
if (current_image_alpha != target_image_alpha){
	// Approach the target image alpha
	current_image_alpha = approach (current_image_alpha, target_image_alpha, .03);
} else{
	if (current_image_alpha == 1){
		target_image_alpha = 0;
	} else if (current_image_alpha == 0){
		target_image_alpha = 1;
	}
}

if tooltip_alpha = 1 {
	tooltip_alpha -= .001;
}