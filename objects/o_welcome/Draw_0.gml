/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49584D56
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if room = rm_town {$(13_10)// x = camera_get_view_x(view_camera)+400$(13_10)// y = camera_get_view_y(view_camera)+200$(13_10)$(13_10)	draw_set_alpha(image_alpha);$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	//draw_text_ext_transformed_colour(x,y,"Welcome To TestTown1!", 100, 3000, 0.4, 0.4, 0, c_lime, c_red, c_lime, c_aqua, 1);$(13_10)	draw_sprite(spr_house,0, camera_get_view_x(view_camera)+350, camera_get_view_y(view_camera)+ 210);$(13_10)	draw_sprite(spr_house,0, camera_get_view_x(view_camera)+900, camera_get_view_y(view_camera)+ 210);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(1);$(13_10)	$(13_10)}"
/// @description Execute Code
if room = rm_town {
// x = camera_get_view_x(view_camera)+400
// y = camera_get_view_y(view_camera)+200

	draw_set_alpha(image_alpha);
	draw_set_font(global.fnt_cartoon4);
	//draw_text_ext_transformed_colour(x,y,"Welcome To TestTown1!", 100, 3000, 0.4, 0.4, 0, c_lime, c_red, c_lime, c_aqua, 1);
	draw_sprite(spr_house,0, camera_get_view_x(view_camera)+350, camera_get_view_y(view_camera)+ 210);
	draw_sprite(spr_house,0, camera_get_view_x(view_camera)+900, camera_get_view_y(view_camera)+ 210);
	draw_set_font(fnt_normal);
	draw_set_alpha(1);
	
}