/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70831D39
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Pick up the item$(13_10)$(13_10)// Make sure you dont have an item$(13_10)if (global.item == -1){$(13_10)	global.item = object_index;$(13_10)	//instance_destroy();$(13_10)}"
/// @description Execute Code
// Pick up the item

// Make sure you dont have an item
if (global.item == -1){
	global.item = object_index;
	//instance_destroy();
}