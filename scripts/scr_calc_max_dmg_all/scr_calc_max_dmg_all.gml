/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BE32145
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.inventory[63,3] < 0) global.inventory[63,3] = 0;$(13_10)equipmaxdmg = argument4$(13_10)if (equipmaxdmg < 0) {equipmaxdmg = 0}$(13_10)$(13_10)wepmaxdmg = global.inventory[63,3] + scr_calc_equip_maxdmg()+ equipmaxdmg;$(13_10)$(13_10)if type = "Ring" and global.inventory[73,3] > 0 {$(13_10)	wepmaxdmg = global.inventory[63,3] + scr_calc_equip_maxdmg()- global.inventory[73,3] + equipmaxdmg;$(13_10)} else if type = "Ring" and global.inventory[73,3] < 0 {$(13_10)	wepmaxdmg = global.inventory[63,3] + scr_calc_equip_maxdmg()+ equipmaxdmg;$(13_10)}$(13_10)$(13_10)$(13_10)max_dmg = 0;$(13_10)$(13_10)attack = o_player_stats.stats[? "attack"]; $(13_10)str = argument0; $(13_10)dex = argument1; $(13_10)int = argument2; $(13_10)vit = argument3; $(13_10)$(13_10)if global.inventory[63, 23] = -1 {$(13_10)$(13_10)		max_dmg = wepmaxdmg + str*0.75 + attack; $(13_10)$(13_10)	return max_dmg$(13_10)} $(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)$(13_10)		max_dmg = wepmaxdmg + str*0.75 + attack; $(13_10)$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)		max_dmg = wepmaxdmg + str*0.75 + attack; $(13_10)	return max_dmg$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)		max_dmg = wepmaxdmg + str*0.75 + attack; $(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)		max_dmg = wepmaxdmg + dex*0.75 + attack; $(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)		max_dmg = wepmaxdmg + dex*0.75 + attack; $(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)		max_dmg = wepmaxdmg + dex*0.75 + attack; $(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)		max_dmg = wepmaxdmg + int*0.75 + attack ;$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)		max_dmg = wepmaxdmg + int*0.75 + attack; $(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)$(13_10)/*$(13_10)// If no weapon equipped$(13_10)if global.inventory[63, 23] = -1 {$(13_10)$(13_10)		max_dmg = scr_calc_equip_maxdmg() + str*0.75 + attack $(13_10)$(13_10)	return max_dmg$(13_10)} $(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)	if str<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if str > 20 {$(13_10)		max_dmg = wepmaxdmg * (str/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)	if str<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if str > 20 {$(13_10)		max_dmg = wepmaxdmg * (str/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)	if str<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if str > 20 {$(13_10)		max_dmg = wepmaxdmg * (str/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)	if dex<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if dex > 20 {$(13_10)		max_dmg = wepmaxdmg * (dex/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)	if dex<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if dex > 20 {$(13_10)		max_dmg = wepmaxdmg * (dex/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)	if dex<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if dex > 20 {$(13_10)		max_dmg = wepmaxdmg * (dex/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)	if int<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if int > 20 {$(13_10)		max_dmg = wepmaxdmg * (int/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)	if int<= 20 {$(13_10)		max_dmg = wepmaxdmg * 1 + attack $(13_10)	}$(13_10)	if int > 20 {$(13_10)		max_dmg = wepmaxdmg * (int/20) + attack$(13_10)	}$(13_10)	return max_dmg$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
if (global.inventory[63,3] < 0) global.inventory[63,3] = 0;
equipmaxdmg = argument4
if (equipmaxdmg < 0) {equipmaxdmg = 0}

wepmaxdmg = global.inventory[63,3] + scr_calc_equip_maxdmg()+ equipmaxdmg;

if type = "Ring" and global.inventory[73,3] > 0 {
	wepmaxdmg = global.inventory[63,3] + scr_calc_equip_maxdmg()- global.inventory[73,3] + equipmaxdmg;
} else if type = "Ring" and global.inventory[73,3] < 0 {
	wepmaxdmg = global.inventory[63,3] + scr_calc_equip_maxdmg()+ equipmaxdmg;
}


max_dmg = 0;

attack = o_player_stats.stats[? "attack"]; 
str = argument0; 
dex = argument1; 
int = argument2; 
vit = argument3; 

if global.inventory[63, 23] = -1 {

		max_dmg = wepmaxdmg + str*0.75 + attack; 

	return max_dmg
} 

if global.inventory[63, 23] = "Sword" {

		max_dmg = wepmaxdmg + str*0.75 + attack; 

	return max_dmg
}

if global.inventory[63, 23] = "2H Sword" {
		max_dmg = wepmaxdmg + str*0.75 + attack; 
	return max_dmg
}
if global.inventory[63, 23] = "Dagger" {
		max_dmg = wepmaxdmg + str*0.75 + attack; 
	return max_dmg
}

if global.inventory[63, 23] = "Bow" {
		max_dmg = wepmaxdmg + dex*0.75 + attack; 
	return max_dmg
}

if global.inventory[63, 23] = "Rifle" {
		max_dmg = wepmaxdmg + dex*0.75 + attack; 
	return max_dmg
}

if global.inventory[63, 23] = "Bracer" {
		max_dmg = wepmaxdmg + dex*0.75 + attack; 
	return max_dmg
}

if global.inventory[63, 23] = "Wand" {
		max_dmg = wepmaxdmg + int*0.75 + attack ;
	return max_dmg
}

if global.inventory[63, 23] = "Staff" {
		max_dmg = wepmaxdmg + int*0.75 + attack; 
	return max_dmg
}


/*
// If no weapon equipped
if global.inventory[63, 23] = -1 {

		max_dmg = scr_calc_equip_maxdmg() + str*0.75 + attack 

	return max_dmg
} 

if global.inventory[63, 23] = "Sword" {
	if str<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if str > 20 {
		max_dmg = wepmaxdmg * (str/20) + attack
	}
	return max_dmg
}

if global.inventory[63, 23] = "2H Sword" {
	if str<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if str > 20 {
		max_dmg = wepmaxdmg * (str/20) + attack
	}
	return max_dmg
}
if global.inventory[63, 23] = "Dagger" {
	if str<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if str > 20 {
		max_dmg = wepmaxdmg * (str/20) + attack
	}
	return max_dmg
}

if global.inventory[63, 23] = "Bow" {
	if dex<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if dex > 20 {
		max_dmg = wepmaxdmg * (dex/20) + attack
	}
	return max_dmg
}

if global.inventory[63, 23] = "Rifle" {
	if dex<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if dex > 20 {
		max_dmg = wepmaxdmg * (dex/20) + attack
	}
	return max_dmg
}

if global.inventory[63, 23] = "Bracer" {
	if dex<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if dex > 20 {
		max_dmg = wepmaxdmg * (dex/20) + attack
	}
	return max_dmg
}

if global.inventory[63, 23] = "Wand" {
	if int<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if int > 20 {
		max_dmg = wepmaxdmg * (int/20) + attack
	}
	return max_dmg
}

if global.inventory[63, 23] = "Staff" {
	if int<= 20 {
		max_dmg = wepmaxdmg * 1 + attack 
	}
	if int > 20 {
		max_dmg = wepmaxdmg * (int/20) + attack
	}
	return max_dmg
}












/**/