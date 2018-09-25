/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F83EF87
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var item = global.inventory[slot];$(13_10)// If slot is not empty and if there is an item on the mouse and it is the right equipment type...$(13_10)		if (item !=-1)and (mouseItem != -1) {$(13_10)			$(13_10)			// Throw all the stat items into the temp stats$(13_10)			script_execute(scr_array_to_mousetemp);$(13_10)$(13_10)			// Move the mouse stats into the array - This creates the item in the quip slot$(13_10)			script_execute(scr_mousestats_to_array);$(13_10)			$(13_10)			// Alarm will trigger the mouse stats to equal the temp stats - Now mouse is holding the previous equipped item$(13_10)			o_mouseitem.alarm[0] = 1;$(13_10)			$(13_10)		}$(13_10)		// If item slot has an item and we don't have an item on our mouse$(13_10)		if (item !=-1){$(13_10)			$(13_10)			//We need to put the properties on the mouse item$(13_10)			//Access the array, and throw all the variables into the mouseitem stats$(13_10)			script_execute(scr_array_to_mousestats);$(13_10)$(13_10)			// Empty the slot$(13_10)			// We still have the var item that has the item stored$(13_10)			scr_itemdrop_slot(slot);$(13_10)		}$(13_10)		// If we have an item on our mouse$(13_10)		if (mouseItem != -1){$(13_10)			// Add the item from our mouse to that slot$(13_10)			scr_item_pickup_slot(mouseItem, slot);$(13_10)			//If clicked back onto inventory, throw all properties from mouseitem stats$(13_10)$(13_10)			//Into the empty slot that was clicked$(13_10)			script_execute(scr_mousestats_to_array);$(13_10)$(13_10)		}$(13_10)		// If there is an item in the slot, it swaps it to our mouse item$(13_10)		// mouseItem = item means that mouseItem is the item in the slot$(13_10)			mouseItem = item;"
/// @description Execute Code
var item = global.inventory[slot];
// If slot is not empty and if there is an item on the mouse and it is the right equipment type...
		if (item !=-1)and (mouseItem != -1) {
			
			// Throw all the stat items into the temp stats
			script_execute(scr_array_to_mousetemp);

			// Move the mouse stats into the array - This creates the item in the quip slot
			script_execute(scr_mousestats_to_array);
			
			// Alarm will trigger the mouse stats to equal the temp stats - Now mouse is holding the previous equipped item
			o_mouseitem.alarm[0] = 1;
			
		}
		// If item slot has an item and we don't have an item on our mouse
		if (item !=-1){
			
			//We need to put the properties on the mouse item
			//Access the array, and throw all the variables into the mouseitem stats
			script_execute(scr_array_to_mousestats);

			// Empty the slot
			// We still have the var item that has the item stored
			scr_itemdrop_slot(slot);
		}
		// If we have an item on our mouse
		if (mouseItem != -1){
			// Add the item from our mouse to that slot
			scr_item_pickup_slot(mouseItem, slot);
			//If clicked back onto inventory, throw all properties from mouseitem stats

			//Into the empty slot that was clicked
			script_execute(scr_mousestats_to_array);

		}
		// If there is an item in the slot, it swaps it to our mouse item
		// mouseItem = item means that mouseItem is the item in the slot
			mouseItem = item;