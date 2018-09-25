/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_yscale = 2.0;$(13_10)$(13_10)image_xscale = sign(o_player.hspd)*2.0;$(13_10)if (o_player.hspd == 0){$(13_10)	image_xscale = o_player.image_xscale*2.0;$(13_10)}$(13_10)image_speed = 6.0;$(13_10)audio_play_sound(snd_slash2, 9, false);$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n

image_yscale = 2.0;

image_xscale = sign(o_player.hspd)*2.0;
if (o_player.hspd == 0){
	image_xscale = o_player.image_xscale*2.0;
}
image_speed = 6.0;
audio_play_sound(snd_slash2, 9, false);