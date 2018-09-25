/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65642CB7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)draw_set_font(global.fnt_cartoon3);$(13_10)//draw_set_color(c_aqua);$(13_10)draw_set_halign(fa_center);$(13_10)draw_text_ext_transformed_colour(x,y-50, +"+"+string(heal), 100, 3000, 0.4, 0.4,0, c_white, c_white, c_white, c_white, 1);$(13_10)draw_set_halign(fa_left);$(13_10)//draw_text_ext(x, y-20, +"-"+string(damage*1.5), 32, 100);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_normal);"
/// @description Execute Code

draw_set_font(global.fnt_cartoon3);
//draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text_ext_transformed_colour(x,y-50, +"+"+string(heal), 100, 3000, 0.4, 0.4,0, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
//draw_text_ext(x, y-20, +"-"+string(damage*1.5), 32, 100);
draw_set_color(c_white);
draw_set_font(fnt_normal);