/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3AD101E8
/// @DnDArgument : "code" "xpos = 720;$(13_10)alpha = 1; // Start fully black$(13_10)fadeout = 0; // Controls which direction the alpha is moving$(13_10)$(13_10)str = ""; // Contains the whole line we want to draw$(13_10)print = ""; // Drawing 1 character at a time. Once this equals STR, we move on$(13_10)$(13_10)l = 0; // Represents the letters that we are at (the count)$(13_10)next = 0; // Helps us decide which array is next to print$(13_10)$(13_10)holdspace = 0; // Variable for us to decide if user has held space long enough to skip cutscene$(13_10)$(13_10)// Define the lines of text$(13_10)strings[0] = "This here is a test of a cutscene.";$(13_10)strings[1] = "Not sure what to put here as there \nis nothing going on yet, however....";$(13_10)strings[2] = "One day... maybe one day... this game will tell a story";$(13_10)strings[3] = "That's it for the cutscene test. Enjoy!";$(13_10)$(13_10)topbarscale = 0;$(13_10)bottombarscale = 0;$(13_10)$(13_10)// Need stages to determine actions of the cutscenes$(13_10)stage = 0;$(13_10)timer = 0;$(13_10)$(13_10)$(13_10)"
xpos = 720;
alpha = 1; // Start fully black
fadeout = 0; // Controls which direction the alpha is moving

str = ""; // Contains the whole line we want to draw
print = ""; // Drawing 1 character at a time. Once this equals STR, we move on

l = 0; // Represents the letters that we are at (the count)
next = 0; // Helps us decide which array is next to print

holdspace = 0; // Variable for us to decide if user has held space long enough to skip cutscene

// Define the lines of text
strings[0] = "This here is a test of a cutscene.";
strings[1] = "Not sure what to put here as there \nis nothing going on yet, however....";
strings[2] = "One day... maybe one day... this game will tell a story";
strings[3] = "That's it for the cutscene test. Enjoy!";

topbarscale = 0;
bottombarscale = 0;

// Need stages to determine actions of the cutscenes
stage = 0;
timer = 0;