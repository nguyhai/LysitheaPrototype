/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CECF838
/// @DnDArgument : "code" "/// x_to_gx{x};$(13_10)$(13_10)// This function will convert an x coordinate in the room to a grid coordinate in our grid$(13_10)$(13_10)var xx = argument[0];$(13_10)// If the x position we are passing in is less than the inventory x position,$(13_10)// Then we are outside of the inventory $(13_10)if (xx < o_inventory.x) return -1;$(13_10)return (xx - o_inventory.x) div o_inventory.box_size;$(13_10)$(13_10)$(13_10)"
/// x_to_gx{x};

// This function will convert an x coordinate in the room to a grid coordinate in our grid

var xx = argument[0];
// If the x position we are passing in is less than the inventory x position,
// Then we are outside of the inventory 
if (xx < o_inventory.x) return -1;
return (xx - o_inventory.x) div o_inventory.box_size;