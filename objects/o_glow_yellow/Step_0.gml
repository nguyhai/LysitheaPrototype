/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47201DB2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (image_alpha != target_image_alpha){$(13_10)	// Approach the target image alpha$(13_10)	image_alpha = approach (image_alpha, target_image_alpha, .02);$(13_10)} else{$(13_10)	if (image_alpha == 1){$(13_10)		target_image_alpha = 0;$(13_10)	} $(13_10)	$(13_10)	if (image_alpha == 0){$(13_10)		target_image_alpha = 1;$(13_10)	$(13_10)	}$(13_10)	$(13_10)$(13_10)}$(13_10)$(13_10)alpha = image_alpha;$(13_10)"
/// @description Execute Code
if (image_alpha != target_image_alpha){
	// Approach the target image alpha
	image_alpha = approach (image_alpha, target_image_alpha, .02);
} else{
	if (image_alpha == 1){
		target_image_alpha = 0;
	} 
	
	if (image_alpha == 0){
		target_image_alpha = 1;
	
	}
	

}

alpha = image_alpha;