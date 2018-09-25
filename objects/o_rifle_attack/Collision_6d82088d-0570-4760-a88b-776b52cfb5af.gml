/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 250B32BB
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)//if image_index > image_number - 1 instance_destroy()$(13_10)/*$(13_10)if (image_index == 6) {$(13_10)	with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_bow_attack.damage;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_atk_pop);$(13_10)}$(13_10)}"
/// @description Execute Code\n

//if image_index > image_number - 1 instance_destroy()
/*
if (image_index == 6) {
	with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_bow_attack.damage;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_atk_pop);
}
}/**/