/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)$(13_10)image_xscale = sign(o_player.hspd);$(13_10)if (o_player.hspd == 0){$(13_10)	image_xscale = o_player.image_xscale;$(13_10)}$(13_10)image_speed = 3.0;$(13_10)audio_play_sound(snd_lightning_slash,9,false);$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n


image_xscale = sign(o_player.hspd);
if (o_player.hspd == 0){
	image_xscale = o_player.image_xscale;
}
image_speed = 3.0;
audio_play_sound(snd_lightning_slash,9,false);