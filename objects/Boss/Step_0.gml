/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 217E9C40
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)script_execute(state);$(13_10)$(13_10)// Draw the boss red$(13_10)$(13_10)if (place_meeting(x,y, Lava)){$(13_10)	image_blend = c_red;$(13_10)$(13_10)} else {$(13_10)image_blend = c_white;$(13_10)}$(13_10)$(13_10)$(13_10)// Make the boss die $(13_10)$(13_10)if (hp <= 0 ) {$(13_10)	repeat (50) {$(13_10)		instance_create_depth (bbox_left + random(sprite_width), bbox_top + random(sprite_height), 0, fire_bubble);$(13_10)	}$(13_10)	$(13_10)	if (audio_is_playing(snd_boss_music)){$(13_10)		audio_stop_sound(snd_boss_music);$(13_10)	}$(13_10)	instance_destroy();$(13_10)}"

{
	/// @description Execute Code\n

script_execute(state);

// Draw the boss red

if (place_meeting(x,y, Lava)){
	image_blend = c_red;

} else {
image_blend = c_white;
}


// Make the boss die 

if (hp <= 0 ) {
	repeat (50) {
		instance_create_depth (bbox_left + random(sprite_width), bbox_top + random(sprite_height), 0, fire_bubble);
	}
	
	if (audio_is_playing(snd_boss_music)){
		audio_stop_sound(snd_boss_music);
	}
	instance_destroy();
}
}

