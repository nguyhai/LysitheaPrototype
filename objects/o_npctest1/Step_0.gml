/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12272899
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// If 5 snakes has been killed, updates the global quest object$(13_10)if o_game_state.snakes_killed >= 5 and o_game_state.switches[? "quest_kill_snakes_started"] ==  true {$(13_10)$(13_10)	instance_create_depth(x,y-70, 0 , o_quest_completed);$(13_10)	instance_destroy(o_quest_inprogress);$(13_10)	o_game_state.switches[? "quest_kill_snakes_started"] =  false;$(13_10)}"
/// @description Execute Code

// If 5 snakes has been killed, updates the global quest object
if o_game_state.snakes_killed >= 5 and o_game_state.switches[? "quest_kill_snakes_started"] ==  true {

	instance_create_depth(x,y-70, 0 , o_quest_completed);
	instance_destroy(o_quest_inprogress);
	o_game_state.switches[? "quest_kill_snakes_started"] =  false;
}