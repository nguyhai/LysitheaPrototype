/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31FC8571
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// Initialize the boss$(13_10)$(13_10)var dis = point_distance(x, y, obj_player_1.x, obj_player_1.y);$(13_10)$(13_10)if (dis <=128){$(13_10)	$(13_10)	if (!audio_is_playing(snd_music)){$(13_10)		audio_emitter_gain(audio_em, .5);$(13_10)		audio_play_sound(snd_boss_music, 5, true);$(13_10)	}$(13_10)	$(13_10)	state = boss_lift_state;$(13_10)	$(13_10)}"

{
	/// @description Execute Code\n

// Initialize the boss

var dis = point_distance(x, y, obj_player_1.x, obj_player_1.y);

if (dis <=128){
	
	if (!audio_is_playing(snd_music)){
		audio_emitter_gain(audio_em, .5);
		audio_play_sound(snd_boss_music, 5, true);
	}
	
	state = boss_lift_state;
	
}
}

