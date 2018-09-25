/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BED7BB8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (room == rm_menu or room ==rm_load_screen) {$(13_10)	instance_destroy(o_pause);$(13_10)} $(13_10)"
/// @description Execute Code

if (room == rm_menu or room ==rm_load_screen) {
	instance_destroy(o_pause);
}