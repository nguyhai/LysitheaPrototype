/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_yscale = 1;$(13_10)image_xscale = sign(o_player.hspd*1);$(13_10)if (o_player.hspd < 5){$(13_10)	image_xscale = o_player.image_xscale*1;$(13_10)}$(13_10)image_speed = 5.0;$(13_10)//audio_play_sound(choose(snd_2h_whoosh1, snd_2h_whoosh2), 9, false);$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n

image_yscale = 1;
image_xscale = sign(o_player.hspd*1);
if (o_player.hspd < 5){
	image_xscale = o_player.image_xscale*1;
}
image_speed = 5.0;
//audio_play_sound(choose(snd_2h_whoosh1, snd_2h_whoosh2), 9, false);