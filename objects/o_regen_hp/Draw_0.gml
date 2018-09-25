/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65642CB7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)draw_set_font(global.fnt_cartoon4);$(13_10)//draw_set_color(c_aqua);$(13_10)draw_text_ext_transformed_colour(x-65,y-30, +"+"+string(o_player_stats.restore_hp_amount), 100, 3000, 0.3, 0.3,0, c_lime, c_lime, c_lime, c_lime, 1);$(13_10)//draw_set_color(c_red);$(13_10)//draw_text_ext(x, y-20, +"-"+string(damage*1.5), 32, 100);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_normal);"
/// @description Execute Code

draw_set_font(global.fnt_cartoon4);
//draw_set_color(c_aqua);
draw_text_ext_transformed_colour(x-65,y-30, +"+"+string(o_player_stats.restore_hp_amount), 100, 3000, 0.3, 0.3,0, c_lime, c_lime, c_lime, c_lime, 1);
//draw_set_color(c_red);
//draw_text_ext(x, y-20, +"-"+string(damage*1.5), 32, 100);
draw_set_color(c_white);
draw_set_font(fnt_normal);