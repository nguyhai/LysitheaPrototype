/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1460C01B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (room == rm_home){$(13_10)if (load_game("save2.dat")){$(13_10)	$(13_10)		$(13_10)	instance_create_layer(0,0,"Fade", o_game_loaded);$(13_10)	$(13_10)} $(13_10)}$(13_10)$(13_10)instance_destroy();$(13_10)instance_destroy(o_load_btn_1);"
/// @description Execute Code
if (room == rm_home){
if (load_game("save2.dat")){
	
		
	instance_create_layer(0,0,"Fade", o_game_loaded);
	
} 
}

instance_destroy();
instance_destroy(o_load_btn_1);