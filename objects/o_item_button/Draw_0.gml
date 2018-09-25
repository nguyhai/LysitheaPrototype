/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 522F877B
/// @DnDArgument : "code" "var item = global.itembar[slot];// What this does is check that slot, and look at the sprite index$(13_10)var shift  = keyboard_check(vk_shift);$(13_10)$(13_10)// Need a timer so you cant click too fast on bar$(13_10)if o_inventory.left_click_timer = 10{$(13_10)	var click = mouse_check_button_pressed(mb_left);$(13_10)} else{$(13_10)	var click = noone;$(13_10)}$(13_10)$(13_10)if o_inventory.right_click_timer = 10{$(13_10)	var rightclick = mouse_check_button_pressed(mb_right);$(13_10)} else{$(13_10)	var rightclick = noone;$(13_10)}$(13_10)$(13_10)if instance_exists(o_player) and o_player.cutscene = false {$(13_10)$(13_10)	// Draw the stack counts$(13_10)	depth = -2;	$(13_10)	$(13_10)	if slot = 0 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "1");$(13_10)		draw_set_font(fnt_normal)$(13_10)$(13_10)		if o_item_bar.slotpress0 = true {$(13_10)			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)$(13_10)			o_item_bar.slotpress0 = false;$(13_10)		}	$(13_10)	}$(13_10)	$(13_10)	if slot = 1 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "2");$(13_10)		draw_set_font(fnt_normal)$(13_10)		$(13_10)		if o_item_bar.slotpress1 = true {$(13_10)			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)$(13_10)			o_item_bar.slotpress1 = false;$(13_10)		}			$(13_10)	}$(13_10)$(13_10)$(13_10)	$(13_10)	if slot = 2 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "3");$(13_10)		draw_set_font(fnt_normal)$(13_10)		$(13_10)		if o_item_bar.slotpress2 = true {$(13_10)			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)$(13_10)			o_item_bar.slotpress2 = false;$(13_10)		}	$(13_10)	}$(13_10)	$(13_10)	if slot = 3 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "4");$(13_10)		draw_set_font(fnt_normal)$(13_10)		$(13_10)		if o_item_bar.slotpress3 = true {$(13_10)			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)$(13_10)			o_item_bar.slotpress3 = false;$(13_10)		}	$(13_10)	}	$(13_10)	$(13_10)// On click events$(13_10)$(13_10)if (abs(mouse_x - x) < 18) && (abs(mouse_y - y) < 18){$(13_10)$(13_10)	if slot >=0 and slot <= 3 {$(13_10)	$(13_10)		//Wave(from, to, duration, offset)$(13_10)		draw_sprite_ext(spr_item_hover_white, 0,x,y,1.1,1.1,0,c_white,wave(.25, .90, 2,0))$(13_10)$(13_10)		// Define the variables for the tooltip$(13_10)		script_execute(scr_itembar_tooltip_variables);$(13_10)		$(13_10)		// If there is no item in slot, and mouseItem has a valid item on it, then add the item to the slot$(13_10)		if (click) and !rightclick{$(13_10)		$(13_10)			o_inventory.left_click_timer = 0; // Set timer to 0 per left click$(13_10)			script_execute(scr_equipsound_click);$(13_10)$(13_10)			// This is for adding stackable items$(13_10)			if (item !=-1) and (mouseItem != -1) and global.itembar[slot+1,9] > 0 and global.itembar[slot+1,9] < 100 and o_mouseitem.name == global.itembar[slot+1, 5] and (o_mouseitem.type = "Potion" or o_mouseitem.type = "Scroll"){$(13_10)				$(13_10)				//audio_play_sound(snd_wand_equip,9,false); // Test$(13_10)				// Move the mouse stackcount to temp var$(13_10)				o_mouseitem.tempstackcount = o_mouseitem.stackcount;$(13_10)				// Move the stats from slot into the mousestats$(13_10)				script_execute(scr_itembar_array_to_mousestats);$(13_10)				// Add stackcount and tempstackcount together for final stack count$(13_10)				o_mouseitem.stackcount = o_mouseitem.stackcount + o_mouseitem.tempstackcount;$(13_10)				$(13_10)			$(13_10)				// We will need to get a remainder if it is over 100$(13_10)				if o_mouseitem.stackcount > 100 {$(13_10)					o_mouseitem.remainder = o_mouseitem.stackcount-100;$(13_10)					o_mouseitem.stackcount = 100;$(13_10)					$(13_10)				} else {$(13_10)					o_mouseitem.remainder = -1;$(13_10)				}$(13_10)				$(13_10)				// Drop the slot that we're clicking on. The IF statement below this one should dump the mousestats stats back into the slot$(13_10)				scr_clear_itembar_slot();$(13_10)			$(13_10)				item =-1;$(13_10)								$(13_10)			}$(13_10)			$(13_10)			// If slot is empty and there is an item on our mouse of the right type$(13_10)			if item = -1 and mouseItem  != -1 and (o_mouseitem.type = "Potion" or o_mouseitem.type = "Scroll") {$(13_10)			$(13_10)			// Transfer mouseitem properties to the slot. This will transfer to array slot + 1$(13_10)				$(13_10)				scr_mousestats_to_itembar_array();	$(13_10)				$(13_10)				$(13_10)				if o_mouseitem.remainder = -1 {$(13_10)				$(13_10)					//audio_play_sound(snd_amulet,9,false); // Test$(13_10)					// Clear the mouseStats$(13_10)					scr_clear_mousestats();$(13_10)					// Clear the mouseItem$(13_10)					mouseItem = -1;$(13_10)				}$(13_10)				$(13_10)				// If there is a remainder, we gotta create a new item and put it on our mouseitem slot	$(13_10)				if o_mouseitem.remainder > 0 {$(13_10)				$(13_10)					//mouseItem = item;$(13_10)					//audio_play_sound(snd_slash,9,false); // Test$(13_10)					o_mouseitem.stackcount = o_mouseitem.remainder;$(13_10)					//mouseItem = o_mouseitem.tempmouseitem;$(13_10)					o_mouseitem.remainder = -1;$(13_10)					$(13_10)				}$(13_10)$(13_10)			}	 $(13_10)	$(13_10)			// If there IS an item in slot, and mouseItem is not empty and NOT the same item, swap the items$(13_10)$(13_10)			if item != -1 and mouseItem  != -1 and o_mouseitem.name != name and (o_mouseitem.type = "Potion" or o_mouseitem.type = "Scroll"){ $(13_10)				$(13_10)				//mouseItem = item;$(13_10)				$(13_10)				//audio_play_sound(snd_alert,9,false); // Test$(13_10)													$(13_10)				//Throw all the slot stat items into the temp stats$(13_10)				scr_itembar_array_to_mousetemp();$(13_10)				scr_clear_itembar_slot();$(13_10)				// Move the mouse stats into the array$(13_10)				$(13_10)				scr_mousestats_to_itembar_array();$(13_10)				item = mouseItem;$(13_10)				// Alarm will trigger the mouse stats to equal the temp stats$(13_10)				mouseItem = o_mouseitem.tempindex;	$(13_10)				o_mouseitem.alarm[0] = 1;		$(13_10)									$(13_10)			}	$(13_10)			$(13_10)			// If there IS an item in slot, and mouseItem is empty, then remove it and add it to the mouseItem$(13_10)			$(13_10)			if item != -1 and mouseItem  = -1 and o_mouseitem.remainder <= 0 {$(13_10)			$(13_10)				mouseItem = item;$(13_10)				//audio_play_sound(snd_sword,9,false); // Test$(13_10)				scr_itembar_array_to_mousestats();$(13_10)				scr_clear_itembar_slot();$(13_10)						$(13_10)			}		$(13_10)$(13_10)		}$(13_10)		$(13_10)		// Right click event$(13_10)		if !click and rightclick{$(13_10)			// Use the item$(13_10)			//scr_use_item(name);$(13_10)			scr_use_item_keypress_itembar(slot);$(13_10)		}$(13_10)$(13_10)$(13_10)	$(13_10)	}$(13_10)}	$(13_10)}"
var item = global.itembar[slot];// What this does is check that slot, and look at the sprite index
var shift  = keyboard_check(vk_shift);

