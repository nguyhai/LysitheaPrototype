/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 727BC4DF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)instance_create_depth(mouse_x, mouse_y, 0, o_call_lightning);$(13_10)o_call_lightning.xx = x - mouse_x;$(13_10)o_call_lightning.yy = y - mouse_y;$(13_10)o_call_lightning.grabbed = true;"
/// @description Execute Code

instance_create_depth(mouse_x, mouse_y, 0, o_call_lightning);
o_call_lightning.xx = x - mouse_x;
o_call_lightning.yy = y - mouse_y;
o_call_lightning.grabbed = true;