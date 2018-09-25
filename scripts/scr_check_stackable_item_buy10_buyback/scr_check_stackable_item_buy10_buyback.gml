/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C76FAB8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Set Price$(13_10)	$(13_10)price = script_execute(scr_shop_prices_slotbuttons);$(13_10)var remainder = 0;$(13_10)var stop_adding = false$(13_10)$(13_10)for (i=0;i<60;i++){$(13_10)$(13_10)	// If there is an item with the same name within those 60 slots. $(13_10)	// And if it's stackcount is less than 100$(13_10)	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {$(13_10)$(13_10)		if remainder = 0 and stop_adding = false { // Only charge for the first one$(13_10)$(13_10)		if global.shop[slot+1, 9] <= 10 {$(13_10)		$(13_10)			global.inventory[i+1,9] = global.inventory[i+1,9]+global.shop[slot+1, 9];$(13_10)			o_player_stats.gold = o_player_stats.gold - (price*global.shop[slot+1, 9]);$(13_10)			instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)			audio_play_sound(snd_purchase_sound,9,false);$(13_10)			$(13_10)			global.shop[slot+1, 9] = global.shop[slot+1, 9] - global.shop[slot+1, 9];$(13_10)				if global.shop[slot+1,9] < 1 {$(13_10)					scr_buyback_drop_slot(slot);$(13_10)					global.shop[slot] = -1;										$(13_10)				}$(13_10)		}$(13_10)$(13_10)		if global.shop[slot+1, 9] > 10 {$(13_10)		$(13_10)			global.inventory[i+1,9] = global.inventory[i+1,9]+10;$(13_10)			o_player_stats.gold = o_player_stats.gold - (price*10);$(13_10)			instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)			audio_play_sound(snd_purchase_sound,9,false);$(13_10)			$(13_10)			global.shop[slot+1, 9] = global.shop[slot+1, 9] - 10;$(13_10)				if global.shop[slot+1,9] < 1 {$(13_10)					scr_buyback_drop_slot(slot);$(13_10)					global.shop[slot] = -1;										$(13_10)				}$(13_10)		}$(13_10)		$(13_10)		$(13_10)		$(13_10)		$(13_10)			if global.inventory[i+1,9] < 100 {$(13_10)				return(0);$(13_10)			}$(13_10)$(13_10)		$(13_10)		} else if remainder > 0 {$(13_10)			global.inventory[i+1,9] = global.inventory[i+1,9] + remainder;$(13_10)			$(13_10)				if (global.inventory[i+1,9] <= 100) { return(0); remainder = 0; stop_adding = true}$(13_10)$(13_10)				if global.inventory[i+1,9] > 100 {$(13_10)					remainder = global.inventory[i+1,9] - 100$(13_10)					global.inventory[i+1,9] = 100;$(13_10)					instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)$(13_10)					audio_play_sound(snd_purchase_sound,9,false);$(13_10)				}			$(13_10)		}$(13_10)		$(13_10)		if global.inventory[i+1,9] > 100 { // If it goes over 100, gets the initial remainder$(13_10)			remainder = global.inventory[i+1,9] - 100$(13_10)			global.inventory[i+1,9] = 100;$(13_10)$(13_10)		}$(13_10)$(13_10)	}$(13_10)}$(13_10)$(13_10)// If not able to find item with same name and under 100, return 0$(13_10)global.shop[slot+1, 9] = global.shop[slot+1, 9] - 10;$(13_10)if global.shop[slot+1,9] < 1 {$(13_10)	scr_buyback_drop_slot(slot);$(13_10)	global.shop[slot] = -1;										$(13_10)}$(13_10)return (remainder);$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Set Price
	
price = script_execute(scr_shop_prices_slotbuttons);
var remainder = 0;
var stop_adding = false

for (i=0;i<60;i++){

	// If there is an item with the same name within those 60 slots. 
	// And if it's stackcount is less than 100
	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {

		if remainder = 0 and stop_adding = false { // Only charge for the first one

		if global.shop[slot+1, 9] <= 10 {
		
			global.inventory[i+1,9] = global.inventory[i+1,9]+global.shop[slot+1, 9];
			o_player_stats.gold = o_player_stats.gold - (price*global.shop[slot+1, 9]);
			instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
			audio_play_sound(snd_purchase_sound,9,false);
			
			global.shop[slot+1, 9] = global.shop[slot+1, 9] - global.shop[slot+1, 9];
				if global.shop[slot+1,9] < 1 {
					scr_buyback_drop_slot(slot);
					global.shop[slot] = -1;										
				}
		}

		if global.shop[slot+1, 9] > 10 {
		
			global.inventory[i+1,9] = global.inventory[i+1,9]+10;
			o_player_stats.gold = o_player_stats.gold - (price*10);
			instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
			audio_play_sound(snd_purchase_sound,9,false);
			
			global.shop[slot+1, 9] = global.shop[slot+1, 9] - 10;
				if global.shop[slot+1,9] < 1 {
					scr_buyback_drop_slot(slot);
					global.shop[slot] = -1;										
				}
		}
		
		
		
		
			if global.inventory[i+1,9] < 100 {
				return(0);
			}

		
		} else if remainder > 0 {
			global.inventory[i+1,9] = global.inventory[i+1,9] + remainder;
			
				if (global.inventory[i+1,9] <= 100) { return(0); remainder = 0; stop_adding = true}

				if global.inventory[i+1,9] > 100 {
					remainder = global.inventory[i+1,9] - 100
					global.inventory[i+1,9] = 100;
					instance_create_depth(x-250,y-100,0,o_shop_message_thankyou)
					audio_play_sound(snd_purchase_sound,9,false);
				}			
		}
		
		if global.inventory[i+1,9] > 100 { // If it goes over 100, gets the initial remainder
			remainder = global.inventory[i+1,9] - 100
			global.inventory[i+1,9] = 100;

		}

	}
}

// If not able to find item with same name and under 100, return 0
global.shop[slot+1, 9] = global.shop[slot+1, 9] - 10;
if global.shop[slot+1,9] < 1 {
	scr_buyback_drop_slot(slot);
	global.shop[slot] = -1;										
}
return (remainder);