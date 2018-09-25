/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6AACA2EC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// If collision with player, alarm 1 will never activate, but if player leaves$(13_10)// it will activate$(13_10)if showShop = true {$(13_10)	if place_meeting(x,y,o_player){$(13_10)		alarm[1] = 15;$(13_10)	} $(13_10)}$(13_10)"
/// @description Execute Code
// If collision with player, alarm 1 will never activate, but if player leaves
// it will activate
if showShop = true {
	if place_meeting(x,y,o_player){
		alarm[1] = 15;
	} 
}