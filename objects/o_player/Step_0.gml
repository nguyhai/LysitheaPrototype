/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11B1782C
/// @DnDArgument : "code" "//Control Players States$(13_10)$(13_10)if canpickup = false {$(13_10)	if pickuptimer <7 {$(13_10)		pickuptimer += 1;$(13_10)	}$(13_10)	$(13_10)	if pickuptimer = 7 {$(13_10)		canpickup = true;$(13_10)	}$(13_10)}$(13_10)$(13_10)// If not in combat, reload all weapons.$(13_10)if in_combat = false {$(13_10)	alarm[8] = 1;$(13_10)}$(13_10)$(13_10)// DIE$(13_10)if (o_player_stats.stats[? "health"]) <=0 {$(13_10)	state = death_state;$(13_10)}$(13_10)$(13_10)//Control room persistence if i enter a new room$(13_10)$(13_10)if room_persistent = false {$(13_10)	room_persistent = true;$(13_10)}$(13_10)$(13_10)$(13_10)// If touching ground, jumps = 2. If we start falling without jumping,$(13_10)// Then number of jumps should be 1 so we can't double jump if walking$(13_10)// off of a ledge. $(13_10)if (jumps = 2 and vspd > 3 and falling = 0) {$(13_10)	falling = 1;$(13_10)	jumps = 1;$(13_10)} else if vspd = 0 {$(13_10)	falling = 0;$(13_10)}$(13_10)$(13_10)// If dash timer is above 0, then decrease it every step$(13_10)if right_dash_timer > 0 {$(13_10)	right_dash = 0;$(13_10)	right_dash_timer -= 1;$(13_10)} else {$(13_10)	right_dash = 1;$(13_10)}$(13_10)$(13_10)if left_dash_timer > 0 {$(13_10)	left_dash = 0;$(13_10)	left_dash_timer -= 1;$(13_10)} else {$(13_10)	left_dash = 1;$(13_10)}$(13_10)$(13_10)// If dash timer is 0, then dash = 1 and I cant dash$(13_10)if right_dash_timer == 0 or left_dash_timer ==0 {$(13_10)	dash = 1;$(13_10)}$(13_10)$(13_10)script_execute(state);$(13_10)$(13_10)// Stamina recovery for sprint$(13_10)if stamina < maxstamina {$(13_10)	stamina +=0.165;$(13_10)	$(13_10)}$(13_10)$(13_10)if sprinting = true {$(13_10)	stamina -=0.33;$(13_10)}$(13_10)$(13_10)if stamina <=0 {$(13_10)	sprinting = false;$(13_10)}$(13_10)$(13_10)if in_combat = true {$(13_10)	sprinting = false$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// Testing Cutscene functions$(13_10)$(13_10)if following = false {$(13_10)	camera_set_view_target(view_camera[0],noone);$(13_10)	$(13_10)} else {$(13_10)	camera_set_view_target(view_camera[0],o_view);$(13_10)	$(13_10)}$(13_10)$(13_10)if state = wait_state1 {$(13_10)	cutscene_alpha += 0.05;$(13_10)	sprinting = false$(13_10)	$(13_10)} else {$(13_10)	cutscene_alpha = 0;$(13_10)}$(13_10)$(13_10)if topbarscale < 150 and state = wait_state1{$(13_10)	topbarscale = topbarscale + 4.5;$(13_10)} else if state = !wait_state1 and topbarscale > 0 {$(13_10)	topbarscale = topbarscale - 4.5;$(13_10)}$(13_10)if bottombarscale > -150 and state = wait_state1{$(13_10)	bottombarscale = bottombarscale - 4.5;$(13_10)} else if state = !wait_state1 and bottombarscale < 0 {$(13_10)	bottombarscale = bottombarscale + 4.5;$(13_10)}$(13_10)$(13_10)$(13_10)"
//Control Players States

if canpickup = false {
	if pickuptimer <7 {
		pickuptimer += 1;
	}
	
	if pickuptimer = 7 {
		canpickup = true;
	}
}

// If not in combat, reload all weapons.
if in_combat = false {
	alarm[8] = 1;
}

// DIE
if (o_player_stats.stats[? "health"]) <=0 {
	state = death_state;
}

//Control room persistence if i enter a new room

if room_persistent = false {
	room_persistent = true;
}


// If touching ground, jumps = 2. If we start falling without jumping,
// Then number of jumps should be 1 so we can't double jump if walking
// off of a ledge. 
if (jumps = 2 and vspd > 3 and falling = 0) {
	falling = 1;
	jumps = 1;
} else if vspd = 0 {
	falling = 0;
}

// If dash timer is above 0, then decrease it every step
if right_dash_timer > 0 {
	right_dash = 0;
	right_dash_timer -= 1;
} else {
	right_dash = 1;
}

if left_dash_timer > 0 {
	left_dash = 0;
	left_dash_timer -= 1;
} else {
	left_dash = 1;
}

// If dash timer is 0, then dash = 1 and I cant dash
if right_dash_timer == 0 or left_dash_timer ==0 {
	dash = 1;
}

script_execute(state);

// Stamina recovery for sprint
if stamina < maxstamina {
	stamina +=0.165;
	
}

if sprinting = true {
	stamina -=0.33;
}

if stamina <=0 {
	sprinting = false;
}

if in_combat = true {
	sprinting = false
}





// Testing Cutscene functions

if following = false {
	camera_set_view_target(view_camera[0],noone);
	
} else {
	camera_set_view_target(view_camera[0],o_view);
	
}

if state = wait_state1 {
	cutscene_alpha += 0.05;
	sprinting = false
	
} else {
	cutscene_alpha = 0;
}

if topbarscale < 150 and state = wait_state1{
	topbarscale = topbarscale + 4.5;
} else if state = !wait_state1 and topbarscale > 0 {
	topbarscale = topbarscale - 4.5;
}
if bottombarscale > -150 and state = wait_state1{
	bottombarscale = bottombarscale - 4.5;
} else if state = !wait_state1 and bottombarscale < 0 {
	bottombarscale = bottombarscale + 4.5;
}