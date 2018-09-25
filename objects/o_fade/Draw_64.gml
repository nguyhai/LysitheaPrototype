/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06EE8EBB
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Draw the fade$(13_10)$(13_10)$(13_10)$(13_10)gpu_set_blendmode(bm_normal);$(13_10)draw_set_color(c_black);$(13_10)draw_set_alpha(image_alpha);$(13_10)draw_rectangle(0,0,display_get_gui_width(), display_get_gui_height(), false);$(13_10)$(13_10)//Set back to normal drawing$(13_10)$(13_10)draw_set_color(c_white);$(13_10)draw_set_alpha(1);"
/// @description Execute Code

// Draw the fade



gpu_set_blendmode(bm_normal);
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(0,0,display_get_gui_width(), display_get_gui_height(), false);

//Set back to normal drawing

draw_set_color(c_white);
draw_set_alpha(1);