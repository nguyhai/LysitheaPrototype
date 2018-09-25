/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A1BFEA4
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// This gets the last image index number$(13_10)image_index = image_number -1;$(13_10)$(13_10)// Apply gravity$(13_10)if (!place_meeting (x, y+1, o_solid)){$(13_10)	vspd += grav;$(13_10)} else{$(13_10)	vpsd = 0;$(13_10)	$(13_10)	// Use Friction$(13_10)	apply_friction(acc);$(13_10)	$(13_10)	//Check for idle state - If not moving, then change back to idle stat$(13_10)	if (hspd == 0 && vspd == 0){$(13_10)		state = spider_idle_state;$(13_10)		alarm[0] = 30;$(13_10)		image_speed = 0;$(13_10)		image_index = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Maker sure spider faces right direction$(13_10)if (hspd !=0) {$(13_10)	image_xscale = sign(hspd);$(13_10)}$(13_10)$(13_10)//Move the spider$(13_10)horizontal_move_bounce(o_solid);$(13_10)"

{
	/// @description Execute Code\n

// This gets the last image index number
image_index = image_number -1;

// Apply gravity
if (!place_meeting (x, y+1, o_solid)){
	vspd += grav;
} else{
	vpsd = 0;
	
	// Use Friction
	apply_friction(acc);
	
	//Check for idle state - If not moving, then change back to idle stat
	if (hspd == 0 && vspd == 0){
		state = spider_idle_state;
		alarm[0] = 30;
		image_speed = 0;
		image_index = 0;
	}
}

// Maker sure spider faces right direction
if (hspd !=0) {
	image_xscale = sign(hspd);
}

//Move the spider
horizontal_move_bounce(o_solid);

}

