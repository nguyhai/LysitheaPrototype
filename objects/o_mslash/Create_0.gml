/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02CAAAF9
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)$(13_10)image_xscale = sign(o_player.hspd);$(13_10)if (o_player.hspd == 0){$(13_10)	image_xscale = o_player.image_xscale;$(13_10)}$(13_10)image_speed = 1;$(13_10)audio_play_sound(snd_multislash, 9, false);$(13_10)$(13_10)damage = o_player_stats.draw_damage;"
/// @description Execute Code\n


image_xscale = sign(o_player.hspd);
if (o_player.hspd == 0){
	image_xscale = o_player.image_xscale;
}
image_speed = 1;
audio_play_sound(snd_multislash, 9, false);

damage = o_player_stats.draw_damage;