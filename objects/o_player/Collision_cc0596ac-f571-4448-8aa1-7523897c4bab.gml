/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A99262B
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// Collect the Sapphire$(13_10)$(13_10)with (other) instance_destroy();$(13_10)o_player_stats.sapphires += 1;$(13_10)//o_player_stats.score = o_player_stats.sapphires;$(13_10)audio_play_sound(snd_tink, 4, false);"
/// @description Execute Code\n

// Collect the Sapphire

with (other) instance_destroy();
o_player_stats.sapphires += 1;
//o_player_stats.score = o_player_stats.sapphires;
audio_play_sound(snd_tink, 4, false);