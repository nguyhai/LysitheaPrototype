/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78CA6BE9
/// @DnDArgument : "code" "/// @description Test Shop button$(13_10)$(13_10)if state != wait_state1 {$(13_10)	state = wait_state1;$(13_10)	cutscene = true;$(13_10)} else {$(13_10)	state = move_state;$(13_10)	cutscene = false;$(13_10)$(13_10)}$(13_10)$(13_10)"
/// @description Test Shop button

if state != wait_state1 {
	state = wait_state1;
	cutscene = true;
} else {
	state = move_state;
	cutscene = false;

}