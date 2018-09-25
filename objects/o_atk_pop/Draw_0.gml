/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AE316DB
/// @DnDArgument : "code" "/// @description Execute C$(13_10)$(13_10)var x1 = x - (sprite_width/2);$(13_10)var y1 = y - (sprite_height/2)-65;$(13_10)$(13_10)draw_set_font(global.fnt_cartoon);$(13_10)//draw_set_color(c_red);$(13_10)// Make the x and y values dynamic based on sprite size and total damage dealt$(13_10)if critical_hit = true {$(13_10)$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_font(global.fnt_cartoon);$(13_10)	draw_text_ext_transformed_colour(x1,y1, +"-"+string(round(totaldamage)), 100, 3000, 0.4, 0.4, 0, c_orange, c_red, c_orange, c_red, 1);$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_set_font(global.fnt_cartoon3);$(13_10)	draw_text_ext_transformed_colour(x1-30,y1-10,"Critical!", 100, 3000, 0.2, 0.2, 0, c_white, c_white, c_white, c_white, 1);$(13_10)	$(13_10)} else {$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_text_ext_transformed_colour(x1,y1, +"-"+string(totaldamage), 100, 3000, .4, 0.4, 0, c_white, c_white, c_white, c_white, 1);$(13_10)	draw_set_halign(fa_left);$(13_10)}	$(13_10)$(13_10)//draw_set_color(c_red);$(13_10)//draw_text_ext(x, y-20, +"-"+string(damage), 32, 100);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_normal);$(13_10)$(13_10)"
/// @description Execute C

var x1 = x - (sprite_width/2);
var y1 = y - (sprite_height/2)-65;

draw_set_font(global.fnt_cartoon);
//draw_set_color(c_red);
// Make the x and y values dynamic based on sprite size and total damage dealt
if critical_hit = true {

	draw_set_halign(fa_center);
	draw_set_font(global.fnt_cartoon);
	draw_text_ext_transformed_colour(x1,y1, +"-"+string(round(totaldamage)), 100, 3000, 0.4, 0.4, 0, c_orange, c_red, c_orange, c_red, 1);
	draw_set_halign(fa_left);
	draw_set_font(global.fnt_cartoon3);
	draw_text_ext_transformed_colour(x1-30,y1-10,"Critical!", 100, 3000, 0.2, 0.2, 0, c_white, c_white, c_white, c_white, 1);
	
} else {
	draw_set_halign(fa_center);
	draw_text_ext_transformed_colour(x1,y1, +"-"+string(totaldamage), 100, 3000, .4, 0.4, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
}	

//draw_set_color(c_red);
//draw_text_ext(x, y-20, +"-"+string(damage), 32, 100);
draw_set_color(c_white);
draw_set_font(fnt_normal);