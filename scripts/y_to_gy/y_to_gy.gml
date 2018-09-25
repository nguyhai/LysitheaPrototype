/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CECF838
/// @DnDArgument : "code" "/// y_to_gy{y};$(13_10)$(13_10)// This function will convert an x coordinate in the room to a grid coordinate in our grid$(13_10)$(13_10)var yy = argument[0];$(13_10)// If the x position we are passing in is less than the inventory x position,$(13_10)// Then we are outside of the inventory $(13_10)if (yy < o_inventory.y) return -1;$(13_10)return (yy - o_inventory.y) div o_inventory.box_size;$(13_10)"
/// y_to_gy{y};

// This function will convert an x coordinate in the room to a grid coordinate in our grid

var yy = argument[0];
// If the x position we are passing in is less than the inventory x position,
// Then we are outside of the inventory 
if (yy < o_inventory.y) return -1;
return (yy - o_inventory.y) div o_inventory.box_size;