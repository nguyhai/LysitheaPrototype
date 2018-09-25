/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_yscale = 0.4;$(13_10)image_xscale = sign(o_player.image_yscale*0.3);$(13_10)if (o_player.hspd < 5){$(13_10)	image_xscale = o_player.image_xscale*0.3;$(13_10)}$(13_10)image_speed = 6.0;$(13_10)audio_play_sound(choose(snd_dagger_whoosh1, snd_dagger_whoosh2), 9, false);$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n

image_yscale = 0.4;
image_xscale = sign(o_player.image_yscale*0.3);
if (o_player.hspd < 5){
	image_xscale = o_player.image_xscale*0.3;
}
image_speed = 6.0;
audio_play_sound(choose(snd_dagger_whoosh1, snd_dagger_whoosh2), 9, false);