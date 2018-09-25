/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 375C7E55
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)audio_emitter_pitch(audio_em, irandom_range(1, 1.5));$(13_10)audio_emitter_gain(audio_em, irandom_range(1, 1.5));$(13_10)$(13_10)// Determine what sound is played when an attack hits - Use the weapon type$(13_10)	audio_play_sound_on(audio_em, snd_cut, false, 8);$(13_10)$(13_10)//audio_play_sound(snd_cut, 6, false);$(13_10)$(13_10)"
/// @description Execute Code
audio_emitter_pitch(audio_em, irandom_range(1, 1.5));
audio_emitter_gain(audio_em, irandom_range(1, 1.5));

// Determine what sound is played when an attack hits - Use the weapon type
	audio_play_sound_on(audio_em, snd_cut, false, 8);

//audio_play_sound(snd_cut, 6, false);