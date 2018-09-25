/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 086D7A0D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Initialize Instance Variables$(13_10)$(13_10)// Used to pause the game?$(13_10)//global.gamespeed = 1.0;$(13_10)$(13_10)// Creating switches - Not sure if I should destroy this because it will have the Q data$(13_10)$(13_10)switches = ds_map_create();$(13_10)$(13_10)switches[? "quest_kill_snakes_started"] = false;$(13_10)switches[? "quest_kill_snakes_completed"] = false$(13_10)snakes_killed = 0;$(13_10)snakes_active = false;"
/// @description Execute Code
// Initialize Instance Variables

// Used to pause the game?
//global.gamespeed = 1.0;

// Creating switches - Not sure if I should destroy this because it will have the Q data

switches = ds_map_create();

switches[? "quest_kill_snakes_started"] = false;
switches[? "quest_kill_snakes_completed"] = false
snakes_killed = 0;
snakes_active = false;