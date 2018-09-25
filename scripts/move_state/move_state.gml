/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0186B807
/// @DnDArgument : "code" "/// Move State$(13_10)$(13_10)var right = keyboard_check(vk_right);$(13_10)var left = keyboard_check(vk_left);$(13_10)var up = keyboard_check(vk_up);$(13_10)var down = keyboard_check(vk_down);$(13_10)var jump = keyboard_check_pressed(vk_space);$(13_10)var space_release = keyboard_check_released(vk_space)$(13_10)var atk = keyboard_check_pressed(ord("Z"));$(13_10)var multislash = keyboard_check_pressed(ord("X"));$(13_10)$(13_10)	$(13_10)// If attack button is pressed$(13_10)if (atk) and airatk > 0 {$(13_10)	state = atk_state;$(13_10)	in_combat = true;$(13_10)	alarm[6] = room_speed * 6; // Activate alarm to get out of combat$(13_10)	randomize();$(13_10)}$(13_10)$(13_10)// Add gravity when not touching the ground$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)$(13_10)	// Player is in the air - need to change sprite$(13_10)	sprite_index = spr_jump;$(13_10)	image_speed = 0;$(13_10)	image_index = (vspd > 0);$(13_10)	$(13_10)	// Control Jump Height$(13_10)	if (space_release && vspd < -6) {$(13_10)		vspd = -4;$(13_10)	}$(13_10)$(13_10)} else {$(13_10)	vspd = 0; // If you are touching the ground, vspd = 0$(13_10)$(13_10)$(13_10)	if (hspd == 0){$(13_10)		sprite_index = spr_idle;$(13_10)		image_speed = 1;$(13_10)	} else{$(13_10)		sprite_index = spr_walk;$(13_10)		image_speed = 1;$(13_10)	}$(13_10)	}$(13_10)$(13_10)// Reset the double jump and air attacks if touching the ground$(13_10)if (place_meeting(x,y+1,o_solid)) {$(13_10)	jumps = jumpsmax; // Defines max number of jumps. If touching ground, number of jumps I can do is 2$(13_10)	airatk = maxairatk // If touching ground, number of air atks I can do is 2$(13_10)	$(13_10)}$(13_10)$(13_10)//Double Jump logic$(13_10)if (!down && jump && (jumps > 0)){$(13_10)		jumps -= 1; // Set jumps to subtract one every time you jump$(13_10)		vspd = -12.5; // Jump code - if player on ground, spacebar sets vspd to -16	$(13_10)		audio_play_sound(snd_jump, 5, false); // Play the jump sound$(13_10)	}		$(13_10)$(13_10)// Play the landing sound$(13_10)if (place_meeting (x, y+vspd, o_solid) && vspd > 0) {$(13_10)$(13_10)	//audio_emitter_pitch (audio_em, random_range(.8, 1.2));$(13_10)	//audio_emitter_gain(audio_em, 0.2);$(13_10)	audio_play_sound (snd_footsteps_heavy, 9, false);$(13_10)	$(13_10)}$(13_10)$(13_10)//Control the player - move left and right$(13_10)if (right || left) {$(13_10)	hspd += (right-left)*acc;$(13_10)	hspd_dir = right - left;$(13_10)$(13_10)	if (hspd > spd) hspd = spd;$(13_10)	if (hspd < -spd) hspd = -spd;$(13_10)	$(13_10)} else {$(13_10)	apply_friction(acc);$(13_10)}$(13_10)$(13_10)//This makes your character face the direction you are moving$(13_10)if (hspd !=0){$(13_10)	image_xscale = sign(hspd);$(13_10)	$(13_10)	// Double tap dash logic$(13_10)	// While moving, Pressing left or right makes the dash timer equal to 25$(13_10)	if keyboard_check_pressed(vk_right) {$(13_10)		right_dash_timer = 15;$(13_10)		left_dash_timer = 0; // Set to 0 so that dashing only works when double tap one direction and not both$(13_10)	}		$(13_10)	$(13_10)	if keyboard_check_pressed(vk_left) {$(13_10)		left_dash_timer = 15;$(13_10)		right_dash_timer = 0; // Set to 0 so that dashing only works when double tap one direction and not both$(13_10)	}	$(13_10)	// Pressing left or right again$(13_10)	if keyboard_check_pressed(vk_right) && place_meeting(x,y+1,o_solid) && right_dash == 0 && dashcd ==0 and !keyboard_check(vk_left) and !left{$(13_10)		audio_play_sound(snd_dash, 4, false);$(13_10)		state = dash_right_state;$(13_10)		o_dash_bar.dash = 0;$(13_10)		alarm[4] = 20;	// dash duration$(13_10)		alarm[5] = room_speed*3; // the number is the dash cooldown in seconds$(13_10)		instance_create_depth(x,y,0,o_dash_dust);	$(13_10)		$(13_10)	}$(13_10)	if keyboard_check_pressed(vk_left) && place_meeting(x,y+1,o_solid) && left_dash == 0 && dashcd ==0 and !keyboard_check(vk_right) and !right{$(13_10)		audio_play_sound(snd_dash, 4, false);$(13_10)		state = dash_left_state;$(13_10)		o_dash_bar.dash = 0;$(13_10)		alarm[4] = 20; // dash duration$(13_10)		alarm[5] = room_speed*3; // the number is the dash cooldown in seconds$(13_10)		instance_create_depth(x,y,0,o_dash_dust);				$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)// Friction - If not pressing left or right, horizontal speed = 0$(13_10)/*$(13_10)if (!right && !left) {$(13_10)	hspd = 0;$(13_10)}$(13_10)*/$(13_10)$(13_10)move(o_solid);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// Move State

