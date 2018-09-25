/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1460C01B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (room == rm_home){$(13_10)$(13_10)	if (load_game("save.dat")){$(13_10)		instance_create_layer(0,0,"Fade", o_game_loaded);$(13_10)		// Flash after loading$(13_10)		o_player.recently_hit = true;$(13_10)		o_player.alarm[0] = 2*room_speed;$(13_10)		o_player.alarm[1] = 1;$(13_10)	} $(13_10)}$(13_10)$(13_10)instance_destroy();$(13_10)instance_destroy(o_load_btn_2);"
/// @description Execute Code
if (room == rm_home){

	if (load_game("save.dat")){
		instance_create_layer(0,0,"Fade", o_game_loaded);
		// Flash after loading
		o_player.recently_hit = true;
		o_player.alarm[0] = 2*room_speed;
		o_player.alarm[1] = 1;
	} 
}

instance_destroy();
instance_destroy(o_load_btn_2);