/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5650AE05
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if create_sign = false {$(13_10)	instance_create_depth(x+5,y-30,999,o_up_button);$(13_10)	create_sign = true;$(13_10)	alarm[0] = room_speed * 3;$(13_10)}$(13_10)$(13_10)if keyboard_check_pressed(vk_up) {$(13_10)	draw_sign = true$(13_10)} "
/// @description Execute Code
if create_sign = false {
	instance_create_depth(x+5,y-30,999,o_up_button);
	create_sign = true;
	alarm[0] = room_speed * 3;
}

if keyboard_check_pressed(vk_up) {
	draw_sign = true
}