// Need a timer so you cant click too fast on bar
if o_inventory.left_click_timer = 10{
	var click = mouse_check_button_pressed(mb_left);
} else{
	var click = noone;
}

if o_inventory.right_click_timer = 10{
	var rightclick = mouse_check_button_pressed(mb_right);
} else{
	var rightclick = noone;
}

if instance_exists(o_player) and o_player.cutscene = false {

	// Draw the stack counts
	depth = -2;	
	
	if slot = 0 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "1");
		draw_set_font(fnt_normal)

		if o_item_bar.slotpress0 = true {
			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)
			o_item_bar.slotpress0 = false;
		}	
	}
	
	if slot = 1 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "2");
		draw_set_font(fnt_normal)
		
		if o_item_bar.slotpress1 = true {
			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)
			o_item_bar.slotpress1 = false;
		}			
	}


	
	if slot = 2 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "3");
		draw_set_font(fnt_normal)
		
		if o_item_bar.slotpress2 = true {
			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)
			o_item_bar.slotpress2 = false;
		}	
	}
	
	if slot = 3 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "4");
		draw_set_font(fnt_normal)
		
		if o_item_bar.slotpress3 = true {
			draw_sprite_ext(spr_item_hover_gold, 0,x,y,1.1,1.1,0,c_white,1)
			o_item_bar.slotpress3 = false;
		}	
	}	
	
