/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FFD10BA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)///array(elements...)$(13_10)/*$(13_10)    Quick way to create arrays.$(13_10)    array(element1, element1, ect...)$(13_10)*/$(13_10)$(13_10)var new_array;$(13_10)$(13_10)// Loop through the arguments and set the array values$(13_10)for (var i=0; i<argument_count; i++) {$(13_10)    new_array[i] = argument[i];$(13_10)}$(13_10)$(13_10)// Return the new array$(13_10)return new_array;"
/// @description Execute Code
///array(elements...)
/*
    Quick way to create arrays.
    array(element1, element1, ect...)
*/

var new_array;

// Loop through the arguments and set the array values
for (var i=0; i<argument_count; i++) {
    new_array[i] = argument[i];
}

// Return the new array
return new_array;/**/