/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19BCCED6
/// @DnDArgument : "code" "/// scr_use_item(argument0); where argument0 is the item name$(13_10)$(13_10)if argument0 = "Health Potion" and o_item_cooldown.hp_potion = 3600 {$(13_10)$(13_10)	if o_player_stats.stats[? "health"] < o_player_stats.stats[? "maxhealth"] {$(13_10)		$(13_10)		var restore = o_player_stats.stats[? "maxhealth"] * (healamount/100)$(13_10)		$(13_10)		audio_play_sound(snd_potion_2,9,false);$(13_10)		$(13_10)		o_player_stats.stats[? "health"] = round(o_player_stats.stats[? "health"] + round(restore));$(13_10)$(13_10)		instance_create_depth(o_player.x,o_player.y, 0,o_restore_hp_potion)$(13_10)		$(13_10)		if instance_exists(o_restore_hp_potion) {$(13_10)			o_restore_hp_potion.heal = round(restore);$(13_10)		}$(13_10)$(13_10)		global.itembar[slot+1, 9] = global.itembar[slot+1, 9] - 1;$(13_10)		$(13_10)		if global.itembar[slot+1, 9] < 1 {$(13_10)			scr_clear_itembar_slot();$(13_10)		}$(13_10)		 $(13_10)		o_item_cooldown.hp_potion = 0;	$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if argument0 = "Mana Potion" and o_item_cooldown.mp_potion = 3600 {$(13_10)$(13_10)	if o_player_stats.stats[? "mana"] < o_player_stats.stats[? "maxmana"] {$(13_10)		$(13_10)		var restore = o_player_stats.stats[? "maxmana"] * (healamount/100)$(13_10)		$(13_10)		audio_play_sound(snd_potion_2,9,false);$(13_10)		$(13_10)		o_player_stats.stats[? "mana"] = round(o_player_stats.stats[? "mana"] + round(restore));$(13_10)$(13_10)		instance_create_depth(o_player.x,o_player.y, 0,o_restore_mp_potion)$(13_10)		$(13_10)		if instance_exists(o_restore_mp_potion) {$(13_10)			o_restore_mp_potion.heal = round(restore);$(13_10)		}$(13_10)$(13_10)		global.itembar[slot+1, 9] = global.itembar[slot+1, 9] - 1;$(13_10)		$(13_10)		if global.itembar[slot+1, 9] < 1 {$(13_10)			scr_clear_itembar_slot();$(13_10)		}$(13_10)		$(13_10)		o_item_cooldown.mp_potion = 60	$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// Run a different script for cooldown or use the same script?$(13_10)// scr_item_cooldown(argument0)"
/// scr_use_item(argument0); where argument0 is the item name

if argument0 = "Health Potion" and o_item_cooldown.hp_potion = 3600 {

	if o_player_stats.stats[? "health"] < o_player_stats.stats[? "maxhealth"] {
		
		var restore = o_player_stats.stats[? "maxhealth"] * (healamount/100)
		
		audio_play_sound(snd_potion_2,9,false);
		
		o_player_stats.stats[? "health"] = round(o_player_stats.stats[? "health"] + round(restore));

		instance_create_depth(o_player.x,o_player.y, 0,o_restore_hp_potion)
		
		if instance_exists(o_restore_hp_potion) {
			o_restore_hp_potion.heal = round(restore);
		}

		global.itembar[slot+1, 9] = global.itembar[slot+1, 9] - 1;
		
		if global.itembar[slot+1, 9] < 1 {
			scr_clear_itembar_slot();
		}
		 
		o_item_cooldown.hp_potion = 0;	
	}
	
}

if argument0 = "Mana Potion" and o_item_cooldown.mp_potion = 3600 {

	if o_player_stats.stats[? "mana"] < o_player_stats.stats[? "maxmana"] {
		
		var restore = o_player_stats.stats[? "maxmana"] * (healamount/100)
		
		audio_play_sound(snd_potion_2,9,false);
		
		o_player_stats.stats[? "mana"] = round(o_player_stats.stats[? "mana"] + round(restore));

		instance_create_depth(o_player.x,o_player.y, 0,o_restore_mp_potion)
		
		if instance_exists(o_restore_mp_potion) {
			o_restore_mp_potion.heal = round(restore);
		}

		global.itembar[slot+1, 9] = global.itembar[slot+1, 9] - 1;
		
		if global.itembar[slot+1, 9] < 1 {
			scr_clear_itembar_slot();
		}
		
		o_item_cooldown.mp_potion = 60	
	}

}




// Run a different script for cooldown or use the same script?
// scr_item_cooldown(argument0)