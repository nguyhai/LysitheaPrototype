/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09F73F94
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (image_alpha != target_image_alpha){$(13_10)	// Approach the target image alpha$(13_10)	image_alpha = approach (image_alpha, target_image_alpha, .01);$(13_10)} else{$(13_10)	if (image_alpha == 1){$(13_10)		target_image_alpha = 0;$(13_10)	} else {$(13_10)		instance_destroy();$(13_10)	}$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code

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

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 72E3170E
/// @DnDArgument : "x" "camera_get_view_x(view_camera)+480"
/// @DnDArgument : "y" "camera_get_view_y(view_camera)+72"
x = camera_get_view_x(view_camera)+480;
y = camera_get_view_y(view_camera)+72;