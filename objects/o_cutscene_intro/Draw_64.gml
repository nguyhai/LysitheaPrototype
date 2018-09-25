/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C9BE634
/// @DnDArgument : "code" "// Set GUI size$(13_10)display_set_gui_size(1280,720);$(13_10)$(13_10)// Draw black bars at top and bottom, they fade in$(13_10)draw_sprite_ext(spr_pixel,0,0,0,1280,topbarscale,0,c_black,1);$(13_10)draw_sprite_ext(spr_pixel,0,0,720,1280,bottombarscale,0,c_black,1);$(13_10)$(13_10)draw_set_color(c_white);$(13_10)//draw_set_halign(fa_center);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top)$(13_10)$(13_10)if topbarscale >= 150 {$(13_10)	draw_text(530                                                  , 625, print);$(13_10)	$(13_10)	//Wave(from, to, duration, offset)$(13_10)	draw_set_alpha(wave(0.2,1,1,0));$(13_10)	draw_text(1085, 15,"[Hold Space to Skip]")$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)$(13_10)$(13_10)// Draw fade in black$(13_10)draw_sprite_ext(spr_pixel,0,0,0,1280,720,0,c_black,alpha);$(13_10)"
// Set GUI size
display_set_gui_size(1280,720);

// Draw black bars at top and bottom, they fade in
draw_sprite_ext(spr_pixel,0,0,0,1280,topbarscale,0,c_black,1);
draw_sprite_ext(spr_pixel,0,0,720,1280,bottombarscale,0,c_black,1);

draw_set_color(c_white);
//draw_set_halign(fa_center);
draw_set_halign(fa_left);
draw_set_valign(fa_top)

if topbarscale >= 150 {
	draw_text(530                                                  , 625, print);
	
	//Wave(from, to, duration, offset)
	draw_set_alpha(wave(0.2,1,1,0));
	draw_text(1085, 15,"[Hold Space to Skip]")
	draw_set_alpha(1);
}


// Draw fade in black
draw_sprite_ext(spr_pixel,0,0,0,1280,720,0,c_black,alpha);