/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0793A372
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if timerstart = true {$(13_10)	timer+=1;$(13_10)} else {$(13_10)	timer = 0;$(13_10)}$(13_10)$(13_10)//if startdraw = true {$(13_10)$(13_10)	if (image_alpha != target_image_alpha){$(13_10)		// Approach the target image alpha$(13_10)		image_alpha = approach (image_alpha, target_image_alpha, .02);$(13_10)	} else{$(13_10)		if (image_alpha == 1){$(13_10)			itarget_image_alpha = 0;$(13_10)		} $(13_10)	}$(13_10)$(13_10)//}$(13_10)$(13_10)if global.showPickup[0]	= 1 {$(13_10)	listcheck = 1;$(13_10)	timerstart = true;$(13_10)} else {$(13_10)	listcheck = 0;$(13_10)	timerstart = false;$(13_10)}$(13_10)"
/// @description Execute Code

if timerstart = true {
	timer+=1;
} else {
	timer = 0;
}

//if startdraw = true {

	if (image_alpha != target_image_alpha){
		// Approach the target image alpha
		image_alpha = approach (image_alpha, target_image_alpha, .02);
	} else{
		if (image_alpha == 1){
			itarget_image_alpha = 0;
		} 
	}

//}

if global.showPickup[0]	= 1 {
	listcheck = 1;
	timerstart = true;
} else {
	listcheck = 0;
	timerstart = false;
}