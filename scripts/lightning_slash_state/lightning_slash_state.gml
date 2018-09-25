/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66FE4AF0
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)if !attacking {$(13_10)$(13_10)	// Note to self - you should make the ground and air attack completely seperate$(13_10)	// The air attack should be a weaker normal attack$(13_10)	$(13_10)	if (!place_meeting (x, y+1, o_solid)){$(13_10)	vspd += grav;$(13_10)	state = move_state$(13_10)	$(13_10)} else{$(13_10)$(13_10)	vspd = 0;$(13_10)	apply_friction(acc);$(13_10)	sprite_index = spr_atk;$(13_10)	image_index = 0;$(13_10)	image_speed = 1.5;$(13_10)	attacking = true;$(13_10)	alarm[2] = 30;$(13_10)	instance_create_depth(o_player.x, o_player.y, 0, o_lightning_slash)$(13_10)	$(13_10)}$(13_10)	$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n

if !attacking {

	// Note to self - you should make the ground and air attack completely seperate
	// The air attack should be a weaker normal attack
	
	if (!place_meeting (x, y+1, o_solid)){
	vspd += grav;
	state = move_state
	
} else{

	vspd = 0;
	apply_friction(acc);
	sprite_index = spr_atk;
	image_index = 0;
	image_speed = 1.5;
	attacking = true;
	alarm[2] = 30;
	instance_create_depth(o_player.x, o_player.y, 0, o_lightning_slash)
	
}
	
}