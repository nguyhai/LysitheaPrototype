/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 75EF5756
/// @DnDArgument : "code" "if state = wait_state1 {$(13_10)	//draw_sprite_ext(spr_pixel,0,0,0,1280,150,0,c_black,cutscene_alpha)$(13_10)	//draw_sprite_ext(spr_pixel,0,0,570,1280,150,0,c_black,cutscene_alpha)$(13_10)	$(13_10)	draw_sprite_ext(spr_pixel,0,0,0,1280,topbarscale,0,c_black,cutscene_alpha);$(13_10)	draw_sprite_ext(spr_pixel,0,0,720,1280,bottombarscale,0,c_black,cutscene_alpha);	$(13_10)	$(13_10)}$(13_10)$(13_10)draw_sprite_ext(spr_pixel,0,0,0,1280,topbarscale,0,c_black,1);$(13_10)draw_sprite_ext(spr_pixel,0,0,720,1280,bottombarscale,0,c_black,1);"
if state = wait_state1 {
	//draw_sprite_ext(spr_pixel,0,0,0,1280,150,0,c_black,cutscene_alpha)
	//draw_sprite_ext(spr_pixel,0,0,570,1280,150,0,c_black,cutscene_alpha)
	
	draw_sprite_ext(spr_pixel,0,0,0,1280,topbarscale,0,c_black,cutscene_alpha);
	draw_sprite_ext(spr_pixel,0,0,720,1280,bottombarscale,0,c_black,cutscene_alpha);	
	
}

draw_sprite_ext(spr_pixel,0,0,0,1280,topbarscale,0,c_black,1);
draw_sprite_ext(spr_pixel,0,0,720,1280,bottombarscale,0,c_black,1);