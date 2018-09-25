/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 530795EE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Snake Quest-------------------$(13_10)$(13_10)if snakes_killed >= 5 and snakes_active ==  true {$(13_10)	switches[? "quest_kill_snakes_completed"] = true;$(13_10)	audio_play_sound(snd_quest_accept, 9, false);$(13_10)	instance_create_depth(x,y-70, 0 , o_quest_completed);$(13_10)	instance_destroy(o_quest_inprogress);$(13_10)	instance_create_depth(o_player.x,o_player.y-40, 0 , o_q_complete);$(13_10)	snakes_active = false;$(13_10)}"
/// @description Execute Code
// Snake Quest-------------------

if snakes_killed >= 5 and snakes_active ==  true {
	switches[? "quest_kill_snakes_completed"] = true;
	audio_play_sound(snd_quest_accept, 9, false);
	instance_create_depth(x,y-70, 0 , o_quest_completed);
	instance_destroy(o_quest_inprogress);
	instance_create_depth(o_player.x,o_player.y-40, 0 , o_q_complete);
	snakes_active = false;
}