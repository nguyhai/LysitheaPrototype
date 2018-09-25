/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00226FAD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if !instance_exists(o_player){$(13_10)	instance_create_layer(240, 400, "Fade", o_player);$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code

if !instance_exists(o_player){
	instance_create_layer(240, 400, "Fade", o_player);
}