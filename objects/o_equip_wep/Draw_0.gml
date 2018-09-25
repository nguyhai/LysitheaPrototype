/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06996F1A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Draw event is triggered every frame$(13_10)$(13_10)// The item is equal to the button's item in that slot$(13_10)// When an item is in the inventory, it will have a sprite index assigned to a slot$(13_10)var item = global.inventory[slot];// What this does is check that slot, and look at the sprite index$(13_10)var click = mouse_check_button_pressed(mb_left);$(13_10)$(13_10)// Draw the Sprite for the inventory if there is an item in the slot$(13_10)$(13_10)if (item !=-1){$(13_10)	draw_sprite(spr_items, global.inventory[i], x,y);$(13_10)}$(13_10)$(13_10)// Properties of the item$(13_10)$(13_10)// Checking the difference between the x coordinate of the mouse$(13_10)// If we're within 16 pixels of the origin of the button object$(13_10)// This will tell us if the mouse is hovering over the invbutton$(13_10)if (abs(mouse_x - x) < 16) && (abs(mouse_y - y) < 16) && showInv == true {$(13_10)	o_mouse_pointer.inside_box = true;$(13_10)	draw_set_alpha(.60);$(13_10)	draw_set_color(c_aqua);$(13_10)	draw_rectangle(x-16, y-16, x+16, y+16, 0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	//Draw the tooltip thing$(13_10)	if (item !=-1){$(13_10)$(13_10)	type = global.inventory[slot+1,0];			// Type (sword, etc)$(13_10)	levelreq = global.inventory[slot+1,1];		// Level Req$(13_10)	mindmg = global.inventory[slot+1,2];		// Min Damage$(13_10)	maxdmg = global.inventory[slot+1,3];		// Max Damage$(13_10)	name = global.inventory[slot+1, 5];			// Name$(13_10)	description = global.inventory[slot+1, 6];	// Description$(13_10)	rarity = global.inventory[slot+1, 7];		// Rarity$(13_10)			$(13_10)			draw_sprite(spr_tooltip,0,x,y-20);	$(13_10)			//draw_text(x-40,y-280,string(name));$(13_10)			if (rarity == 1)rarity = c_white;$(13_10)			if (rarity == 5)rarity = c_lime;$(13_10)			if (rarity == 10)rarity = c_red;$(13_10)			//depth = -2;$(13_10)			draw_text_color(x-40,y-280, string(name),rarity,rarity,rarity,rarity,1);$(13_10)			draw_text(x-40,y-240,"Type"+":"+string(type));$(13_10)			draw_text(x-40,y-220,"Level Requirement"+":"+string(levelreq));$(13_10)			draw_text(x-40,y-200,"Damage"+":"+string(mindmg)+"-"+string(maxdmg));$(13_10)			draw_text(x-40,y-100,"Description:");$(13_10)			draw_text(x-40,y-80,string(description[0]));$(13_10)			draw_text(x-40,y-60,string(description[1]));$(13_10)$(13_10)	}$(13_10)$(13_10)	//Click events$(13_10)	if (click){$(13_10)		if (item !=-1)and (mouseItem != -1){$(13_10)			// If stackable, then add to the count$(13_10)			$(13_10)			//Throw all the stat items into the temp stats$(13_10)			o_mouseitem.temptype= global.inventory[slot+1,0];$(13_10)			o_mouseitem.templevelreq=global.inventory[slot+1,1];$(13_10)			o_mouseitem.tempmindamage=global.inventory[slot+1,2];$(13_10)			o_mouseitem.tempmaxdamage=global.inventory[slot+1,3];$(13_10)			o_mouseitem.tempsockets=global.inventory[slot+1,4];$(13_10)			o_mouseitem.tempname=global.inventory[slot+1,5];$(13_10)			o_mouseitem.tempdescription=global.inventory[slot+1,6];$(13_10)			o_mouseitem.temprarity=global.inventory[slot+1,7];$(13_10)			$(13_10)			// Move the mouse stats into the array$(13_10)			global.inventory[slot+1,0]=o_mouseitem.type$(13_10)			global.inventory[slot+1,1]=o_mouseitem.levelreq;$(13_10)			global.inventory[slot+1,2]=o_mouseitem.mindamage;$(13_10)			global.inventory[slot+1,3]=o_mouseitem.maxdamage;$(13_10)			global.inventory[slot+1,4]=o_mouseitem.sockets;$(13_10)			global.inventory[slot+1,5]=o_mouseitem.name;$(13_10)			global.inventory[slot+1,6]=o_mouseitem.description;$(13_10)			global.inventory[slot+1,7]=o_mouseitem.rarity;$(13_10)			$(13_10)			//And move Mouse Stats to Array$(13_10)			/*$(13_10)			o_mouseitem.type = global.inventory[slot+1, 0];$(13_10)			o_mouseitem.levelreq = global.inventory[slot+1,1];$(13_10)			o_mouseitem.mindamage = global.inventory[slot+1,2];$(13_10)			o_mouseitem.maxdamage = global.inventory[slot+1,3];$(13_10)			o_mouseitem.sockets = global.inventory[slot+1,4];$(13_10)			*/$(13_10)			$(13_10)			// Alarm will trigger the mouse stats to equal the temp stats$(13_10)			o_mouseitem.alarm[0] = 1;$(13_10)			$(13_10)		}$(13_10)$(13_10)		// If item slot has an item$(13_10)		if (item !=-1){$(13_10)			$(13_10)			//We need to put the properties on the mouse item$(13_10)			//Access the array, and throw all the variables into the mouseitem stats$(13_10)$(13_10)			o_mouseitem.type = global.inventory[slot+1, 0];$(13_10)			o_mouseitem.levelreq = global.inventory[slot+1,1];$(13_10)			o_mouseitem.mindamage = global.inventory[slot+1,2];$(13_10)			o_mouseitem.maxdamage = global.inventory[slot+1,3];$(13_10)			o_mouseitem.sockets = global.inventory[slot+1,4];$(13_10)			o_mouseitem.name = global.inventory[slot+1,5];$(13_10)			o_mouseitem.description = global.inventory[slot+1,6];$(13_10)			o_mouseitem.rarity = global.inventory[slot+1,7];$(13_10)		$(13_10)$(13_10)			// Empty the slot$(13_10)			// We still have the var item that has the item stored$(13_10)			scr_itemdrop_slot(slot);$(13_10)$(13_10)		}$(13_10)		// If we have an item on our mouse$(13_10)		if (mouseItem != -1){$(13_10)			// Add the item from our mouse to that slot$(13_10)			scr_item_pickup_slot(mouseItem, slot);$(13_10)			//If clicked back onto inventory, throw all properties from mouseitem stats$(13_10)$(13_10)			//Into the empty slot that was clicked$(13_10)			global.inventory[slot+1,0]=o_mouseitem.type$(13_10)			global.inventory[slot+1,1]=o_mouseitem.levelreq;$(13_10)			global.inventory[slot+1,2]=o_mouseitem.mindamage;$(13_10)			global.inventory[slot+1,3]=o_mouseitem.maxdamage;$(13_10)			global.inventory[slot+1,4]=o_mouseitem.sockets;$(13_10)			global.inventory[slot+1,5]=o_mouseitem.name;$(13_10)			global.inventory[slot+1,6]=o_mouseitem.description;$(13_10)			global.inventory[slot+1,7]=o_mouseitem.rarity;$(13_10)		}$(13_10)$(13_10)		// If there is an item in the slot, it swaps it to our mouse item$(13_10)		// mouseItem = item means that mouseItem is the item in the slot$(13_10)		mouseItem = item;$(13_10)$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Draw event is triggered every frame

