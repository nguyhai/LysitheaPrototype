/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2410ADB5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)///is_in_array(value, array)$(13_10)/*$(13_10)    Can be used to search an array for a value.$(13_10)*/$(13_10)var value = argument0;$(13_10)var argument_array = argument1;$(13_10)$(13_10)// Search the array for the value$(13_10)for (var i=0; i<array_length_1d(argument_array); i++) {$(13_10)    // Return true if we find it$(13_10)    if (value == argument_array[i]) return true;$(13_10)}$(13_10)$(13_10)// Return false if we don't$(13_10)return false;"
/// @description Execute Code
///is_in_array(value, array)
/*
    Can be used to search an array for a value.
*/
var value = argument0;
var argument_array = argument1;

// Search the array for the value
for (var i=0; i<array_length_1d(argument_array); i++) {
    // Return true if we find it
    if (value == argument_array[i]) return true;
}

// Return false if we don't
return false;/**/