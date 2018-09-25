/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4217A6ED
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)instance_destroy(o_black_screen);$(13_10)instance_destroy(o_load_btn_1);$(13_10)instance_destroy(o_load_btn_2);$(13_10)$(13_10)instance_activate_object(o_savebtn);$(13_10)instance_activate_object(o_exitbtn);$(13_10)$(13_10)alarm[0] = 1;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

instance_destroy(o_black_screen);
instance_destroy(o_load_btn_1);
instance_destroy(o_load_btn_2);

instance_activate_object(o_savebtn);
instance_activate_object(o_exitbtn);

alarm[0] = 1;