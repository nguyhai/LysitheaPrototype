/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BB3F5BD
/// @DnDArgument : "code" "/// inventory_add_item(x,y,item)$(13_10)$(13_10)// Add in the coordinates where we want to add the item$(13_10)$(13_10)var xx = argument[0];$(13_10)var yy = argument[1];$(13_10)var add_item = argument[2];$(13_10)$(13_10)// Check to see if we are inside the range of our grid$(13_10)$(13_10)// Check for out of range$(13_10)if (xx != median(0, xx, o_inventory.width -1) or yy != median(0, yy, o_inventory.height-1)){$(13_10)	show_debug_message("The x and y are outside the range.");$(13_10)	exit;$(13_10)}$(13_10)$(13_10)// Get the item count$(13_10)$(13_10)var item_count =  o_inventory.count[# xx, yy];$(13_10)$(13_10)$(13_10)$(13_10)// If item_count is equal to zero, that is an empty box$(13_10)if (item_count == 0){$(13_10)	// Add item$(13_10)	o_inventory.box[# xx, yy] = add_item;$(13_10)	// Add 1 to the count$(13_10)	o_inventory.count[# xx, yy]++;$(13_10)	// Return back out, because we were able to add the item$(13_10)	return true;$(13_10)	$(13_10)} else if (item_count > 0){$(13_10)	// There is already an item here$(13_10)	// Need to check to see if it is the same item, and if yes, we can add it$(13_10)$(13_10)	if (o_inventory.box[# xx, yy] == add_item){$(13_10)		// Add 1 to count$(13_10)		o_inventory.count[# xx, yy]++;$(13_10)		return true;$(13_10)	} else {$(13_10)		// If item there is not equal$(13_10)		return false;$(13_10)		show_debug_message("There is already an item there.");$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)} else {$(13_10)	// If it is less than zero, then show error message, because we should not have an item count less than zero$(13_10)	show_error ("The item count is less than 0", false);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// inventory_add_item(x,y,item)

// Add in the coordinates where we want to add the item

var xx = argument[0];
var yy = argument[1];
var add_item = argument[2];

// Check to see if we are inside the range of our grid

// Check for out of range
if (xx != median(0, xx, o_inventory.width -1) or yy != median(0, yy, o_inventory.height-1)){
	show_debug_message("The x and y are outside the range.");
	exit;
}

// Get the item count

var item_count =  o_inventory.count[# xx, yy];



// If item_count is equal to zero, that is an empty box
if (item_count == 0){
	// Add item
	o_inventory.box[# xx, yy] = add_item;
	// Add 1 to the count
	o_inventory.count[# xx, yy]++;
	// Return back out, because we were able to add the item
	return true;
	
} else if (item_count > 0){
	// There is already an item here
	// Need to check to see if it is the same item, and if yes, we can add it

	if (o_inventory.box[# xx, yy] == add_item){
		// Add 1 to count
		o_inventory.count[# xx, yy]++;
		return true;
	} else {
		// If item there is not equal
		return false;
		show_debug_message("There is already an item there.");
	}
	
	
	
} else {
	// If it is less than zero, then show error message, because we should not have an item count less than zero
	show_error ("The item count is less than 0", false);
}