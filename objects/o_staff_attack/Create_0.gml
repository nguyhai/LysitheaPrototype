/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2674997E
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_yscale = 0.7;$(13_10)image_xscale = sign(o_player.hspd*0.6);$(13_10)if (o_player.hspd < 5){$(13_10)	image_xscale = o_player.image_xscale*0.6;$(13_10)}$(13_10)image_speed = 1;$(13_10)audio_play_sound(snd_staff_attack2, 9, false);$(13_10)//instance_create_depth(x,y,100,o_wand_projectile);$(13_10)"
/// @description Execute Code\n

image_yscale = 0.7;
image_xscale = sign(o_player.hspd*0.6);
if (o_player.hspd < 5){
	image_xscale = o_player.image_xscale*0.6;
}
image_speed = 1;
audio_play_sound(snd_staff_attack2, 9, false);
//instance_create_depth(x,y,100,o_wand_projectile);