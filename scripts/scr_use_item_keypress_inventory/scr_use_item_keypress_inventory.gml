/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19BCCED6
/// @DnDArgument : "code" "/// scr_use_item(argument0); where argument0 is the item name and argument0 is the slot$(13_10)scr_itembar_tooltip_variables_inventory(argument0);$(13_10)$(13_10)if name = "Health Potion" and o_item_cooldown.hp_potion = 3600 {$(13_10)$(13_10)	if o_player_stats.stats[? "health"] < o_player_stats.stats[? "maxhealth"] {$(13_10)		$(13_10)		var restore = o_player_stats.stats[? "maxhealth"] * (healamount/100)$(13_10)		$(13_10)		audio_play_sound(snd_potion_2,9,false);$(13_10)		$(13_10)		o_player_stats.stats[? "health"] = round(o_player_stats.stats[? "health"] + round(restore));$(13_10)$(13_10)		instance_create_depth(o_player.x,o_player.y, 0,o_restore_hp_potion)$(13_10)		if o_player_stats.stats[? "health"] >= o_player_stats.stats[? "maxhealth"] {$(13_10)		$(13_10)			o_player_stats.stats[? "health"] = o_player_stats.stats[? "maxhealth"]$(13_10)			$(13_10)		}$(13_10)		if instance_exists(o_restore_hp_potion) {$(13_10)			o_restore_hp_potion.heal = round(restore);$(13_10)		}$(13_10)$(13_10)		global.inventory[argument0+1, 9] = global.inventory[argument0+1, 9] - 1;$(13_10)		$(13_10)		if global.inventory[argument0+1, 9] < 1 {	$(13_10)			scr_clear_inventory_slot_keypress(argument0);$(13_10)		}$(13_10)		 $(13_10)		o_item_cooldown.hp_potion = 0;	$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if name = "Mana Potion" and o_item_cooldown.mp_potion = 3600 {$(13_10)$(13_10)	if o_player_stats.stats[? "mana"] < o_player_stats.stats[? "maxmana"] {$(13_10)		$(13_10)		var restore = o_player_stats.stats[? "maxmana"] * (healamount/100)$(13_10)		$(13_10)		audio_play_sound(snd_potion_2,9,false);$(13_10)		$(13_10)		o_player_stats.stats[? "mana"] = round(o_player_stats.stats[? "mana"] + round(restore));$(13_10)		$(13_10)		if o_player_stats.stats[? "mana"] >= o_player_stats.stats[? "maxmana"] {$(13_10)		$(13_10)			o_player_stats.stats[? "mana"] = o_player_stats.stats[? "maxmana"]$(13_10)			$(13_10)		}$(13_10)		instance_create_depth(o_player.x,o_player.y, 0,o_restore_mp_potion)$(13_10)		$(13_10)		if instance_exists(o_restore_mp_potion) {$(13_10)			o_restore_mp_potion.heal = round(restore);$(13_10)		}$(13_10)$(13_10)		global.inventory[argument0+1, 9] = global.inventory[argument0+1, 9] - 1;$(13_10)		$(13_10)		if global.inventory[argument0+1, 9] < 1 {	$(13_10)			scr_clear_inventory_slot_keypress(argument0);$(13_10)		}$(13_10)		$(13_10)		o_item_cooldown.mp_potion = 0	$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// Run a different script for cooldown or use the same script?$(13_10)// scr_item_cooldown(argument0)"
/// scr_use_item(argument0); where argument0 is the item name and argument0 is the slot
scr_itembar_tooltip_variables_inventory(argument0);

if name = "Health Potion" and o_item_cooldown.hp_potion = 3600 {

	if o_player_stats.stats[? "health"] < o_player_stats.stats[? "maxhealth"] {
		
		var restore = o_player_stats.stats[? "maxhealth"] * (healamount/100)
		
		audio_play_sound(snd_potion_2,9,false);
		
		o_player_stats.stats[? "health"] = round(o_player_stats.stats[? "health"] + round(restore));

		instance_create_depth(o_player.x,o_player.y, 0,o_restore_hp_potion)
		if o_player_stats.stats[? "health"] >= o_player_stats.stats[? "maxhealth"] {
		
			o_player_stats.stats[? "health"] = o_player_stats.stats[? "maxhealth"]
			
		}
		if instance_exists(o_restore_hp_potion) {
			o_restore_hp_potion.heal = round(restore);
		}

		global.inventory[argument0+1, 9] = global.inventory[argument0+1, 9] - 1;
		
		if global.inventory[argument0+1, 9] < 1 {	
			scr_clear_inventory_slot_keypress(argument0);
		}
		 
		o_item_cooldown.hp_potion = 0;	
	}
	
}

if name = "Mana Potion" and o_item_cooldown.mp_potion = 3600 {

	if o_player_stats.stats[? "mana"] < o_player_stats.stats[? "maxmana"] {
		
		var restore = o_player_stats.stats[? "maxmana"] * (healamount/100)
		
		audio_play_sound(snd_potion_2,9,false);
		
		o_player_stats.stats[? "mana"] = round(o_player_stats.stats[? "mana"] + round(restore));
		
		if o_player_stats.stats[? "mana"] >= o_player_stats.stats[? "maxmana"] {
		
			o_player_stats.stats[? "mana"] = o_player_stats.stats[? "maxmana"]
			
		}
		instance_create_depth(o_player.x,o_player.y, 0,o_restore_mp_potion)
		
		if instance_exists(o_restore_mp_potion) {
			o_restore_mp_potion.heal = round(restore);
		}

		global.inventory[argument0+1, 9] = global.inventory[argument0+1, 9] - 1;
		
		if global.inventory[argument0+1, 9] < 1 {	
			scr_clear_inventory_slot_keypress(argument0);
		}
		
		o_item_cooldown.mp_potion = 0	
	}

}




// Run a different script for cooldown or use the same script?
// scr_item_cooldown(argument0)