/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B94BB5D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if o_game_state.switches[? "quest_kill_snakes_started"] == false and o_game_state.switches[? "quest_kill_snakes_completed"] == false {$(13_10)	instance_create_depth(x+30,y -50, 0 , o_quest_available);$(13_10)}$(13_10)if o_game_state.switches[? "quest_kill_snakes_started"] = true {$(13_10)	instance_create_depth(x+30,y -50, 0 , o_quest_inprogress);$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code

if o_game_state.switches[? "quest_kill_snakes_started"] == false and o_game_state.switches[? "quest_kill_snakes_completed"] == false {
	instance_create_depth(x+30,y -50, 0 , o_quest_available);
}
if o_game_state.switches[? "quest_kill_snakes_started"] = true {
	instance_create_depth(x+30,y -50, 0 , o_quest_inprogress);
}