// The item is equal to the button's item in that slot
// When an item is in the inventory, it will have a sprite index assigned to a slot
var item = global.inventory[slot];// What this does is check that slot, and look at the sprite index
var click = mouse_check_button_pressed(mb_left);

// Draw the Sprite for the inventory if there is an item in the slot

if (item !=-1){
	draw_sprite(spr_items, global.inventory[i], x,y);
}

// Properties of the item

// Checking the difference between the x coordinate of the mouse
// If we're within 16 pixels of the origin of the button object
// This will tell us if the mouse is hovering over the invbutton
if (abs(mouse_x - x) < 16) && (abs(mouse_y - y) < 16) && showInv == true {
	o_mouse_pointer.inside_box = true;
	draw_set_alpha(.60);
	draw_set_color(c_aqua);
	draw_rectangle(x-16, y-16, x+16, y+16, 0);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	//Draw the tooltip thing
	if (item !=-1){

	type = global.inventory[slot+1,0];			// Type (sword, etc)
	levelreq = global.inventory[slot+1,1];		// Level Req
	mindmg = global.inventory[slot+1,2];		// Min Damage
	maxdmg = global.inventory[slot+1,3];		// Max Damage
	name = global.inventory[slot+1, 5];			// Name
	description = global.inventory[slot+1, 6];	// Description
	rarity = global.inventory[slot+1, 7];		// Rarity
			
			draw_sprite(spr_tooltip,0,x,y-20);	
			//draw_text(x-40,y-280,string(name));
			if (rarity == 1)rarity = c_white;
			if (rarity == 5)rarity = c_lime;
			if (rarity == 10)rarity = c_red;
			//depth = -2;
			draw_text_color(x-40,y-280, string(name),rarity,rarity,rarity,rarity,1);
			draw_text(x-40,y-240,"Type"+":"+string(type));
			draw_text(x-40,y-220,"Level Requirement"+":"+string(levelreq));
			draw_text(x-40,y-200,"Damage"+":"+string(mindmg)+"-"+string(maxdmg));
			draw_text(x-40,y-100,"Description:");
			draw_text(x-40,y-80,string(description[0]));
			draw_text(x-40,y-60,string(description[1]));

	}

	//Click events
	if (click){
		if (item !=-1)and (mouseItem != -1){
			// If stackable, then add to the count
			
			//Throw all the stat items into the temp stats
			o_mouseitem.temptype= global.inventory[slot+1,0];
			o_mouseitem.templevelreq=global.inventory[slot+1,1];
			o_mouseitem.tempmindamage=global.inventory[slot+1,2];
			o_mouseitem.tempmaxdamage=global.inventory[slot+1,3];
			o_mouseitem.tempsockets=global.inventory[slot+1,4];
			o_mouseitem.tempname=global.inventory[slot+1,5];
			o_mouseitem.tempdescription=global.inventory[slot+1,6];
			o_mouseitem.temprarity=global.inventory[slot+1,7];
			
			// Move the mouse stats into the array
			global.inventory[slot+1,0]=o_mouseitem.type
			global.inventory[slot+1,1]=o_mouseitem.levelreq;
			global.inventory[slot+1,2]=o_mouseitem.mindamage;
			global.inventory[slot+1,3]=o_mouseitem.maxdamage;
			global.inventory[slot+1,4]=o_mouseitem.sockets;
			global.inventory[slot+1,5]=o_mouseitem.name;
			global.inventory[slot+1,6]=o_mouseitem.description;
			global.inventory[slot+1,7]=o_mouseitem.rarity;
			
			//And move Mouse Stats to Array
			/*
			o_mouseitem.type = global.inventory[slot+1, 0];
			o_mouseitem.levelreq = global.inventory[slot+1,1];
			o_mouseitem.mindamage = global.inventory[slot+1,2];
			o_mouseitem.maxdamage = global.inventory[slot+1,3];
			o_mouseitem.sockets = global.inventory[slot+1,4];
			*/
			
			// Alarm will trigger the mouse stats to equal the temp stats
			o_mouseitem.alarm[0] = 1;
			
		}

		// If item slot has an item
		if (item !=-1){
			
			//We need to put the properties on the mouse item
			//Access the array, and throw all the variables into the mouseitem stats

			o_mouseitem.type = global.inventory[slot+1, 0];
			o_mouseitem.levelreq = global.inventory[slot+1,1];
			o_mouseitem.mindamage = global.inventory[slot+1,2];
			o_mouseitem.maxdamage = global.inventory[slot+1,3];
			o_mouseitem.sockets = global.inventory[slot+1,4];
			o_mouseitem.name = global.inventory[slot+1,5];
			o_mouseitem.description = global.inventory[slot+1,6];
			o_mouseitem.rarity = global.inventory[slot+1,7];
		

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
			global.inventory[slot+1,0]=o_mouseitem.type
			global.inventory[slot+1,1]=o_mouseitem.levelreq;
			global.inventory[slot+1,2]=o_mouseitem.mindamage;
			global.inventory[slot+1,3]=o_mouseitem.maxdamage;
			global.inventory[slot+1,4]=o_mouseitem.sockets;
			global.inventory[slot+1,5]=o_mouseitem.name;
			global.inventory[slot+1,6]=o_mouseitem.description;
			global.inventory[slot+1,7]=o_mouseitem.rarity;
		}

		// If there is an item in the slot, it swaps it to our mouse item
		// mouseItem = item means that mouseItem is the item in the slot
		mouseItem = item;

	}
}







/**/