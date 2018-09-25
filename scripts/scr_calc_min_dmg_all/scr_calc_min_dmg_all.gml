/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BE32145
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.inventory[63,2] < 0) global.inventory[63,2] = 0;$(13_10)$(13_10)equipmindmg = argument4;$(13_10)if (equipmindmg < 0) {equipmindmg = 0}$(13_10)$(13_10)wepmindmg = global.inventory[63,2] + scr_calc_equip_mindmg()+ equipmindmg;$(13_10)$(13_10)// If an item type is going to have min/max damage, you must define it here so we can remove$(13_10)// What is in the slot before adding$(13_10)$(13_10)if type = "Ring" and global.inventory[73,2] > 0 {$(13_10)	wepmindmg = global.inventory[63,2] + scr_calc_equip_mindmg()- global.inventory[73,2] + equipmindmg;$(13_10)} else if type = "Ring" and global.inventory[73,2] < 0 {$(13_10)	wepmindmg = global.inventory[63,2] + scr_calc_equip_mindmg()+ equipmindmg;$(13_10)}$(13_10)$(13_10)min_dmg = 0;$(13_10)$(13_10)attack = o_player_stats.stats[? "attack"]; $(13_10)$(13_10)str =  argument0; $(13_10)dex =  argument1; $(13_10)int =  argument2; $(13_10)vit =  argument3; $(13_10)$(13_10)if global.inventory[63, 23] = -1 {$(13_10)$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)		$(13_10)	return min_dmg$(13_10)} $(13_10)$(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)	$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)	// Identify the min and max dmg$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)$(13_10)		min_dmg = wepmindmg + str*0.75 + attack; $(13_10)		$(13_10)	return min_dmg$(13_10)}$(13_10)	$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)		min_dmg = wepmindmg + dex*0.75 + attack; $(13_10)	return min_dmg$(13_10)}	$(13_10)	$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)	min_dmg = wepmindmg + dex*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)		min_dmg = wepmindmg + dex*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)		min_dmg = wepmindmg + int*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)		min_dmg = wepmindmg + int*0.75 + attack; $(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)$(13_10)/*$(13_10)$(13_10)// If no weapon equipped$(13_10)if global.inventory[63, 23] = -1 {$(13_10)	if str <= 20 {$(13_10)		min_dmg = scr_calc_equip_mindmg() * 1 + attack $(13_10)	}$(13_10)$(13_10)	if str > 20 {$(13_10)		min_dmg = scr_calc_equip_mindmg() * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)} $(13_10)$(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)	if str <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	$(13_10)	}$(13_10)	if str > 20 {$(13_10)		min_dmg = wepmindmg * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)	// Identify the min and max dmg$(13_10)	if str <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	$(13_10)	}$(13_10)	if str > 20 {$(13_10)		min_dmg = wepmindmg * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)	if str <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if str > 20 {$(13_10)		min_dmg = wepmindmg * (str/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)$(13_10)}$(13_10)	$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)	if dex <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if dex > 20 {$(13_10)		min_dmg = wepmindmg * (dex/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}	$(13_10)	$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)	if dex <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if dex > 20 {$(13_10)		min_dmg = wepmindmg * (dex/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)	if dex <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if dex > 20 {$(13_10)		min_dmg = wepmindmg * (dex/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)	if int <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if int > 20 {$(13_10)		min_dmg = wepmindmg * (int/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)	if int <= 20 {$(13_10)		min_dmg = wepmindmg * 1 + attack$(13_10)	}$(13_10)	if int > 20 {$(13_10)		min_dmg = wepmindmg * (int/20) + attack $(13_10)	}$(13_10)	return min_dmg$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
if (global.inventory[63,2] < 0) global.inventory[63,2] = 0;

equipmindmg = argument4;
if (equipmindmg < 0) {equipmindmg = 0}

wepmindmg = global.inventory[63,2] + scr_calc_equip_mindmg()+ equipmindmg;

// If an item type is going to have min/max damage, you must define it here so we can remove
// What is in the slot before adding

if type = "Ring" and global.inventory[73,2] > 0 {
	wepmindmg = global.inventory[63,2] + scr_calc_equip_mindmg()- global.inventory[73,2] + equipmindmg;
} else if type = "Ring" and global.inventory[73,2] < 0 {
	wepmindmg = global.inventory[63,2] + scr_calc_equip_mindmg()+ equipmindmg;
}

min_dmg = 0;

attack = o_player_stats.stats[? "attack"]; 

str =  argument0; 
dex =  argument1; 
int =  argument2; 
vit =  argument3; 

if global.inventory[63, 23] = -1 {

		min_dmg = wepmindmg + str*0.75 + attack; 
		
	return min_dmg
} 


if global.inventory[63, 23] = "Sword" {

		min_dmg = wepmindmg + str*0.75 + attack; 
	
	return min_dmg
}

if global.inventory[63, 23] = "2H Sword" {
	// Identify the min and max dmg
		min_dmg = wepmindmg + str*0.75 + attack; 
	return min_dmg
}
if global.inventory[63, 23] = "Dagger" {

		min_dmg = wepmindmg + str*0.75 + attack; 
		
	return min_dmg
}
	
if global.inventory[63, 23] = "Bow" {
		min_dmg = wepmindmg + dex*0.75 + attack; 
	return min_dmg
}	
	
if global.inventory[63, 23] = "Rifle" {
	min_dmg = wepmindmg + dex*0.75 + attack; 
	return min_dmg
}

if global.inventory[63, 23] = "Bracer" {
		min_dmg = wepmindmg + dex*0.75 + attack; 
	return min_dmg
}

if global.inventory[63, 23] = "Wand" {
		min_dmg = wepmindmg + int*0.75 + attack; 
	return min_dmg
}

if global.inventory[63, 23] = "Staff" {
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