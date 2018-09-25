/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 345EEC02
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)var dis = point_distance(x, y, obj_player_1.x, y);$(13_10)if (dis < sprite_width/2-16 || place_meeting (x-1, y, o_solid) ||place_meeting (x+1, y, o_solid)) {$(13_10)	state = boss_smash_state;$(13_10)	audio_play_sound(snd_jump, 6, false)$(13_10)	hspd = 0;$(13_10)} else {$(13_10)	hspd = (obj_player_1.x - x) * .05;$(13_10)}$(13_10)$(13_10)move(o_solid);"

{
	/// @description Execute Code\n

var dis = point_distance(x, y, obj_player_1.x, y);
if (dis < sprite_width/2-16 || place_meeting (x-1, y, o_solid) ||place_meeting (x+1, y, o_solid)) {
	state = boss_smash_state;
	audio_play_sound(snd_jump, 6, false)
	hspd = 0;
} else {
	hspd = (obj_player_1.x - x) * .05;
}

move(o_solid);
}

