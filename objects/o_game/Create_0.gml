/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12FE0EDA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)randomize();$(13_10)$(13_10)// go to the next room$(13_10)$(13_10)room_goto_next();$(13_10)$(13_10)// Create the last room variable$(13_10)$(13_10)last_room = rm_town;$(13_10)$(13_10)//Create save data - Creates a new map - We're using a map to save our game$(13_10)$(13_10)global.save_data = ds_map_create();$(13_10)$(13_10)// VSYNC$(13_10)$(13_10)display_reset(2, true);$(13_10)$(13_10)// Cursor Sprite$(13_10)window_set_cursor(cr_none);$(13_10)//cursor_sprite = spr_cursor;$(13_10)$(13_10)// Create the Cartoon Fonts$(13_10)$(13_10)global.fnt_cartoon = font_add_sprite_ext(spr_cartoon, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);$(13_10)global.fnt_cartoon = font_add_sprite_ext(spr_cartoon, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);$(13_10)global.fnt_cartoon2 = font_add_sprite_ext(spr_cartoon2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);$(13_10)global.fnt_cartoon3 = font_add_sprite_ext(spr_cartoon3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);$(13_10)global.fnt_cartoon4 = font_add_sprite_ext(spr_cartoon4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);$(13_10)global.fnt_cartoon5 = font_add_sprite_ext(spr_cartoon5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);$(13_10)global.fnt_cartoon6 = font_add_sprite_ext(spr_cartoon6CapsOnly, "ABCDEFGHIJKLMNOPQRSTUVWXYZ ", true, -12);$(13_10)$(13_10)// Change Resolution$(13_10)$(13_10)//surface_resize(application_surface, 1280, 720);$(13_10)$(13_10)$(13_10)/*$(13_10)The asset pack has a buch of included files (png images) that contains sprite fonts (most of them are color variations).$(13_10)$(13_10)To use these included files you can do this:$(13_10)1. Create new sprite. $(13_10)2. Press Edit Sprite. Press menu File | Import from strip$(13_10)3. Select a sprite sheet image (e.g. 'Cartoon2_color8_sheet.png')$(13_10)In window 'Loading a strip image' you must set $(13_10) - Number of images$(13_10) - Images per row$(13_10) - Image widht and height$(13_10)You will find these information in a txt file in inclued files (e.g. 'Cartoon2.txt')$(13_10)In Window 'Sprite Editor' you must define the witdh of character ' ' (space)  $(13_10) - Find the first empty image (it is just after the last image showing a character)$(13_10) - Then edit the image (double click it)$(13_10) - Pick any color. Set Opacity to 1. Draw a line that is aobut half the width of the image.$(13_10) - See also 'Note about the space character.png' (in the included files)$(13_10)Close opened windows$(13_10)Here in 'Room creation code' you must add the font just using font_add_sprite_ext (see code above). $(13_10)The string of characters you will find in inclued files (e.g. 'Cartoon2.txt')$(13_10)$(13_10)Now your new sprite font is ready for use! $(13_10)Enjoy!$(13_10)$(13_10)*/"
/// @description Execute Code
randomize();

// go to the next room

room_goto_next();

// Create the last room variable

last_room = rm_town;

//Create save data - Creates a new map - We're using a map to save our game

global.save_data = ds_map_create();

// VSYNC

display_reset(2, true);

// Cursor Sprite
window_set_cursor(cr_none);
//cursor_sprite = spr_cursor;

// Create the Cartoon Fonts

global.fnt_cartoon = font_add_sprite_ext(spr_cartoon, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);
global.fnt_cartoon = font_add_sprite_ext(spr_cartoon, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);
global.fnt_cartoon2 = font_add_sprite_ext(spr_cartoon2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);
global.fnt_cartoon3 = font_add_sprite_ext(spr_cartoon3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);
global.fnt_cartoon4 = font_add_sprite_ext(spr_cartoon4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);
global.fnt_cartoon5 = font_add_sprite_ext(spr_cartoon5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+", true, -12);
global.fnt_cartoon6 = font_add_sprite_ext(spr_cartoon6CapsOnly, "ABCDEFGHIJKLMNOPQRSTUVWXYZ ", true, -12);

// Change Resolution

//surface_resize(application_surface, 1280, 720);


/*
The asset pack has a buch of included files (png images) that contains sprite fonts (most of them are color variations).

To use these included files you can do this:
1. Create new sprite. 
2. Press Edit Sprite. Press menu File | Import from strip
3. Select a sprite sheet image (e.g. 'Cartoon2_color8_sheet.png')
In window 'Loading a strip image' you must set 
 - Number of images
 - Images per row
 - Image widht and height
You will find these information in a txt file in inclued files (e.g. 'Cartoon2.txt')
In Window 'Sprite Editor' you must define the witdh of character ' ' (space)  
 - Find the first empty image (it is just after the last image showing a character)
 - Then edit the image (double click it)
 - Pick any color. Set Opacity to 1. Draw a line that is aobut half the width of the image.
 - See also 'Note about the space character.png' (in the included files)
Close opened windows
Here in 'Room creation code' you must add the font just using font_add_sprite_ext (see code above). 
The string of characters you will find in inclued files (e.g. 'Cartoon2.txt')

Now your new sprite font is ready for use! 
Enjoy!

*//**/