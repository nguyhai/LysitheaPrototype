/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3971930B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Inventory_pickup_item(item);$(13_10)$(13_10)var add_item = argument[0];$(13_10)$(13_10)//Check for item in inventory$(13_10)//If item exists in inventory, just stack it up$(13_10)// This will loop through all our item boxes$(13_10)for (var yy = 0; yy < o_inventory.width; yy++){$(13_10)$(13_10)	for (var xx = 0; xx < o_inventory.width; xx++){$(13_10)		// If we find something in our inventory:$(13_10)		if (o_inventory.box[# xx,yy] == add_item) {$(13_10)			o_inventory.count[# xx, yy]++;$(13_10)			// Checked for the item, added the item, and now we can return back out again$(13_10)			return true;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)//Chheck for the first empty slot$(13_10)// This will loop through all our item boxes$(13_10)for (var yy = 0; yy < o_inventory.width; yy++){$(13_10)$(13_10)	for (var xx = 0; xx < o_inventory.width; xx++){$(13_10)		// If we find an empty slot:$(13_10)		if (o_inventory.box[# xx,yy] == item.none) {$(13_10)			o_inventory.box[# xx, yy]= add_item;$(13_10)			o_inventory.count[# xx, yy]++;$(13_10)			// Checked for the item, added the item, and now we can return back out again$(13_10)			return true;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)// If we cant find an empty slot, inventory is full, return false on add item$(13_10)show_debug_message("The inventory is full");$(13_10)return false;$(13_10)"
/// @description Execute Code
// Inventory_pickup_item(item);

var add_item = argument[0];

//Check for item in inventory
//If item exists in inventory, just stack it up
// This will loop through all our item boxes
for (var yy = 0; yy < o_inventory.width; yy++){

	for (var xx = 0; xx < o_inventory.width; xx++){
		// If we find something in our inventory:
		if (o_inventory.box[# xx,yy] == add_item) {
			o_inventory.count[# xx, yy]++;
			// Checked for the item, added the item, and now we can return back out again
			return true;
		}
	}
	
}

//Chheck for the first empty slot
// This will loop through all our item boxes
for (var yy = 0; yy < o_inventory.width; yy++){

	for (var xx = 0; xx < o_inventory.width; xx++){
		// If we find an empty slot:
		if (o_inventory.box[# xx,yy] == item.none) {
			o_inventory.box[# xx, yy]= add_item;
			o_inventory.count[# xx, yy]++;
			// Checked for the item, added the item, and now we can return back out again
			return true;
		}
	}
	
}
// If we cant find an empty slot, inventory is full, return false on add item
show_debug_message("The inventory is full");
return false;