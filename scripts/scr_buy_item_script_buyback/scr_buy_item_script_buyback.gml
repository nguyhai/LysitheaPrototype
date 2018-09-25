/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61A72896
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Define Variables$(13_10)$(13_10)var item = global.shop[slot];// What this does is check that slot, and look at the sprite index$(13_10)var click = mouse_check_button_pressed(mb_left);$(13_10)var rightclick = mouse_check_button_pressed(mb_right);$(13_10)var shift = keyboard_check(vk_shift);$(13_10)$(13_10)// Define prices$(13_10)$(13_10)price = script_execute(scr_shop_prices_slotbuttons);$(13_10)$(13_10)var stackcheck;$(13_10)$(13_10)stackcheck = scr_check_stackable_item(index);$(13_10)$(13_10)// ---- Script$(13_10)$(13_10)$(13_10)		if stackable > 0 {$(13_10)		$(13_10)			// If we have a stackable item, check to see if there is another stackable item in our inventory$(13_10)			//If there is an item under 100 stacks in inventory$(13_10)			if stackcheck = 1 {$(13_10)					// Buy the item and add 1 to the stack count. Check gold first. $(13_10)					$(13_10)				if !shift { // If not holding down shift$(13_10)					if o_player_stats.gold < price {$(13_10)					$(13_10)						// Too poor to buy gold, display a message. Play a sound$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)$(13_10)						audio_play_sound(snd_alert,9,false);$(13_10)					$(13_10)					}$(13_10)					$(13_10)					if o_player_stats.gold >= price {$(13_10)					$(13_10)						// Subtract the Gold from the player, play a sound, buy the item$(13_10)						$(13_10)						o_player_stats.gold = o_player_stats.gold - price;$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)						audio_play_sound(snd_purchase_sound,9,false);$(13_10)						// Find the item in inventory and add +1 to it's stack count. $(13_10)						// Subtract 1 from the item$(13_10)						global.shop[slot+1, 9] = global.shop[slot+1, 9] - 1;$(13_10)						scr_check_stackable_item_buy1(index);$(13_10)						$(13_10)						if global.shop[slot+1, 9] < 1 {$(13_10)							scr_buyback_drop_slot(slot);						$(13_10)						}$(13_10)$(13_10)					} 	$(13_10)				}$(13_10)					$(13_10)				if shift { // If holding shift, buy 10$(13_10)				$(13_10)					if o_player_stats.gold < (price*10) {$(13_10)					$(13_10)						// Too poor to buy gold, display a message. Play a sound$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)$(13_10)						audio_play_sound(snd_alert,9,false);$(13_10)					$(13_10)					}$(13_10)					$(13_10)					if o_player_stats.gold >= (price*10) {$(13_10)						$(13_10)						var remaindercheck;$(13_10)$(13_10)$(13_10)						// Check to see if inventory has slots available. If there are zero slots, continue to be able to purchase, but$(13_10)						// dont go over the limit$(13_10)$(13_10)						if scr_check_inventory_full() == 1 { // If NOT FULL, buy 10 like normal$(13_10)							$(13_10)							//o_player_stats.gold = o_player_stats.gold - (price*10);$(13_10)							//instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)							//audio_play_sound(snd_purchase_sound,9,false);					$(13_10)							remaindercheck = scr_check_stackable_item_buy10_buyback(index);$(13_10)$(13_10)						} else { // If inventory is full$(13_10)							// IF YOU CHANGE THE PRICE, CHANGE IT IN THIS SCRIPT TOO ------------$(13_10)							remaindercheck = scr_check_stackable_item_buy10_full_buyback(index);$(13_10)$(13_10)						}$(13_10)$(13_10)						//If there is a remainder look for any items with same index and less than 100 stack count$(13_10)						 $(13_10)						if remaindercheck > 0 {$(13_10)$(13_10)							// Add the remainder to it. $(13_10)$(13_10)								// Do an inventory check before shift buy$(13_10)								if scr_check_inventory_full() == 1 {$(13_10)								// If there is NO other items, then we will need to create one with the remainder								// If there is NO other items, then we will need to create one with the remainder$(13_10)$(13_10)										scr_shoparray_to_mousestats_buy10(remaindercheck);$(13_10)	$(13_10)										// Move the items in mouse to inventory$(13_10)										scr_pickup_mouseitem_to_inventory();	$(13_10)			$(13_10)								} else { // Display that inventory is FULL. Play a sound$(13_10)									audio_play_sound(snd_alert,9,false);$(13_10)									instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)$(13_10)								}$(13_10)						}$(13_10)					} 				$(13_10)				}	$(13_10)$(13_10)			} else { //If there is no stackable item under 100 stacks, buy a new item if inventory not full$(13_10)				$(13_10)				if scr_check_inventory_full() == 1 {$(13_10)				$(13_10)				if !shift { // If not holding down shift$(13_10)					// Check Gold$(13_10)					if o_player_stats.gold < price {$(13_10)					$(13_10)						// Too poor to buy gold, display a message. Play a sound$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)$(13_10)						audio_play_sound(snd_alert,9,false);$(13_10)					$(13_10)					}$(13_10)					$(13_10)					if o_player_stats.gold >= price { // If no items, we need to create and subtract 1$(13_10)					$(13_10)						// Subtract the Gold from the player, play a sound, buy the item$(13_10)						o_player_stats.gold = o_player_stats.gold - price;$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)						audio_play_sound(snd_purchase_sound,9,false);$(13_10)						// Move the item from the slot to the mouseitem$(13_10)						scr_shoparray_to_mousestats_buyback_buy1();$(13_10)						// Subtract 1 from the item	$(13_10)						global.shop[slot+1, 9] = global.shop[slot+1, 9] - 1;$(13_10)						// Move the items in mouse to inventory$(13_10)						scr_pickup_mouseitem_to_inventory();	$(13_10)						// Drop the slot if there is less than 1 item$(13_10)						if global.shop[slot+1, 9] < 1 {$(13_10)							scr_buyback_drop_slot(slot);						$(13_10)						}$(13_10)					}$(13_10)					$(13_10)					} $(13_10)					$(13_10)					if shift { // If holding down shift, buy 10$(13_10)					// Check Gold$(13_10)					if o_player_stats.gold < (price*10) {$(13_10)					$(13_10)						// Too poor to buy gold, display a message. Play a sound$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)$(13_10)						audio_play_sound(snd_alert,9,false);$(13_10)					$(13_10)					}$(13_10)				$(13_10)					if o_player_stats.gold >= (price*10) {$(13_10)					$(13_10)$(13_10)						$(13_10)					if global.shop[slot+1,9] <= 10 {$(13_10)						// Subtract the Gold from the player, play a sound, buy the item$(13_10)						scr_shoparray_to_mousestats_buy10_buyback(global.shop[slot+1,9]);$(13_10)						scr_pickup_mouseitem_to_inventory();	$(13_10)						global.shop[slot+1,9] = global.shop[slot+1,9] - 10;$(13_10)						o_player_stats.gold = o_player_stats.gold - (price*10);$(13_10)						o_player_stats.gold = o_player_stats.gold + (price*abs(global.shop[slot+1,9]));$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)						audio_play_sound(snd_purchase_sound,9,false);$(13_10)						// Move the item from the slot to the mouseitem$(13_10)					$(13_10)						// Move the items in mouse to inventory$(13_10)						if global.shop[slot+1,9] < 1 {$(13_10)							scr_buyback_drop_slot(slot);$(13_10)							item = -1;$(13_10)						}$(13_10)						$(13_10)						$(13_10)						$(13_10)					}	$(13_10)					$(13_10)					if global.shop[slot+1,9] > 10 {$(13_10)						// Subtract the Gold from the player, play a sound, buy the item$(13_10)						o_player_stats.gold = o_player_stats.gold - (price*10);$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)						audio_play_sound(snd_purchase_sound,9,false);$(13_10)						// Move the item from the slot to the mouseitem$(13_10)						global.shop[slot+1,9] = global.shop[slot+1,9] - 10;$(13_10)						scr_shoparray_to_mousestats_buy10_buyback(10);$(13_10)						// Move the items in mouse to inventory$(13_10)						scr_pickup_mouseitem_to_inventory();	$(13_10)					}	$(13_10)		$(13_10)					}$(13_10)					$(13_10)					}					$(13_10)$(13_10)				} else { // Display that inventory is FULL. Play a sound$(13_10)						audio_play_sound(snd_alert,9,false);$(13_10)						instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)$(13_10)				}$(13_10)							$(13_10)			}$(13_10)$(13_10)			}$(13_10)$(13_10)			// If not a stackable item, then buy regularly	$(13_10)			if stackable = -1 { $(13_10)			$(13_10)			// If inventory is NOT full$(13_10)			if scr_check_inventory_full() == 1 {$(13_10)				$(13_10)				// Check Gold$(13_10)				if o_player_stats.gold < price {$(13_10)				$(13_10)					// Too poor to buy gold, display a message. Play a sound$(13_10)					instance_create_depth(x-250,y-100,0,o_shop_message_nogold)$(13_10)					audio_play_sound(snd_alert,9,false);$(13_10)$(13_10)				}$(13_10)				$(13_10)				if o_player_stats.gold >= price {$(13_10)				$(13_10)					// Subtract the Gold from the player, play a sound, buy the item$(13_10)					o_player_stats.gold = o_player_stats.gold - price;$(13_10)					instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)					audio_play_sound(snd_purchase_sound,9,false);$(13_10)					// Move the item from the slot to the mouseitem$(13_10)$(13_10)					scr_shoparray_to_mousestats();$(13_10)					// Move the items in mouse to inventory$(13_10)					scr_pickup_mouseitem_to_inventory();	$(13_10)					scr_buyback_drop_slot(slot);$(13_10)					item = -1;$(13_10)				}$(13_10)$(13_10)			} else { // Display that inventory is FULL. Play a sound$(13_10)				audio_play_sound(snd_alert,9,false);$(13_10)				instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)$(13_10)			}			$(13_10)$(13_10)	} $(13_10)			$(13_10)	$(13_10)"
/// @description Execute Code
// Define Variables

