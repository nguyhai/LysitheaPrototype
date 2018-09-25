/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AE316DB
/// @DnDArgument : "code" "/// @description Execute C$(13_10)$(13_10)$(13_10)// Draw the damange based on how much damage enemy dealt to us$(13_10)draw_set_font(global.fnt_cartoon);$(13_10)draw_set_halign(fa_center)$(13_10)draw_text_ext_transformed_colour(x,y-80, +"-"+ string(o_player.hurt), 100, 3000, 0.4, 0.4, 0, c_red, c_red, c_red, c_red, 1);$(13_10)draw_set_halign(fa_left)$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_normal);$(13_10)"
/// @description Execute C


// Draw the damange based on how much damage enemy dealt to us
draw_set_font(global.fnt_cartoon);
draw_set_halign(fa_center)
draw_text_ext_transformed_colour(x,y-80, +"-"+ string(o_player.hurt), 100, 3000, 0.4, 0.4, 0, c_red, c_red, c_red, c_red, 1);
draw_set_halign(fa_left)
draw_set_color(c_white);
draw_set_font(fnt_normal);