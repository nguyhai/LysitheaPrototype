/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33866D3C
/// @DnDArgument : "code" "/// @description Execute$(13_10)hspd = 0;$(13_10)vspd = 0;$(13_10)image_speed = 0;$(13_10)state = boss_idle_state;$(13_10)hp = 3;$(13_10)$(13_10)$(13_10)// Create an audio emitter$(13_10)$(13_10)audio_em = audio_emitter_create();$(13_10)$(13_10)if (audio_is_playing(snd_music)){$(13_10)	audio_stop_sound(snd_music);$(13_10)}$(13_10)$(13_10)"

{
	/// @description Execute
hspd = 0;
vspd = 0;
image_speed = 0;
state = boss_idle_state;
hp = 3;


// Create an audio emitter

audio_em = audio_emitter_create();

if (audio_is_playing(snd_music)){
	audio_stop_sound(snd_music);
}


}

