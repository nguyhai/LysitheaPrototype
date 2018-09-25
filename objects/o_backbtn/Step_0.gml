/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6346AD2D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if instance_exists(o_backbtn){$(13_10)	if keyboard_check_pressed(vk_escape){$(13_10)		instance_destroy(o_black_screen);$(13_10)		instance_destroy(o_load_btn_1);$(13_10)		instance_destroy(o_load_btn_2);$(13_10)$(13_10)		instance_activate_object(o_savebtn);$(13_10)		instance_activate_object(o_exitbtn);$(13_10)$(13_10)alarm[0]=1;$(13_10)$(13_10)	}$(13_10)$(13_10)}"
/// @description Execute Code
if instance_exists(o_backbtn){
	if keyboard_check_pressed(vk_escape){
		instance_destroy(o_black_screen);
		instance_destroy(o_load_btn_1);
		instance_destroy(o_load_btn_2);

		instance_activate_object(o_savebtn);
		instance_activate_object(o_exitbtn);

alarm[0]=1;

	}

}