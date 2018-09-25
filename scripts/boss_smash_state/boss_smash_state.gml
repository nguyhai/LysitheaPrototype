/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 218E148D
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// If boss not on the ground$(13_10)if (!place_meeting (x, y+1, o_solid)) {$(13_10)	if (vspd < 16){$(13_10)		vspd +=.5;$(13_10)	}$(13_10)	move(o_solid);$(13_10)} else{$(13_10)	state = boss_stall_state;$(13_10)	alarm[0] = room_speed;$(13_10)	audio_play_sound(snd_step, 8, false);$(13_10)	$(13_10)	if (place_meeting(x,y, Lava)){$(13_10)		hp-=1;$(13_10)		audio_play_sound(snd_snake, 9, false);$(13_10)	}$(13_10)}"

{
	/// @description Execute Code\n

// If boss not on the ground
if (!place_meeting (x, y+1, o_solid)) {
	if (vspd < 16){
		vspd +=.5;
	}
	move(o_solid);
} else{
	state = boss_stall_state;
	alarm[0] = room_speed;
	audio_play_sound(snd_step, 8, false);
	
	if (place_meeting(x,y, Lava)){
		hp-=1;
		audio_play_sound(snd_snake, 9, false);
	}
}
}

