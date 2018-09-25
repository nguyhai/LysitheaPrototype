/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DA6B90C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Use this to convert a list to an array$(13_10)// This makes loading and saving easier because we wont have to worry bout marking the list in our save map$(13_10)$(13_10)var list = argument0;$(13_10)var arr;$(13_10)$(13_10)// Doesnt account for list without any size, so we need to fix it with the following$(13_10)// Return -1 if list is too small$(13_10)$(13_10)var list_size = ds_list_size(list);$(13_10)if (list_size < 1){$(13_10)	return -1;$(13_10)}$(13_10)$(13_10)// loop through the list, copy everything from the list to the array, then return the array$(13_10)for (var i=0; i<ds_list_size(list); i++) {$(13_10)	$(13_10)	arr[i] = list[| i];$(13_10)	$(13_10)}$(13_10)$(13_10)return arr;"
/// @description Execute Code
// Use this to convert a list to an array
// This makes loading and saving easier because we wont have to worry bout marking the list in our save map

var list = argument0;
var arr;

// Doesnt account for list without any size, so we need to fix it with the following
// Return -1 if list is too small

var list_size = ds_list_size(list);
if (list_size < 1){
	return -1;
}

// loop through the list, copy everything from the list to the array, then return the array
for (var i=0; i<ds_list_size(list); i++) {
	
	arr[i] = list[| i];
	
}

return arr;