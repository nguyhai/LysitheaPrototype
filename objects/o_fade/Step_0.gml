/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1718143E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)if (image_alpha != target_image_alpha){$(13_10)	// Approach the target image alpha$(13_10)	image_alpha = approach (image_alpha, target_image_alpha, .035);$(13_10)} else{$(13_10)	if (image_alpha == 1){$(13_10)		// Go to the next room once alpha hits 1$(13_10)		target_image_alpha = 0;$(13_10)		room_goto(next_room);$(13_10)	} else {$(13_10)		instance_destroy();$(13_10)	}$(13_10)}"
/// @description Execute Code


if (image_alpha != target_image_alpha){
	// Approach the target image alpha
	image_alpha = approach (image_alpha, target_image_alpha, .035);
} else{
	if (image_alpha == 1){
		// Go to the next room once alpha hits 1
		target_image_alpha = 0;
		room_goto(next_room);
	} else {
		instance_destroy();
	}
}