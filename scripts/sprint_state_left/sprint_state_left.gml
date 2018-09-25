/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16DF72D6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var jump = keyboard_check_pressed(vk_space);$(13_10)var sprint_speed = -8 $(13_10)hspd = sprint_speed;$(13_10)move(o_solid);$(13_10)$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)	sprite_index = spr_jump;$(13_10)	image_speed = 0;$(13_10)	image_index = (vspd > 0);$(13_10)}$(13_10)$(13_10)if (place_meeting (x, y+vspd, o_solid) && vspd > 0) {$(13_10)$(13_10)	// Add sound to the jump$(13_10)	audio_play_sound (snd_footsteps_heavy, 9, false);$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(vk_space){$(13_10)	jumps -=1;$(13_10)}$(13_10)$(13_10)if (jump) && (jumps > 0) {$(13_10)		sprite_index = spr_jump;$(13_10)		image_speed = 0;$(13_10)		image_index = (vspd > 0);$(13_10)		jumps-=1;$(13_10)		vspd = -12.5; // Jump code - if player on ground, spacebar sets vspd to -16	$(13_10)		audio_play_sound(snd_jump, 5, false); // Play the jump sound$(13_10)		hspd = sprint_speed;$(13_10)$(13_10)}	else if (place_meeting(x,y+1,o_solid)){$(13_10)	sprite_index = spr_run;$(13_10)	image_speed = 1;$(13_10)	$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y+1,o_solid)) {$(13_10)	jumps = 1; // Defines max number of jumps. If touching ground, number of jumps I can do is 2$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(vk_left) and !jump {$(13_10)	state = move_state;$(13_10)	sprinting = false$(13_10)}$(13_10)$(13_10)if !keyboard_check(vk_left){$(13_10)	state = move_state;$(13_10)	sprinting = false$(13_10)}$(13_10)$(13_10)if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_up){$(13_10)	state = move_state;$(13_10)	sprinting = false$(13_10)}$(13_10)$(13_10)if stamina <= 0 {$(13_10)	state = move_state;$(13_10)	sprinting = false$(13_10)}"
/// @description Execute Code
var jump = keyboard_check_pressed(vk_space);
var sprint_speed = -8 
hspd = sprint_speed;
move(o_solid);


if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
	sprite_index = spr_jump;
	image_speed = 0;
	image_index = (vspd > 0);
}

if (place_meeting (x, y+vspd, o_solid) && vspd > 0) {

	// Add sound to the jump
	audio_play_sound (snd_footsteps_heavy, 9, false);
	
}

if keyboard_check_released(vk_space){
	jumps -=1;
}

if (jump) && (jumps > 0) {
		sprite_index = spr_jump;
		image_speed = 0;
		image_index = (vspd > 0);
		jumps-=1;
		vspd = -12.5; // Jump code - if player on ground, spacebar sets vspd to -16	
		audio_play_sound(snd_jump, 5, false); // Play the jump sound
		hspd = sprint_speed;

}	else if (place_meeting(x,y+1,o_solid)){
	sprite_index = spr_run;
	image_speed = 1;
	
}

if (place_meeting(x,y+1,o_solid)) {
	jumps = 1; // Defines max number of jumps. If touching ground, number of jumps I can do is 2
	
}

if keyboard_check_released(vk_left) and !jump {
	state = move_state;
	sprinting = false
}

if !keyboard_check(vk_left){
	state = move_state;
	sprinting = false
}

if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_up){
	state = move_state;
	sprinting = false
}

if stamina <= 0 {
	state = move_state;
	sprinting = false
}