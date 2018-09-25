/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 760B909F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// scr_itempickup_slot(item, slot);$(13_10)// Argument 0 is the item, argument 1 is the slot$(13_10)// This is for clicking an item on a slot$(13_10)$(13_10)$(13_10)// If this slot is empty$(13_10)if (global.inventory[argument1] == -1) {$(13_10)	// Add the item to the slot if it's empty$(13_10)	global.inventory[argument1] = argument0;$(13_10)	return(1);$(13_10)}$(13_10)// If not able to add, just ignore it$(13_10)return(0);$(13_10)$(13_10)"
/// @description Execute Code
// scr_itempickup_slot(item, slot);
// Argument 0 is the item, argument 1 is the slot
// This is for clicking an item on a slot


// If this slot is empty
if (global.inventory[argument1] == -1) {
	// Add the item to the slot if it's empty
	global.inventory[argument1] = argument0;
	return(1);
}
// If not able to add, just ignore it
return(0);