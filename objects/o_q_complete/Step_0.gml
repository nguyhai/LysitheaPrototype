/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09F73F94
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)x = o_player.x;$(13_10)y = o_player.y -35;$(13_10)$(13_10)if (image_alpha != target_image_alpha){$(13_10)	// Approach the target image alpha$(13_10)	image_alpha = approach (image_alpha, target_image_alpha, .01);$(13_10)} else{$(13_10)	if (image_alpha == 1){$(13_10)		target_image_alpha = 0;$(13_10)	} else {$(13_10)		instance_destroy();$(13_10)	}$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
x = o_player.x;
y = o_player.y -35;

if (image_alpha != target_image_alpha){
	// Approach the target image alpha
	image_alpha = approach (image_alpha, target_image_alpha, .01);
} else{
	if (image_alpha == 1){
		target_image_alpha = 0;
	} else {
		instance_destroy();
	}
}