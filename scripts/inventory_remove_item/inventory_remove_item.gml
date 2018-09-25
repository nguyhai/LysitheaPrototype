/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42E58B98
/// @DnDArgument : "code" "/// inventory_remove_item(x, y);$(13_10)$(13_10)var xx = argument[0];$(13_10)var yy = argument[1];$(13_10)$(13_10)if (xx != median(0, xx, o_inventory.width -1) or yy != median(0, yy, o_inventory.height-1)){$(13_10)	show_debug_message("The x and y are outside the range.");$(13_10)	exit;$(13_10)}$(13_10)$(13_10)// Get the item count$(13_10)$(13_10)var item_count =  o_inventory.count[# xx, yy];$(13_10)$(13_10)// Make sure we have items - If we're removing items, we want to make sure it is$(13_10)// Greater than zero$(13_10)// If item count is greater than zero, we need to subtract 1 from the item count$(13_10)$(13_10)if (item_count > 0) {$(13_10)	// Take 1 from the item count$(13_10)	o_inventory.count[# xx, yy]--;$(13_10)	$(13_10)	// Get access to remove item$(13_10)	var remove_item = o_inventory.box [# xx, yy] = item.none;$(13_10)	$(13_10)	$(13_10)	// Check for last item$(13_10)	$(13_10)	if (item_count ==1){$(13_10)		// Set item box to empty, since we're removing the item if there is only one of them$(13_10)		o_inventory.box[# xx, yy] = item.none;$(13_10)	}$(13_10)	$(13_10)	// Return item removed (like for if you want to drop the item on the ground or something$(13_10)	return remove_item;$(13_10)	$(13_10)} else if (item_count ==0){$(13_10)	// Return none because tthere is no item to remove$(13_10)	show_debug_message("There was not an item at that location.");$(13_10)	return item.none;$(13_10)	$(13_10)} else {$(13_10)	// If it is less than zero, then show error message, because we should not have an item count less than zero$(13_10)	show_error ("The item count is less than 0", false);$(13_10)}$(13_10)"
/// inventory_remove_item(x, y);

var xx = argument[0];
var yy = argument[1];

if (xx != median(0, xx, o_inventory.width -1) or yy != median(0, yy, o_inventory.height-1)){
	show_debug_message("The x and y are outside the range.");
	exit;
}

// Get the item count

var item_count =  o_inventory.count[# xx, yy];

// Make sure we have items - If we're removing items, we want to make sure it is
// Greater than zero
// If item count is greater than zero, we need to subtract 1 from the item count

if (item_count > 0) {
	// Take 1 from the item count
	o_inventory.count[# xx, yy]--;
	
	// Get access to remove item
	var remove_item = o_inventory.box [# xx, yy] = item.none;
	
	
	// Check for last item
	
	if (item_count ==1){
		// Set item box to empty, since we're removing the item if there is only one of them
		o_inventory.box[# xx, yy] = item.none;
	}
	
	// Return item removed (like for if you want to drop the item on the ground or something
	return remove_item;
	
} else if (item_count ==0){
	// Return none because tthere is no item to remove
	show_debug_message("There was not an item at that location.");
	return item.none;
	
} else {
	// If it is less than zero, then show error message, because we should not have an item count less than zero
	show_error ("The item count is less than 0", false);
}