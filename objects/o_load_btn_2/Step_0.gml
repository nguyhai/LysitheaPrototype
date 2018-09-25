/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02C4D9C5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (room == rm_load_screen){$(13_10)	visible = true;$(13_10)} else {$(13_10)$(13_10)}$(13_10)$(13_10)if (room == rm_menu){$(13_10)	instance_destroy();$(13_10)} "
/// @description Execute Code

if (room == rm_load_screen){
	visible = true;
} else {

}

if (room == rm_menu){
	instance_destroy();
}