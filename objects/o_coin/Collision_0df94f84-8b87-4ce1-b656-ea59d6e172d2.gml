/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5679F15D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// This event is for this single coin$(13_10)if pickedup = false {$(13_10)	alarm[0] = 90;$(13_10)	pickedup = true	$(13_10)	o_player_stats.gold += value;$(13_10)	audio_play_sound(snd_coin_pickup,9,false);$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//instance_create_depth(o_player.x, o_player.y-90, 0,o_draw_values);$(13_10)	$(13_10)"
/// @description Execute Code

// This event is for this single coin
if pickedup = false {
	alarm[0] = 90;
	pickedup = true	
	o_player_stats.gold += value;
	audio_play_sound(snd_coin_pickup,9,false);
	
}



//instance_create_depth(o_player.x, o_player.y-90, 0,o_draw_values);