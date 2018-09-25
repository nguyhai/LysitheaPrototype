/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10F6D39B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var level = argument0;$(13_10)var mana = argument1;$(13_10)$(13_10)// Calculate the health$(13_10)$(13_10)return round ((mana*2*level)+(3*level));"
/// @description Execute Code
var level = argument0;
var mana = argument1;

// Calculate the health

return round ((mana*2*level)+(3*level));