var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var jump = keyboard_check_pressed(vk_space);
var space_release = keyboard_check_released(vk_space)
var atk = keyboard_check_pressed(ord("Z"));
var multislash = keyboard_check_pressed(ord("X"));

	
// If attack button is pressed
if (atk) and airatk > 0 {
	state = atk_state;
	in_combat = true;
	alarm[6] = room_speed * 6; // Activate alarm to get out of combat
	randomize();
}

// Add gravity when not touching the ground
if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed

	// Player is in the air - need to change sprite
	sprite_index = spr_jump;
	image_speed = 0;
	image_index = (vspd > 0);
	
	// Control Jump Height
	if (space_release && vspd < -6) {
		vspd = -4;
	}

} else {
	vspd = 0; // If you are touching the ground, vspd = 0


	if (hspd == 0){
		sprite_index = spr_idle;
		image_speed = 1;
	} else{
		sprite_index = spr_walk;
		image_speed = 1;
	}
	}

// Reset the double jump and air attacks if touching the ground
if (place_meeting(x,y+1,o_solid)) {
	jumps = jumpsmax; // Defines max number of jumps. If touching ground, number of jumps I can do is 2
	airatk = maxairatk // If touching ground, number of air atks I can do is 2
	
}

//Double Jump logic
if (!down && jump && (jumps > 0)){
		jumps -= 1; // Set jumps to subtract one every time you jump
		vspd = -12.5; // Jump code - if player on ground, spacebar sets vspd to -16	
		audio_play_sound(snd_jump, 5, false); // Play the jump sound
	}		

// Play the landing sound
if (place_meeting (x, y+vspd, o_solid) && vspd > 0) {

	//audio_emitter_pitch (audio_em, random_range(.8, 1.2));
	//audio_emitter_gain(audio_em, 0.2);
	audio_play_sound (snd_footsteps_heavy, 9, false);
	
}

//Control the player - move left and right
if (right || left) {
	hspd += (right-left)*acc;
	hspd_dir = right - left;

	if (hspd > spd) hspd = spd;
	if (hspd < -spd) hspd = -spd;
	
} else {
	apply_friction(acc);
}

//This makes your character face the direction you are moving
if (hspd !=0){
	image_xscale = sign(hspd);
	
	// Double tap dash logic
	// While moving, Pressing left or right makes the dash timer equal to 25
	if keyboard_check_pressed(vk_right) {
		right_dash_timer = 15;
		left_dash_timer = 0; // Set to 0 so that dashing only works when double tap one direction and not both
	}		
	
	if keyboard_check_pressed(vk_left) {
		left_dash_timer = 15;
		right_dash_timer = 0; // Set to 0 so that dashing only works when double tap one direction and not both
	}	
	// Pressing left or right again
	if keyboard_check_pressed(vk_right) && place_meeting(x,y+1,o_solid) && right_dash == 0 && dashcd ==0 and !keyboard_check(vk_left) and !left{
		audio_play_sound(snd_dash, 4, false);
		state = dash_right_state;
		o_dash_bar.dash = 0;
		alarm[4] = 20;	// dash duration
		alarm[5] = room_speed*3; // the number is the dash cooldown in seconds
		instance_create_depth(x,y,0,o_dash_dust);	
		
	}
	if keyboard_check_pressed(vk_left) && place_meeting(x,y+1,o_solid) && left_dash == 0 && dashcd ==0 and !keyboard_check(vk_right) and !right{
		audio_play_sound(snd_dash, 4, false);
		state = dash_left_state;
		o_dash_bar.dash = 0;
		alarm[4] = 20; // dash duration
		alarm[5] = room_speed*3; // the number is the dash cooldown in seconds
		instance_create_depth(x,y,0,o_dash_dust);				
	}

}

// Friction - If not pressing left or right, horizontal speed = 0
/*
if (!right && !left) {
	hspd = 0;
}
*/

move(o_solid);








/**/