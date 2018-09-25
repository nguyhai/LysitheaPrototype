/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 515F6A46
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)if (image_index == 6) {$(13_10)	with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_mslash.damage/2;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_mslash_pop);$(13_10)}$(13_10)}$(13_10)$(13_10)if (image_index == 4) {$(13_10)	with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_mslash.damage/2;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_mslash_pop);$(13_10)}$(13_10)}$(13_10)$(13_10)if (image_index == 2) {$(13_10)	with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_mslash.damage/2;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_mslash_pop);$(13_10)}$(13_10)}$(13_10)$(13_10)if (image_index == 1) {$(13_10)	with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_mslash.damage/2;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_mslash_pop);$(13_10)}$(13_10)}$(13_10)$(13_10)if (image_index == 0) {$(13_10)	with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_mslash.damage/2;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_mslash_pop);$(13_10)}$(13_10)}"
/// @description Execute Code\n

if (image_index == 6) {
	with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_mslash.damage/2;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_mslash_pop);
}
}

if (image_index == 4) {
	with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_mslash.damage/2;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_mslash_pop);
}
}

if (image_index == 2) {
	with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_mslash.damage/2;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_mslash_pop);
}
}

if (image_index == 1) {
	with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_mslash.damage/2;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_mslash_pop);
}
}

if (image_index == 0) {
	with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_mslash.damage/2;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_mslash_pop);
}
}