/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00B6D171
/// @DnDArgument : "code" "camera_set_view_pos(view_camera[0],xpos,0);$(13_10)$(13_10)// Xpos is reducing itself by 0.3 every frame, but giving it a limit of 0$(13_10)xpos = max(xpos-0.3,0);$(13_10)$(13_10)// If fadeout = 0, the black screen will fade away. $(13_10)// If fadeout = 1, the black screen will fade to black. $(13_10)if fadeout = 0 {$(13_10)	alpha = max(alpha - 0.005, 0);$(13_10)} else {$(13_10)	alpha = min(alpha+0.005,1);$(13_10)	audio_sound_gain(bgm_voices_of_a_distant_star, 0, 3500);$(13_10)}$(13_10)$(13_10)// Top and bottom bar fade in$(13_10)if topbarscale < 150 {$(13_10)	topbarscale = topbarscale + 2.5;$(13_10)}$(13_10)if bottombarscale > -150 {$(13_10)	bottombarscale = bottombarscale - 2.5;$(13_10)}$(13_10)$(13_10)if topbarscale >= 150 {$(13_10)	l += 0.5; // Adds a letter every 2 frame$(13_10)}$(13_10)$(13_10)// Copies some of the content of 1 string and puts it into another. $(13_10)// This copies 1 letter at a time. $(13_10)print = string_copy(str,1,l);$(13_10)$(13_10)// If count of letters greater than full contents of the string$(13_10)// And array length is strings array - 1 (remember we have 3 entries for the aray)$(13_10)if (l > string_length(str) + 80) and (next < array_length_1d(strings) -1) {$(13_10)$(13_10)	l = 0; // Set the count back to zero $(13_10)	next++$(13_10)	// If we are on the last string$(13_10)	if next == array_length_1d(strings) -1 {$(13_10)		holdspace++;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)str = strings[next]; // Next initially starts at 0. Set this last$(13_10)$(13_10)if (keyboard_check_direct(vk_space)) {$(13_10)	holdspace ++;$(13_10)}$(13_10)$(13_10)if holdspace > 60 or xpos < 100 {$(13_10)	fadeout =1;$(13_10)}$(13_10)$(13_10)if alpha == 1 and fadeout == 1 {$(13_10)	room_goto(rm_home);$(13_10)}$(13_10)$(13_10)// Here are the cutscene events$(13_10)$(13_10)if stage = 0 {$(13_10)	timer +=1;$(13_10)	o_player_cutscene.sprite_index = spr_walk;$(13_10)$(13_10)	o_player_cutscene.image_speed = 1;$(13_10)	o_player_cutscene.x = o_player_cutscene.x + 2;$(13_10)	if timer = 180 {$(13_10)		stage = 1;$(13_10)		timer = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)if stage = 1 {$(13_10)	timer +=1;$(13_10)	o_player_cutscene.sprite_index = spr_idle;$(13_10)$(13_10)	o_player_cutscene.image_speed = 1;$(13_10)	o_player_cutscene.x = o_player_cutscene.x ;$(13_10)	$(13_10)	if timer = 120 {$(13_10)		stage = 2;$(13_10)		timer = 0;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if stage = 2 {$(13_10)	timer +=1;$(13_10)	if timer = 10 {$(13_10)		audio_play_sound(snd_hurt_sound,9,false);$(13_10)	}$(13_10)	o_player_cutscene.sprite_index = spr_death;$(13_10)	o_player_cutscene.image_speed = 1;$(13_10)	o_player_cutscene.x = o_player_cutscene.x ;$(13_10)	$(13_10)	$(13_10)	if o_player_cutscene.image_index > 6 {$(13_10)		o_player_cutscene.image_index = 6$(13_10)		o_player_cutscene.image_speed = 0;$(13_10)$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if timer = 120 {$(13_10)		stage = 3;$(13_10)		timer = 0;$(13_10)	}$(13_10)	$(13_10)}"
camera_set_view_pos(view_camera[0],xpos,0);

// Xpos is reducing itself by 0.3 every frame, but giving it a limit of 0
xpos = max(xpos-0.3,0);

// If fadeout = 0, the black screen will fade away. 
// If fadeout = 1, the black screen will fade to black. 
if fadeout = 0 {
	alpha = max(alpha - 0.005, 0);
} else {
	alpha = min(alpha+0.005,1);
	audio_sound_gain(bgm_voices_of_a_distant_star, 0, 3500);
}

// Top and bottom bar fade in
if topbarscale < 150 {
	topbarscale = topbarscale + 2.5;
}
if bottombarscale > -150 {
	bottombarscale = bottombarscale - 2.5;
}

if topbarscale >= 150 {
	l += 0.5; // Adds a letter every 2 frame
}

// Copies some of the content of 1 string and puts it into another. 
// This copies 1 letter at a time. 
print = string_copy(str,1,l);

// If count of letters greater than full contents of the string
// And array length is strings array - 1 (remember we have 3 entries for the aray)
if (l > string_length(str) + 80) and (next < array_length_1d(strings) -1) {

	l = 0; // Set the count back to zero 
	next++
	// If we are on the last string
	if next == array_length_1d(strings) -1 {
		holdspace++;
	}
	
}

str = strings[next]; // Next initially starts at 0. Set this last

if (keyboard_check_direct(vk_space)) {
	holdspace ++;
}

if holdspace > 60 or xpos < 100 {
	fadeout =1;
}

if alpha == 1 and fadeout == 1 {
	room_goto(rm_home);
}

// Here are the cutscene events

if stage = 0 {
	timer +=1;
	o_player_cutscene.sprite_index = spr_walk;

	o_player_cutscene.image_speed = 1;
	o_player_cutscene.x = o_player_cutscene.x + 2;
	if timer = 180 {
		stage = 1;
		timer = 0;
	}
}

if stage = 1 {
	timer +=1;
	o_player_cutscene.sprite_index = spr_idle;

	o_player_cutscene.image_speed = 1;
	o_player_cutscene.x = o_player_cutscene.x ;
	
	if timer = 120 {
		stage = 2;
		timer = 0;
	}
	
}

if stage = 2 {
	timer +=1;
	if timer = 10 {
		audio_play_sound(snd_hurt_sound,9,false);
	}
	o_player_cutscene.sprite_index = spr_death;
	o_player_cutscene.image_speed = 1;
	o_player_cutscene.x = o_player_cutscene.x ;
	
	
	if o_player_cutscene.image_index > 6 {
		o_player_cutscene.image_index = 6
		o_player_cutscene.image_speed = 0;

	}
	
	
	if timer = 120 {
		stage = 3;
		timer = 0;
	}
	
}