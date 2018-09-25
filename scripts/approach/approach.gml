/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 180EEFA7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// This function can be used to approach a value but not pass the value$(13_10)$(13_10)var current = argument[0]; // Current value$(13_10)var target = argument[1]; // Target value$(13_10)var amount = argument[2]; // Amount to approach each step $(13_10)$(13_10)// Approach the value but dont go over$(13_10)if (current < target){$(13_10)	return min (current+amount, target);$(13_10)} else {$(13_10)	return max(current-amount, target);$(13_10)}"
/// @description Execute Code
// This function can be used to approach a value but not pass the value

var current = argument[0]; // Current value
var target = argument[1]; // Target value
var amount = argument[2]; // Amount to approach each step 

// Approach the value but dont go over
if (current < target){
	return min (current+amount, target);
} else {
	return max(current-amount, target);
}