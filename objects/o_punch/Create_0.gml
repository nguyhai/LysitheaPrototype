/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_yscale = 2;$(13_10)image_xscale = sign(o_player.hspd*1.2);$(13_10)if (o_player.hspd < 5){$(13_10)	image_xscale = o_player.image_xscale*1.2;$(13_10)}$(13_10)image_speed = 8.0;$(13_10)audio_play_sound(snd_sword, 9, false);$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n

image_yscale = 2;
image_xscale = sign(o_player.hspd*1.2);
if (o_player.hspd < 5){
	image_xscale = o_player.image_xscale*1.2;
}
image_speed = 8.0;
audio_play_sound(snd_sword, 9, false);