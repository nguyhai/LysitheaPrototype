/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 135D6D68
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (load_game("save.dat")){$(13_10)$(13_10)	instance_create_layer(0,0,"Fade", o_game_loaded);$(13_10)	$(13_10)} else{$(13_10)$(13_10)}$(13_10)"
/// @description Execute Code
if (load_game("save.dat")){

	instance_create_layer(0,0,"Fade", o_game_loaded);
	
} else{

}