/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6ABA64BB
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Draw nine slice script draw_nine_slice $(13_10)// It's gonna look like a rectangle$(13_10)$(13_10)var sprite = argument0;$(13_10)var x1 = argument1;$(13_10)var y1 = argument2;$(13_10)var x2 = argument3;$(13_10)var y2 = argument4;$(13_10)$(13_10)// Slice width slice height$(13_10)var sw = sprite_get_width(sprite)/3;$(13_10)var sh = sprite_get_height(sprite)/3;$(13_10)var w = x2-x1;$(13_10)var h = y2-y1;$(13_10)$(13_10)// Top $(13_10)draw_sprite_part_ext (sprite, 0, 0 ,0, sw, sh, x1, y1, 1, 1, c_white, 1); // Left$(13_10)draw_sprite_part_ext (sprite, 0, sw,0, sw, sh, x1+sw, y1, (w-sw*2)/sw, 1, c_white, 1); // Middle$(13_10)draw_sprite_part_ext (sprite, 0, sw*2,0, sw, sh, x2-sw, y1, 1, 1, c_white, 1); // Right$(13_10)$(13_10)// Middle$(13_10)draw_sprite_part_ext (sprite, 0, 0 ,sh, sw, sh, x1, y1+sh, 1,(h-sh*2)/sh, c_white, 1); // Left$(13_10)draw_sprite_part_ext (sprite, 0, sw, sh, sw, sh, x1+sw, y1+sh, (w-sw*2)/sw, (h-sh*2)/sh, c_white, 1); // Middle$(13_10)draw_sprite_part_ext (sprite, 0, sw*2,sh, sw, sh, x2-sw, y1+sh, 1, (h-sh*2)/sh, c_white, 1); // Right$(13_10)$(13_10)// Bottom $(13_10)draw_sprite_part_ext (sprite, 0, 0 ,sh*2, sw, sh*2, x1, y2-sh, 1, 1, c_white, 1); // Left$(13_10)draw_sprite_part_ext (sprite, 0, sw,sh*2, sw, sh, x1+sw, y2-sh, (w-sw*2)/sw, 1, c_white, 1); // Middle$(13_10)draw_sprite_part_ext (sprite, 0, sw*2,sh*2, sw, sh, x2-sw, y2-sh, 1, 1, c_white, 1); // Right"
/// @description Execute Code

// Draw nine slice script draw_nine_slice 
// It's gonna look like a rectangle

var sprite = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;

// Slice width slice height
var sw = sprite_get_width(sprite)/3;
var sh = sprite_get_height(sprite)/3;
var w = x2-x1;
var h = y2-y1;

// Top 
draw_sprite_part_ext (sprite, 0, 0 ,0, sw, sh, x1, y1, 1, 1, c_white, 1); // Left
draw_sprite_part_ext (sprite, 0, sw,0, sw, sh, x1+sw, y1, (w-sw*2)/sw, 1, c_white, 1); // Middle
draw_sprite_part_ext (sprite, 0, sw*2,0, sw, sh, x2-sw, y1, 1, 1, c_white, 1); // Right

// Middle
draw_sprite_part_ext (sprite, 0, 0 ,sh, sw, sh, x1, y1+sh, 1,(h-sh*2)/sh, c_white, 1); // Left
draw_sprite_part_ext (sprite, 0, sw, sh, sw, sh, x1+sw, y1+sh, (w-sw*2)/sw, (h-sh*2)/sh, c_white, 1); // Middle
draw_sprite_part_ext (sprite, 0, sw*2,sh, sw, sh, x2-sw, y1+sh, 1, (h-sh*2)/sh, c_white, 1); // Right

// Bottom 
draw_sprite_part_ext (sprite, 0, 0 ,sh*2, sw, sh*2, x1, y2-sh, 1, 1, c_white, 1); // Left
draw_sprite_part_ext (sprite, 0, sw,sh*2, sw, sh, x1+sw, y2-sh, (w-sw*2)/sw, 1, c_white, 1); // Middle
draw_sprite_part_ext (sprite, 0, sw*2,sh*2, sw, sh, x2-sw, y2-sh, 1, 1, c_white, 1); // Right