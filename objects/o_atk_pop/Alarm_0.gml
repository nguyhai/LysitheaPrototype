/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00745ADC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)audio_emitter_pitch(audio_em, irandom_range(1, 1.8));$(13_10)audio_emitter_gain(audio_em, irandom_range(1, 1.8));$(13_10)audio_play_sound_on(audio_em, snd_critical_hit, false, 8);$(13_10)//audio_play_sound(snd_critical_hit,9,false);	$(13_10)"
/// @description Execute Code
audio_emitter_pitch(audio_em, irandom_range(1, 1.8));
audio_emitter_gain(audio_em, irandom_range(1, 1.8));
audio_play_sound_on(audio_em, snd_critical_hit, false, 8);
//audio_play_sound(snd_critical_hit,9,false);