/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B5929DC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if start_fading = false {$(13_10)	audio_play_sound(snd_new_game,9,false);$(13_10)}$(13_10)$(13_10)start_fading = true;$(13_10)"
/// @description Execute Code
if start_fading = false {
	audio_play_sound(snd_new_game,9,false);
}

start_fading = true;