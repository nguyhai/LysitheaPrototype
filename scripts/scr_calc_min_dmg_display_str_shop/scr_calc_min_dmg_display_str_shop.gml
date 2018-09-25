/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BE32145
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// argument0 = mindamage, argument1 = strbonus$(13_10)// scr_calc_min_dmg_display_str(argument0,argument1)$(13_10)$(13_10)wepmindmg = argument0 + scr_calc_equip_mindmg();$(13_10)$(13_10)min_dmg = 0;$(13_10)$(13_10)if (global.inventory[63, 32] < 0) global.inventory[63, 32] = 0;$(13_10)$(13_10)attack = o_player_stats.stats[? "attack"]; $(13_10)if global.inventory[63, 32] != -1 {$(13_10)	str = o_player_stats.stats[? "strength"] + scr_calc_equip_str() - global.inventory[63, 32]+ argument1; $(13_10)} else {$(13_10)	str = o_player_stats.stats[? "strength"] + scr_calc_equip_str() + argument1; $(13_10)}$(13_10)dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex(); $(13_10)int = o_player_stats.stats[? "intelligence"] + scr_calc_equip_intel(); $(13_10)vit = o_player_stats.stats[? "vitality"] + scr_calc_equip_vit(); $(13_10)$(13_10)if global.shop[slot+1, 23] = -1 {$(13_10)$(13_10)		min_dmg = scr_calc_equip_mindmg() + str*0.75 + attack; $(13_10)		$(13_10)	return min_dmg$(13_10)} $(13_10)$(13_10)$(13_10)if global.shop[slot+1, 23] = "Sword" {$(13_10)$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)	$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.shop[slot+1, 23] = "2H Sword" {$(13_10)	// Identify the min and max dmg$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)if global.shop[slot+1, 23] = "Dagger" {$(13_10)$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)		$(13_10)	return min_dmg$(13_10)}$(13_10)	$(13_10)if global.shop[slot+1, 23] = "Bow" {$(13_10)		min_dmg = wepmindmg + dex*0.75 + attack; $(13_10)	return min_dmg$(13_10)}	$(13_10)	$(13_10)if global.shop[slot+1, 23] = "Rifle" {$(13_10)	min_dmg = wepmindmg + dex*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.shop[slot+1, 23] = "Bracer" {$(13_10)		min_dmg = wepmindmg + dex*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.shop[slot+1, 23] = "Wand" {$(13_10)		min_dmg = wepmindmg + int*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.shop[slot+1, 23] = "Staff" {$(13_10)		min_dmg = wepmindmg + int*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)$(13_10)/*$(13_10)$(13_10)// If no weapon equipped$(13_10)if global.inventory[63, 23] = -1 {$(13_10)	if str <= 20 {$(13_10)		min_dmg = scr_calc_equip_mindmg() * 1 + attack $(13_10)	}$(13_10)$(13_10)	if str > 20 {$(13_10)		min_dmg = scr_calc_equip_mindmg() * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)} $(13_10)$(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)	if str <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	$(13_10)	}$(13_10)	if str > 20 {$(13_10)		min_dmg = wepmindmg * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)	// Identify the min and max dmg$(13_10)	if str <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	$(13_10)	}$(13_10)	if str > 20 {$(13_10)		min_dmg = wepmindmg * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)	if str <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if str > 20 {$(13_10)		min_dmg = wepmindmg * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)$(13_10)}$(13_10)	$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)	if dex <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if dex > 20 {$(13_10)		min_dmg = wepmindmg * (dex/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}	$(13_10)	$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)	if dex <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if dex > 20 {$(13_10)		min_dmg = wepmindmg * (dex/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)	if dex <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if dex > 20 {$(13_10)		min_dmg = wepmindmg * (dex/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)	if int <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if int > 20 {$(13_10)		min_dmg = wepmindmg * (int/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)	if int <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if int > 20 {$(13_10)		min_dmg = wepmindmg * (int/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// argument0 = mindamage, argument1 = strbonus
// scr_calc_min_dmg_display_str(argument0,argument1)

wepmindmg = argument0 + scr_calc_equip_mindmg();

min_dmg = 0;

if (global.inventory[63, 32] < 0) global.inventory[63, 32] = 0;

