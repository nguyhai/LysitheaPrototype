/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04F08777
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Draw the vignette$(13_10)$(13_10)// Draw the frame$(13_10)draw_sprite(sprite_index, 0, pos_x, pos_y);$(13_10)$(13_10)// Draw the portrait$(13_10)//draw_sprite(portrait, 0, portrait_x-1, portrait_y);$(13_10)$(13_10)//draw_sprite(s_portrait_frame, 0, portrait_x-4, portrait_y-4);$(13_10)$(13_10)// Set the font$(13_10)$(13_10)draw_set_font(fnt_npc1);$(13_10)//draw_set_halign(fa_left);$(13_10)$(13_10)// Draw the text shadow$(13_10)$(13_10)draw_text_ext_color(pos_x + margin + 50, pos_y+margin+13, text_visible, -1, width-margin*2, c_black, c_black, c_black, c_black, 1);$(13_10)$(13_10)// Draw the text$(13_10)draw_text_ext_color(pos_x + margin + 48, pos_y+margin+12, text_visible, -1, width-margin*2, c_white, c_white, c_white, c_white, 1);$(13_10)$(13_10)// Add to the count$(13_10)if (alarm[0] <=0){$(13_10)	text_count +=spd;$(13_10)}$(13_10)"
/// @description Execute Code

// Draw the vignette

// Draw the frame
draw_sprite(sprite_index, 0, pos_x, pos_y);

// Draw the portrait
//draw_sprite(portrait, 0, portrait_x-1, portrait_y);

//draw_sprite(s_portrait_frame, 0, portrait_x-4, portrait_y-4);

// Set the font

draw_set_font(fnt_npc1);
//draw_set_halign(fa_left);

// Draw the text shadow

draw_text_ext_color(pos_x + margin + 50, pos_y+margin+13, text_visible, -1, width-margin*2, c_black, c_black, c_black, c_black, 1);

// Draw the text
draw_text_ext_color(pos_x + margin + 48, pos_y+margin+12, text_visible, -1, width-margin*2, c_white, c_white, c_white, c_white, 1);

// Add to the count
if (alarm[0] <=0){
	text_count +=spd;
}