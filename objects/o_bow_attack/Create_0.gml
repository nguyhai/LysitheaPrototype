/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_yscale = 1.3;$(13_10)image_xscale = sign(o_player.hspd*1.9);$(13_10)if (o_player.hspd < 5){$(13_10)	image_xscale = o_player.image_xscale*1.9;$(13_10)}$(13_10)image_speed = 9.0;$(13_10)audio_play_sound(snd_bow_atk, 9, false);$(13_10)instance_create_depth(x,y,100,o_arrow_attack);$(13_10)"
/// @description Execute Code\n

image_yscale = 1.3;
image_xscale = sign(o_player.hspd*1.9);
if (o_player.hspd < 5){
	image_xscale = o_player.image_xscale*1.9;
}
image_speed = 9.0;
audio_play_sound(snd_bow_atk, 9, false);
instance_create_depth(x,y,100,o_arrow_attack);