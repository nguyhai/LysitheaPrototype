/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01A6623A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self();$(13_10)$(13_10)if pickedup = true {$(13_10)$(13_10)	draw_set_color(c_yellow);$(13_10)	draw_text(camera_get_view_x(view_camera)+45, camera_get_view_y(view_camera)+115, "x");$(13_10)	draw_set_color(c_white);$(13_10)	draw_set_font(global.fnt_cartoon);$(13_10)	draw_sprite(spr_coin_inventory, 0, camera_get_view_x(view_camera)+13, camera_get_view_y(view_camera)+110)$(13_10)	$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+110, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	$(13_10)}"
/// @description Execute Code
draw_self();

if pickedup = true {

	draw_set_color(c_yellow);
	draw_text(camera_get_view_x(view_camera)+45, camera_get_view_y(view_camera)+115, "x");
	draw_set_color(c_white);
	draw_set_font(global.fnt_cartoon);
	draw_sprite(spr_coin_inventory, 0, camera_get_view_x(view_camera)+13, camera_get_view_y(view_camera)+110)
	
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+110, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_set_font(fnt_normal);
	
}