/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09F73F94
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if room != rm_town {$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)//x = camera_get_view_x(view_camera)+400;$(13_10)//y = camera_get_view_y(view_camera)+200;$(13_10)$(13_10)$(13_10)if (image_alpha != target_image_alpha){$(13_10)	// Approach the target image alpha$(13_10)	image_alpha = approach (image_alpha, target_image_alpha, .005);$(13_10)} else{$(13_10)	if (image_alpha == 1){$(13_10)		target_image_alpha = 0;$(13_10)	} else {$(13_10)		instance_destroy();$(13_10)	}$(13_10)}$(13_10)$(13_10)alpha = image_alpha;$(13_10)"
/// @description Execute Code
if room != rm_town {
	instance_destroy();
}

//x = camera_get_view_x(view_camera)+400;
//y = camera_get_view_y(view_camera)+200;


if (image_alpha != target_image_alpha){
	// Approach the target image alpha
	image_alpha = approach (image_alpha, target_image_alpha, .005);
} else{
	if (image_alpha == 1){
		target_image_alpha = 0;
	} else {
		instance_destroy();
	}
}

alpha = image_alpha;