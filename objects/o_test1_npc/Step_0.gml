/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 109EDD18
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if showShop = true {$(13_10)	if place_meeting(x,y,o_player){$(13_10)		alarm[1] = 20;$(13_10)	} $(13_10)}"
/// @description Execute Code

if showShop = true {
	if place_meeting(x,y,o_player){
		alarm[1] = 20;
	} 
}