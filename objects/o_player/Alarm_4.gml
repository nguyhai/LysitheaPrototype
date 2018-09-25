/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5895C30D
/// @DnDArgument : "code" "/// @description For the Dash script$(13_10)$(13_10)// If left or right is held down, and not in combat, go into sprint$(13_10)$(13_10)if keyboard_check(vk_right) and in_combat = false and state = dash_right_state {$(13_10)	state= sprint_state_right;$(13_10)	sprinting = true;$(13_10)} else if keyboard_check(vk_left) and in_combat = false and state = dash_left_state{$(13_10)	state= sprint_state_left;$(13_10)	sprinting = true;$(13_10)} else {$(13_10)	state = move_state;$(13_10)}$(13_10)$(13_10)"
/// @description For the Dash script

// If left or right is held down, and not in combat, go into sprint

if keyboard_check(vk_right) and in_combat = false and state = dash_right_state {
	state= sprint_state_right;
	sprinting = true;
} else if keyboard_check(vk_left) and in_combat = false and state = dash_left_state{
	state= sprint_state_left;
	sprinting = true;
} else {
	state = move_state;
}