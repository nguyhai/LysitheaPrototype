/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B154760
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (room == rm_load_screen){$(13_10)room_goto(rm_home);$(13_10)alarm[0]=1;$(13_10)} else {$(13_10)	save_game("save2.dat");$(13_10)$(13_10)	instance_create_layer(0,0,"Messages", o_game_saved);$(13_10)}$(13_10)$(13_10)// This is to reload the draw stats on the save screen after clicking Save$(13_10)instance_destroy(o_saveloadstats2);$(13_10)instance_create_depth(x,y,-9999,o_saveloadstats2);$(13_10)"
/// @description Execute Code
if (room == rm_load_screen){
room_goto(rm_home);
alarm[0]=1;
} else {
	save_game("save2.dat");

	instance_create_layer(0,0,"Messages", o_game_saved);
}

// This is to reload the draw stats on the save screen after clicking Save
instance_destroy(o_saveloadstats2);
instance_create_depth(x,y,-9999,o_saveloadstats2);