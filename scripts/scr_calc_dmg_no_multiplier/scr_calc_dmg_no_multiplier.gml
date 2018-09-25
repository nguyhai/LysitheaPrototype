/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BE32145
/// @DnDArgument : "code" "/// @description This script is for calculating Auto Attack damage$(13_10)avgwepdmg = (global.inventory[63,2]+global.inventory[63,3])/2$(13_10)// Dmg from equipped weapons $(13_10)wepmindmg = global.inventory[63,2];$(13_10)wepmaxdmg = global.inventory[63,3];$(13_10)$(13_10)min_dmg = 0;$(13_10)max_dmg = 0;$(13_10)$(13_10)$(13_10)attack = o_player_stats.stats[? "attack"]; $(13_10)str = o_player_stats.stats[? "strength"] + scr_calc_equip_str(); $(13_10)dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex(); $(13_10)int = o_player_stats.stats[? "intelligence"] + scr_calc_equip_intel(); $(13_10)vit = o_player_stats.stats[? "vitality"] + scr_calc_equip_vit(); $(13_10)$(13_10)// The multiplier is for normal attack$(13_10)$(13_10)damage = 0;$(13_10)totaldamage = 0;$(13_10)$(13_10)// We are going to use the subweapon to calculate damage$(13_10)$(13_10)// If no weapon equipped$(13_10)if global.inventory[63, 23] = -1 {$(13_10)	damage = irandom_range(scr_calc_min_dmg(),scr_calc_max_dmg());$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)} $(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (str/20) + attack$(13_10)	max_dmg = wepmaxdmg * (str/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (str/20) + attack$(13_10)	max_dmg = wepmaxdmg * (str/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (str/20) + attack$(13_10)	max_dmg = wepmaxdmg * (str/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (dex/20) + attack$(13_10)	max_dmg = wepmaxdmg * (dex/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (dex/20) + attack$(13_10)	max_dmg = wepmaxdmg * (dex/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (dex/20) + attack$(13_10)	max_dmg = wepmaxdmg * (dex/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (int/20) + attack$(13_10)	max_dmg = wepmaxdmg * (int/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)	// Identify the min and max dmg$(13_10)	min_dmg = wepmindmg * (int/20) + attack$(13_10)	max_dmg = wepmaxdmg * (int/20) + attack$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg);$(13_10)	dmgvariety = 0;$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return totaldamage$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description This script is for calculating Auto Attack damage
avgwepdmg = (global.inventory[63,2]+global.inventory[63,3])/2
// Dmg from equipped weapons 
wepmindmg = global.inventory[63,2];
wepmaxdmg = global.inventory[63,3];

min_dmg = 0;
max_dmg = 0;


attack = o_player_stats.stats[? "attack"]; 
str = o_player_stats.stats[? "strength"] + scr_calc_equip_str(); 
dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex(); 
int = o_player_stats.stats[? "intelligence"] + scr_calc_equip_intel(); 
vit = o_player_stats.stats[? "vitality"] + scr_calc_equip_vit(); 

// The multiplier is for normal attack

damage = 0;
totaldamage = 0;

// We are going to use the subweapon to calculate damage

// If no weapon equipped
if global.inventory[63, 23] = -1 {
	damage = irandom_range(scr_calc_min_dmg(),scr_calc_max_dmg());
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
} 

if global.inventory[63, 23] = "Sword" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (str/20) + attack
	max_dmg = wepmaxdmg * (str/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}

if global.inventory[63, 23] = "2H Sword" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (str/20) + attack
	max_dmg = wepmaxdmg * (str/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}
if global.inventory[63, 23] = "Dagger" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (str/20) + attack
	max_dmg = wepmaxdmg * (str/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}

if global.inventory[63, 23] = "Bow" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (dex/20) + attack
	max_dmg = wepmaxdmg * (dex/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}

if global.inventory[63, 23] = "Rifle" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (dex/20) + attack
	max_dmg = wepmaxdmg * (dex/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}

if global.inventory[63, 23] = "Bracer" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (dex/20) + attack
	max_dmg = wepmaxdmg * (dex/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}

if global.inventory[63, 23] = "Wand" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (int/20) + attack
	max_dmg = wepmaxdmg * (int/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}

if global.inventory[63, 23] = "Staff" {
	// Identify the min and max dmg
	min_dmg = wepmindmg * (int/20) + attack
	max_dmg = wepmaxdmg * (int/20) + attack
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg);
	dmgvariety = 0;
	totaldamage = damage+dmgvariety;
	return totaldamage
}