// On click events

if (abs(mouse_x - x) < 18) && (abs(mouse_y - y) < 18){

	if slot >=0 and slot <= 3 {
	
		//Wave(from, to, duration, offset)
		draw_sprite_ext(spr_item_hover_white, 0,x,y,1.1,1.1,0,c_white,wave(.25, .90, 2,0))

		// Define the variables for the tooltip
		script_execute(scr_itembar_tooltip_variables);
		
		// If there is no item in slot, and mouseItem has a valid item on it, then add the item to the slot
		if (click) and !rightclick{
		
			o_inventory.left_click_timer = 0; // Set timer to 0 per left click
			script_execute(scr_equipsound_click);

			// This is for adding stackable items
			if (item !=-1) and (mouseItem != -1) and global.itembar[slot+1,9] > 0 and global.itembar[slot+1,9] < 100 and o_mouseitem.name == global.itembar[slot+1, 5] and (o_mouseitem.type = "Potion" or o_mouseitem.type = "Scroll"){
				
				//audio_play_sound(snd_wand_equip,9,false); // Test
				// Move the mouse stackcount to temp var
				o_mouseitem.tempstackcount = o_mouseitem.stackcount;
				// Move the stats from slot into the mousestats
				script_execute(scr_itembar_array_to_mousestats);
				// Add stackcount and tempstackcount together for final stack count
				o_mouseitem.stackcount = o_mouseitem.stackcount + o_mouseitem.tempstackcount;
				
			
				// We will need to get a remainder if it is over 100
				if o_mouseitem.stackcount > 100 {
					o_mouseitem.remainder = o_mouseitem.stackcount-100;
					o_mouseitem.stackcount = 100;
					
				} else {
					o_mouseitem.remainder = -1;
				}
				
				// Drop the slot that we're clicking on. The IF statement below this one should dump the mousestats stats back into the slot
				scr_clear_itembar_slot();
			
				item =-1;
								
			}
			
			// If slot is empty and there is an item on our mouse of the right type
			if item = -1 and mouseItem  != -1 and (o_mouseitem.type = "Potion" or o_mouseitem.type = "Scroll") {
			
			// Transfer mouseitem properties to the slot. This will transfer to array slot + 1
				
				scr_mousestats_to_itembar_array();	
				
				
				if o_mouseitem.remainder = -1 {
				
					//audio_play_sound(snd_amulet,9,false); // Test
					// Clear the mouseStats
					scr_clear_mousestats();
					// Clear the mouseItem
					mouseItem = -1;
				}
				
				// If there is a remainder, we gotta create a new item and put it on our mouseitem slot	
				if o_mouseitem.remainder > 0 {
				
					//mouseItem = item;
					//audio_play_sound(snd_slash,9,false); // Test
					o_mouseitem.stackcount = o_mouseitem.remainder;
					//mouseItem = o_mouseitem.tempmouseitem;
					o_mouseitem.remainder = -1;
					
				}

			}	 
	
			// If there IS an item in slot, and mouseItem is not empty and NOT the same item, swap the items

			if item != -1 and mouseItem  != -1 and o_mouseitem.name != name and (o_mouseitem.type = "Potion" or o_mouseitem.type = "Scroll"){ 
				
				//mouseItem = item;
				
				//audio_play_sound(snd_alert,9,false); // Test
													
				//Throw all the slot stat items into the temp stats
				scr_itembar_array_to_mousetemp();
				scr_clear_itembar_slot();
				// Move the mouse stats into the array
				
				scr_mousestats_to_itembar_array();
				item = mouseItem;
				// Alarm will trigger the mouse stats to equal the temp stats
				mouseItem = o_mouseitem.tempindex;	
				o_mouseitem.alarm[0] = 1;		
									
			}	
			
			// If there IS an item in slot, and mouseItem is empty, then remove it and add it to the mouseItem
			
			if item != -1 and mouseItem  = -1 and o_mouseitem.remainder <= 0 {
			
				mouseItem = item;
				//audio_play_sound(snd_sword,9,false); // Test
				scr_itembar_array_to_mousestats();
				scr_clear_itembar_slot();
						
			}		

		}
		
		// Right click event
		if !click and rightclick{
			// Use the item
			//scr_use_item(name);
			scr_use_item_keypress_itembar(slot);
		}


	
	}
}	
}