/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 626AEDEF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// The xscale also affects how long the sentences can be$(13_10)$(13_10)image_xscale = 0.8;$(13_10)$(13_10)// We're going to create text variable that is going to be an array$(13_10)// Reason we use array is because it has different pages, i.e. press x and it goes to next page$(13_10)$(13_10)$(13_10)//text[0] = "Test dialog";$(13_10)//text[1] = "This game sucks.";$(13_10)$(13_10)// This makes it show text a letter at a time. This contains what we're curently showing$(13_10)$(13_10)text_visible = "";$(13_10)// Lets us be on the first page$(13_10)text_page = 0;$(13_10)// Setup through and keep track of our position$(13_10)text_count = 0;$(13_10)cutscene = noone;$(13_10)$(13_10)width = sprite_width;$(13_10)spd = .5;$(13_10)margin = 4;$(13_10)//portrait = s_default_portrait;$(13_10)//portrait_x = (display_get_gui_width() - sprite_get_width(portrait)) - 42;$(13_10)//portrait_y = (display_get_gui_height() - sprite_get_height(portrait)) - 6;$(13_10)enabled = true;$(13_10)$(13_10)// Position$(13_10)$(13_10)pos_x = 62;$(13_10)pos_y = (display_get_gui_height() - sprite_height) -10;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// The xscale also affects how long the sentences can be

image_xscale = 0.8;

// We're going to create text variable that is going to be an array
// Reason we use array is because it has different pages, i.e. press x and it goes to next page


//text[0] = "Test dialog";
//text[1] = "This game sucks.";

// This makes it show text a letter at a time. This contains what we're curently showing

text_visible = "";
// Lets us be on the first page
text_page = 0;
// Setup through and keep track of our position
text_count = 0;
cutscene = noone;

width = sprite_width;
spd = .5;
margin = 4;
//portrait = s_default_portrait;
//portrait_x = (display_get_gui_width() - sprite_get_width(portrait)) - 42;
//portrait_y = (display_get_gui_height() - sprite_get_height(portrait)) - 6;
enabled = true;

// Position

pos_x = 62;
pos_y = (display_get_gui_height() - sprite_height) -10;