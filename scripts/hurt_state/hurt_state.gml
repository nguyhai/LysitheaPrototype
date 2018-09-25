/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 073265D0
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)if o_player_stats.stats[? "health"] > 0 {$(13_10)// Set the sprite when damaged$(13_10)if (hspd != 0){$(13_10)	image_xscale = sign(hspd);$(13_10)} $(13_10)$(13_10)// Apply Gravity$(13_10)$(13_10)if (!place_meeting (x, y+1, o_solid)){$(13_10)	vspd += grav;$(13_10)	$(13_10)} else{$(13_10)	vspd = 0;$(13_10)	apply_friction(acc);$(13_10)}$(13_10)$(13_10)//move(o_solid);$(13_10)direction_move_bounce(o_solid);$(13_10)$(13_10)// Change back to the Move State once not moving again, and change blend to default$(13_10)$(13_10)if (hspd <= .5 && vspd <= .5){$(13_10)	image_blend = c_white;	$(13_10)	state = move_state;$(13_10)$(13_10)// ADD INVINCIBILITY FRAME HERE$(13_10)$(13_10)	$(13_10)}$(13_10)}"
/// @description Execute Code\n
if o_player_stats.stats[? "health"] > 0 {
// Set the sprite when damaged
if (hspd != 0){
	image_xscale = sign(hspd);
} 

// Apply Gravity

if (!place_meeting (x, y+1, o_solid)){
	vspd += grav;
	
} else{
	vspd = 0;
	apply_friction(acc);
}

//move(o_solid);
direction_move_bounce(o_solid);

// Change back to the Move State once not moving again, and change blend to default

if (hspd <= .5 && vspd <= .5){
	image_blend = c_white;	
	state = move_state;

// ADD INVINCIBILITY FRAME HERE

	
}
}