attack = o_player_stats.stats[? "attack"]; 
if global.inventory[63, 32] != -1 {
	str = o_player_stats.stats[? "strength"] + scr_calc_equip_str() - global.inventory[63, 32]+ argument1; 
} else {
	str = o_player_stats.stats[? "strength"] + scr_calc_equip_str() + argument1; 
}
dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex(); 
int = o_player_stats.stats[? "intelligence"] + scr_calc_equip_intel(); 
vit = o_player_stats.stats[? "vitality"] + scr_calc_equip_vit(); 

if global.shop[slot+1, 23] = -1 {

		min_dmg = scr_calc_equip_mindmg() + str*0.75 + attack; 
		
	return min_dmg
} 


if global.shop[slot+1, 23] = "Sword" {

		min_dmg = wepmindmg + str*0.75 + attack; 
	
	return min_dmg
}

if global.shop[slot+1, 23] = "2H Sword" {
	// Identify the min and max dmg
		min_dmg = wepmindmg + str*0.75 + attack; 
	return min_dmg
}
if global.shop[slot+1, 23] = "Dagger" {

		min_dmg = wepmindmg + str*0.75 + attack; 
		
	return min_dmg
}
	
if global.shop[slot+1, 23] = "Bow" {
		min_dmg = wepmindmg + dex*0.75 + attack; 
	return min_dmg
}	
	
if global.shop[slot+1, 23] = "Rifle" {
	min_dmg = wepmindmg + dex*0.75 + attack; 
	return min_dmg
}

if global.shop[slot+1, 23] = "Bracer" {
		min_dmg = wepmindmg + dex*0.75 + attack; 
	return min_dmg
}

if global.shop[slot+1, 23] = "Wand" {
		min_dmg = wepmindmg + int*0.75 + attack; 
	return min_dmg
}

if global.shop[slot+1, 23] = "Staff" {
		min_dmg = wepmindmg + int*0.75 + attack; 
	return min_dmg
}


/*

// If no weapon equipped
if global.inventory[63, 23] = -1 {
	if str <= 20 {
		min_dmg = scr_calc_equip_mindmg() * 1 + attack 
	}

	if str > 20 {
		min_dmg = scr_calc_equip_mindmg() * (str/20) + attack 
	}
	return min_dmg
} 


if global.inventory[63, 23] = "Sword" {
	if str <= 20 {
		min_dmg = wepmindmg * 1 + attack
	
	}
	if str > 20 {
		min_dmg = wepmindmg * (str/20) + attack 
	}
	return min_dmg
}

if global.inventory[63, 23] = "2H Sword" {
	// Identify the min and max dmg
	if str <= 20 {
		min_dmg = wepmindmg * 1 + attack
	
	}
	if str > 20 {
		min_dmg = wepmindmg * (str/20) + attack 
	}
	return min_dmg
}
if global.inventory[63, 23] = "Dagger" {
	if str <= 20 {
		min_dmg = wepmindmg * 1 + attack
	}
	if str > 20 {
		min_dmg = wepmindmg * (str/20) + attack 
	}
	return min_dmg

}
	
if global.inventory[63, 23] = "Bow" {
	if dex <= 20 {
		min_dmg = wepmindmg * 1 + attack
	}
	if dex > 20 {
		min_dmg = wepmindmg * (dex/20) + attack 
	}
	return min_dmg
}	
	
if global.inventory[63, 23] = "Rifle" {
	if dex <= 20 {
		min_dmg = wepmindmg * 1 + attack
	}
	if dex > 20 {
		min_dmg = wepmindmg * (dex/20) + attack 
	}
	return min_dmg
}

if global.inventory[63, 23] = "Bracer" {
	if dex <= 20 {
		min_dmg = wepmindmg * 1 + attack
	}
	if dex > 20 {
		min_dmg = wepmindmg * (dex/20) + attack 
	}
	return min_dmg
}

if global.inventory[63, 23] = "Wand" {
	if int <= 20 {
		min_dmg = wepmindmg * 1 + attack
	}
	if int > 20 {
		min_dmg = wepmindmg * (int/20) + attack 
	}
	return min_dmg
}

if global.inventory[63, 23] = "Staff" {
	if int <= 20 {
		min_dmg = wepmindmg * 1 + attack
	}
	if int > 20 {
		min_dmg = wepmindmg * (int/20) + attack 
	}
	return min_dmg
}












/**/