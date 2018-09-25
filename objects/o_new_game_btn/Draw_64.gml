/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30997351
/// @DnDArgument : "code" "draw_set_font(global.fnt_cartoon4);$(13_10)draw_text_ext_transformed_colour(50,50,"NO TITLE!", 100, 3000, 0.75, 0.75, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)draw_set_font(fnt_normal);$(13_10)$(13_10)if start_fading = true{$(13_10)	draw_sprite_ext(spr_pixel,0,0,0,1280,720,0,c_black,fade_alpha)$(13_10)}$(13_10)$(13_10)if fade_alpha >= 1 {$(13_10)	if o_room_select.clicked = true {$(13_10)		room_goto(rm_home);$(13_10)	}$(13_10)	$(13_10)	if o_cutscene_select.clicked = true {$(13_10)		room_goto(rm_cutscene_1);$(13_10)	}$(13_10)$(13_10)}$(13_10)"
draw_set_font(global.fnt_cartoon4);
draw_text_ext_transformed_colour(50,50,"NO TITLE!", 100, 3000, 0.75, 0.75, 0, c_olive, c_olive, c_olive, c_olive, 1);
draw_set_font(fnt_normal);

if start_fading = true{
	draw_sprite_ext(spr_pixel,0,0,0,1280,720,0,c_black,fade_alpha)
}

if fade_alpha >= 1 {
	if o_room_select.clicked = true {
		room_goto(rm_home);
	}
	
	if o_cutscene_select.clicked = true {
		room_goto(rm_cutscene_1);
	}

}