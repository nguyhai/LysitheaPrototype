/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E63F266
/// @DnDArgument : "code" "//draw_text (x,y,string(selllamount));$(13_10)$(13_10)$(13_10)$(13_10)draw_set_font(global.fnt_cartoon);$(13_10)draw_set_halign(fa_center);$(13_10)//draw_text_ext_transformed_colour(x,y,"+ ", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)draw_text_ext_transformed_colour(x,y,+"+"+string(string_thousands(sellamount))+" Gold", 100, 3000, 0.25, 0.25, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)draw_set_halign(fa_left);$(13_10)//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);$(13_10)draw_set_font(fnt_normal);"
//draw_text (x,y,string(selllamount));



draw_set_font(global.fnt_cartoon);
draw_set_halign(fa_center);
//draw_text_ext_transformed_colour(x,y,"+ ", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);
draw_text_ext_transformed_colour(x,y,+"+"+string(string_thousands(sellamount))+" Gold", 100, 3000, 0.25, 0.25, 0, c_white, c_white, c_white, c_white, image_alpha);
draw_set_halign(fa_left);
//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);
draw_set_font(fnt_normal);