var item = global.shop[slot];// What this does is check that slot, and look at the sprite index
var click = mouse_check_button_pressed(mb_left);
var rightclick = mouse_check_button_pressed(mb_right);
var shift = keyboard_check(vk_shift);

// Define prices

price = script_execute(scr_shop_prices_slotbuttons);

var stackcheck;

stackcheck = scr_check_stackable_item(index);

// ---- Script


		if stackable > 0 {
		
			// If we have a stackable item, check to see if there is another stackable item in our inventory
			//If there is an item under 100 stacks in inventory
			if stackcheck = 1 {
					// Buy the item and add 1 to the stack count. Check gold first. 
					
				if !shift { // If not holding down shift
					if o_player_stats.gold < price {
					
						// Too poor to buy gold, display a message. Play a sound
						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)
						audio_play_sound(snd_alert,9,false);
					
					}
					
					if o_player_stats.gold >= price {
					
						// Subtract the Gold from the player, play a sound, buy the item
						
						o_player_stats.gold = o_player_stats.gold - price;
						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
						audio_play_sound(snd_purchase_sound,9,false);
						// Find the item in inventory and add +1 to it's stack count. 
						// Subtract 1 from the item
						global.shop[slot+1, 9] = global.shop[slot+1, 9] - 1;
						scr_check_stackable_item_buy1(index);
						
						if global.shop[slot+1, 9] < 1 {
							scr_buyback_drop_slot(slot);						
						}

					} 	
				}
					
				if shift { // If holding shift, buy 10
				
					if o_player_stats.gold < (price*10) {
					
						// Too poor to buy gold, display a message. Play a sound
						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)
						audio_play_sound(snd_alert,9,false);
					
					}
					
					if o_player_stats.gold >= (price*10) {
						
						var remaindercheck;


						// Check to see if inventory has slots available. If there are zero slots, continue to be able to purchase, but
						// dont go over the limit

						if scr_check_inventory_full() == 1 { // If NOT FULL, buy 10 like normal
							
							//o_player_stats.gold = o_player_stats.gold - (price*10);
							//instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
							//audio_play_sound(snd_purchase_sound,9,false);					
							remaindercheck = scr_check_stackable_item_buy10_buyback(index);

						} else { // If inventory is full
							// IF YOU CHANGE THE PRICE, CHANGE IT IN THIS SCRIPT TOO ------------
							remaindercheck = scr_check_stackable_item_buy10_full_buyback(index);

						}

						//If there is a remainder look for any items with same index and less than 100 stack count
						 
						if remaindercheck > 0 {

							// Add the remainder to it. 

								// Do an inventory check before shift buy
								if scr_check_inventory_full() == 1 {
								// If there is NO other items, then we will need to create one with the remainder								// If there is NO other items, then we will need to create one with the remainder

										scr_shoparray_to_mousestats_buy10(remaindercheck);
	
										// Move the items in mouse to inventory
										scr_pickup_mouseitem_to_inventory();	
			
								} else { // Display that inventory is FULL. Play a sound
									audio_play_sound(snd_alert,9,false);
									instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)
								}
						}
					} 				
				}	

			} else { //If there is no stackable item under 100 stacks, buy a new item if inventory not full
				
				if scr_check_inventory_full() == 1 {
				
				if !shift { // If not holding down shift
					// Check Gold
					if o_player_stats.gold < price {
					
						// Too poor to buy gold, display a message. Play a sound
						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)
						audio_play_sound(snd_alert,9,false);
					
					}
					
					if o_player_stats.gold >= price { // If no items, we need to create and subtract 1
					
						// Subtract the Gold from the player, play a sound, buy the item
						o_player_stats.gold = o_player_stats.gold - price;
						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
						audio_play_sound(snd_purchase_sound,9,false);
						// Move the item from the slot to the mouseitem
						scr_shoparray_to_mousestats_buyback_buy1();
						// Subtract 1 from the item	
						global.shop[slot+1, 9] = global.shop[slot+1, 9] - 1;
						// Move the items in mouse to inventory
						scr_pickup_mouseitem_to_inventory();	
						// Drop the slot if there is less than 1 item
						if global.shop[slot+1, 9] < 1 {
							scr_buyback_drop_slot(slot);						
						}
					}
					
					} 
					
					if shift { // If holding down shift, buy 10
					// Check Gold
					if o_player_stats.gold < (price*10) {
					
						// Too poor to buy gold, display a message. Play a sound
						instance_create_depth(x-250,y-100,0,o_shop_message_nogold)
						audio_play_sound(snd_alert,9,false);
					
					}
				
					if o_player_stats.gold >= (price*10) {
					

						
					if global.shop[slot+1,9] <= 10 {
						// Subtract the Gold from the player, play a sound, buy the item
						scr_shoparray_to_mousestats_buy10_buyback(global.shop[slot+1,9]);
						scr_pickup_mouseitem_to_inventory();	
						global.shop[slot+1,9] = global.shop[slot+1,9] - 10;
						o_player_stats.gold = o_player_stats.gold - (price*10);
						o_player_stats.gold = o_player_stats.gold + (price*abs(global.shop[slot+1,9]));
						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
						audio_play_sound(snd_purchase_sound,9,false);
						// Move the item from the slot to the mouseitem
					
						// Move the items in mouse to inventory
						if global.shop[slot+1,9] < 1 {
							scr_buyback_drop_slot(slot);
							item = -1;
						}
						
						
						
					}	
					
					if global.shop[slot+1,9] > 10 {
						// Subtract the Gold from the player, play a sound, buy the item
						o_player_stats.gold = o_player_stats.gold - (price*10);
						instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
						audio_play_sound(snd_purchase_sound,9,false);
						// Move the item from the slot to the mouseitem
						global.shop[slot+1,9] = global.shop[slot+1,9] - 10;
						scr_shoparray_to_mousestats_buy10_buyback(10);
						// Move the items in mouse to inventory
						scr_pickup_mouseitem_to_inventory();	
					}	
		
					}
					
					}					

				} else { // Display that inventory is FULL. Play a sound
						audio_play_sound(snd_alert,9,false);
						instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)
				}
							
			}

			}

			// If not a stackable item, then buy regularly	
			if stackable = -1 { 
			
			// If inventory is NOT full
			if scr_check_inventory_full() == 1 {
				
				// Check Gold
				if o_player_stats.gold < price {
				
					// Too poor to buy gold, display a message. Play a sound
					instance_create_depth(x-250,y-100,0,o_shop_message_nogold)
					audio_play_sound(snd_alert,9,false);

				}
				
				if o_player_stats.gold >= price {
				
					// Subtract the Gold from the player, play a sound, buy the item
					o_player_stats.gold = o_player_stats.gold - price;
					instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
					audio_play_sound(snd_purchase_sound,9,false);
					// Move the item from the slot to the mouseitem

					scr_shoparray_to_mousestats();
					// Move the items in mouse to inventory
					scr_pickup_mouseitem_to_inventory();	
					scr_buyback_drop_slot(slot);
					item = -1;
				}

			} else { // Display that inventory is FULL. Play a sound
				audio_play_sound(snd_alert,9,false);
				instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)
			}			

	}