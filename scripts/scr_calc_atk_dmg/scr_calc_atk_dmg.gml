/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BE32145
/// @DnDArgument : "code" "/// @description This script is for calculating Auto Attack damage$(13_10)$(13_10)if (global.inventory[63,2] < 0) global.inventory[63,2] = 0;$(13_10)if (global.inventory[63,3] < 0)	global.inventory[63,3] = 0;$(13_10)$(13_10)min_dmg = scr_calc_min_dmg();$(13_10)max_dmg = scr_calc_max_dmg();$(13_10)$(13_10)attack = o_player_stats.stats[? "attack"]; $(13_10)str = o_player_stats.stats[? "strength"] + scr_calc_equip_str(); $(13_10)dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex(); $(13_10)int = o_player_stats.stats[? "intelligence"] + scr_calc_equip_intel(); $(13_10)vit = o_player_stats.stats[? "vitality"] + scr_calc_equip_vit(); $(13_10)$(13_10)// The multiplier is for normal attack$(13_10)multiplier = 0;$(13_10)damage = 0;$(13_10)totaldamage = 0;$(13_10)var str_plus_equip = o_player_stats.stats[? "strength"] + scr_calc_equip_str();$(13_10)$(13_10)if (str_plus_equip < 25)							{multiplier = 1.00;}$(13_10)if (str_plus_equip >= 25 and  str_plus_equip<=49 )  {multiplier = 1.05;}$(13_10)if (str_plus_equip >= 50 and  str_plus_equip<=74 )  {multiplier = 1.10;}$(13_10)if (str_plus_equip >= 75 and  str_plus_equip<=99 )  {multiplier = 1.15;}$(13_10)if (str_plus_equip >= 100 and str_plus_equip<=124 ) {multiplier = 1.20;}$(13_10)if (str_plus_equip >= 125 and str_plus_equip<=149 ) {multiplier = 1.25;}$(13_10)if (str_plus_equip >= 150 and str_plus_equip<=174 ) {multiplier = 1.30;}$(13_10)if (str_plus_equip >= 175 and str_plus_equip<=199 ) {multiplier = 1.35;}$(13_10)if (str_plus_equip >= 200 and str_plus_equip<=224 ) {multiplier = 1.40;}$(13_10)if (str_plus_equip >= 225 and str_plus_equip<=249 ) {multiplier = 1.45;}$(13_10)if (str_plus_equip >= 250 and str_plus_equip<=274 ) {multiplier = 1.50;}$(13_10)if (str_plus_equip >= 275 and str_plus_equip<=299 ) {multiplier = 1.55;}$(13_10)if (str_plus_equip >= 300 and str_plus_equip<=324 ) {multiplier = 1.60;}$(13_10)if (str_plus_equip >= 325 and str_plus_equip<=349 ) {multiplier = 1.65;}$(13_10)if (str_plus_equip >= 350 and str_plus_equip<=374 ) {multiplier = 1.70;}$(13_10)if (str_plus_equip >= 375 and str_plus_equip<=399 ) {multiplier = 1.75;}$(13_10)if (str_plus_equip >= 400 and str_plus_equip<=424 ) {multiplier = 1.80;}$(13_10)if (str_plus_equip >= 425 and str_plus_equip<=449 ) {multiplier = 1.85;}$(13_10)if (str_plus_equip >= 450 and str_plus_equip<=474 ) {multiplier = 1.90;}$(13_10)if (str_plus_equip >= 475 and str_plus_equip<=499 ) {multiplier = 1.95;}$(13_10)if (str_plus_equip >= 500 and str_plus_equip<=524 ) {multiplier = 2.00;}$(13_10)if (str_plus_equip >= 525 and str_plus_equip<=549 ) {multiplier = 2.05;}$(13_10)if (str_plus_equip >= 550 and str_plus_equip<=574 ) {multiplier = 2.10;}$(13_10)if (str_plus_equip >= 575 and str_plus_equip<=599 ) {multiplier = 2.15;}$(13_10)if (str_plus_equip >= 600 and str_plus_equip<=624 ) {multiplier = 2.20;}$(13_10)if (str_plus_equip >= 625 and str_plus_equip<=649 ) {multiplier = 2.25;}$(13_10)if (str_plus_equip >= 650 and str_plus_equip<=674 ) {multiplier = 2.30;}$(13_10)if (str_plus_equip >= 675 and str_plus_equip<=699 ) {multiplier = 2.35;}$(13_10)if (str_plus_equip >= 700 and str_plus_equip<=724 ) {multiplier = 2.40;}$(13_10)if (str_plus_equip >= 725 and str_plus_equip<=749 ) {multiplier = 2.45;}$(13_10)if (str_plus_equip >= 750 and str_plus_equip<=774 ) {multiplier = 2.50;}$(13_10)if (str_plus_equip >= 775 and str_plus_equip<=799 ) {multiplier = 2.55;}$(13_10)if (str_plus_equip >= 800 and str_plus_equip<=824 ) {multiplier = 2.60;}$(13_10)if (str_plus_equip >= 825 and str_plus_equip<=849 ) {multiplier = 2.65;}$(13_10)if (str_plus_equip >= 850 and str_plus_equip<=874 ) {multiplier = 2.70;}$(13_10)if (str_plus_equip >= 875 and str_plus_equip<=899 ) {multiplier = 2.75;}$(13_10)if (str_plus_equip >= 900 and str_plus_equip<=924 ) {multiplier = 2.80;}$(13_10)if (str_plus_equip >= 925 and str_plus_equip<=949 ) {multiplier = 2.85;}$(13_10)if (str_plus_equip >= 950 and str_plus_equip<=974 ) {multiplier = 2.90;}$(13_10)if (str_plus_equip >= 975 and str_plus_equip<=999 ) {multiplier = 2.95;}$(13_10)if (str_plus_equip >=1000)							{multiplier = 3.00;}$(13_10)$(13_10)// We are going to use the subweapon to calculate damage$(13_10)$(13_10)// If no weapon equipped$(13_10)if global.inventory[63, 23] = -1 {$(13_10)	damage = irandom_range(scr_calc_min_dmg(),scr_calc_max_dmg())* multiplier$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)} $(13_10)$(13_10)if global.inventory[63, 23] = "Sword" {$(13_10)$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "2H Sword" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (str <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (str > 20) {min_dmg = wepmindmg * (str/20) + attack}$(13_10)	if (str <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	if (str > 20) {max_dmg = wepmaxdmg * (str/20) + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)if global.inventory[63, 23] = "Dagger" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (str <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (str > 20) {min_dmg = wepmindmg * (str/20) + attack}$(13_10)	if (str > 20) {max_dmg = wepmaxdmg * (str/20) + attack}$(13_10)	if (str <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bow" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (dex <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (dex > 20) {min_dmg = wepmindmg * (dex/20) + attack}$(13_10)	if (dex > 20) {max_dmg = wepmaxdmg * (dex/20) + attack}$(13_10)	if (dex <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Rifle" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (dex <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (dex > 20) {min_dmg = wepmindmg * (dex/20) + attack}$(13_10)	if (dex > 20) {max_dmg = wepmaxdmg * (dex/20) + attack}$(13_10)	if (dex <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Bracer" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (dex <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (dex > 20) {min_dmg = wepmindmg * (dex/20) + attack}$(13_10)	if (dex > 20) {max_dmg = wepmaxdmg * (dex/20) + attack}$(13_10)	if (dex <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Wand" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (int <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (int > 20) {min_dmg = wepmindmg * (int/20) + attack}$(13_10)	if (int > 20) {max_dmg = wepmaxdmg * (int/20) + attack}$(13_10)	if (int <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)if global.inventory[63, 23] = "Staff" {$(13_10)	// Identify the min and max dmg$(13_10)	/*$(13_10)	if (int <= 20 ) {min_dmg = wepmindmg * 1 + attack}$(13_10)	if (int > 20) {min_dmg = wepmindmg * (int/20) + attack}$(13_10)	if (int > 20) {max_dmg = wepmaxdmg * (int/20) + attack}$(13_10)	if (int <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}$(13_10)	*/$(13_10)	// Damage is a value in between min/max and multiplied by the autoatk multiplier$(13_10)	damage = irandom_range(min_dmg, max_dmg) * multiplier;$(13_10)	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));$(13_10)	totaldamage = damage+dmgvariety;$(13_10)	return damage$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description This script is for calculating Auto Attack damage

if (global.inventory[63,2] < 0) global.inventory[63,2] = 0;
if (global.inventory[63,3] < 0)	global.inventory[63,3] = 0;

min_dmg = scr_calc_min_dmg();
max_dmg = scr_calc_max_dmg();

attack = o_player_stats.stats[? "attack"]; 
str = o_player_stats.stats[? "strength"] + scr_calc_equip_str(); 
dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex(); 
int = o_player_stats.stats[? "intelligence"] + scr_calc_equip_intel(); 
vit = o_player_stats.stats[? "vitality"] + scr_calc_equip_vit(); 

// The multiplier is for normal attack
multiplier = 0;
damage = 0;
totaldamage = 0;
var str_plus_equip = o_player_stats.stats[? "strength"] + scr_calc_equip_str();

if (str_plus_equip < 25)							{multiplier = 1.00;}
if (str_plus_equip >= 25 and  str_plus_equip<=49 )  {multiplier = 1.05;}
if (str_plus_equip >= 50 and  str_plus_equip<=74 )  {multiplier = 1.10;}
if (str_plus_equip >= 75 and  str_plus_equip<=99 )  {multiplier = 1.15;}
if (str_plus_equip >= 100 and str_plus_equip<=124 ) {multiplier = 1.20;}
if (str_plus_equip >= 125 and str_plus_equip<=149 ) {multiplier = 1.25;}
if (str_plus_equip >= 150 and str_plus_equip<=174 ) {multiplier = 1.30;}
if (str_plus_equip >= 175 and str_plus_equip<=199 ) {multiplier = 1.35;}
if (str_plus_equip >= 200 and str_plus_equip<=224 ) {multiplier = 1.40;}
if (str_plus_equip >= 225 and str_plus_equip<=249 ) {multiplier = 1.45;}
if (str_plus_equip >= 250 and str_plus_equip<=274 ) {multiplier = 1.50;}
if (str_plus_equip >= 275 and str_plus_equip<=299 ) {multiplier = 1.55;}
if (str_plus_equip >= 300 and str_plus_equip<=324 ) {multiplier = 1.60;}
if (str_plus_equip >= 325 and str_plus_equip<=349 ) {multiplier = 1.65;}
if (str_plus_equip >= 350 and str_plus_equip<=374 ) {multiplier = 1.70;}
if (str_plus_equip >= 375 and str_plus_equip<=399 ) {multiplier = 1.75;}
if (str_plus_equip >= 400 and str_plus_equip<=424 ) {multiplier = 1.80;}
if (str_plus_equip >= 425 and str_plus_equip<=449 ) {multiplier = 1.85;}
if (str_plus_equip >= 450 and str_plus_equip<=474 ) {multiplier = 1.90;}
if (str_plus_equip >= 475 and str_plus_equip<=499 ) {multiplier = 1.95;}
if (str_plus_equip >= 500 and str_plus_equip<=524 ) {multiplier = 2.00;}
if (str_plus_equip >= 525 and str_plus_equip<=549 ) {multiplier = 2.05;}
if (str_plus_equip >= 550 and str_plus_equip<=574 ) {multiplier = 2.10;}
if (str_plus_equip >= 575 and str_plus_equip<=599 ) {multiplier = 2.15;}
if (str_plus_equip >= 600 and str_plus_equip<=624 ) {multiplier = 2.20;}
if (str_plus_equip >= 625 and str_plus_equip<=649 ) {multiplier = 2.25;}
if (str_plus_equip >= 650 and str_plus_equip<=674 ) {multiplier = 2.30;}
if (str_plus_equip >= 675 and str_plus_equip<=699 ) {multiplier = 2.35;}
if (str_plus_equip >= 700 and str_plus_equip<=724 ) {multiplier = 2.40;}
if (str_plus_equip >= 725 and str_plus_equip<=749 ) {multiplier = 2.45;}
if (str_plus_equip >= 750 and str_plus_equip<=774 ) {multiplier = 2.50;}
if (str_plus_equip >= 775 and str_plus_equip<=799 ) {multiplier = 2.55;}
if (str_plus_equip >= 800 and str_plus_equip<=824 ) {multiplier = 2.60;}
if (str_plus_equip >= 825 and str_plus_equip<=849 ) {multiplier = 2.65;}
if (str_plus_equip >= 850 and str_plus_equip<=874 ) {multiplier = 2.70;}
if (str_plus_equip >= 875 and str_plus_equip<=899 ) {multiplier = 2.75;}
if (str_plus_equip >= 900 and str_plus_equip<=924 ) {multiplier = 2.80;}
if (str_plus_equip >= 925 and str_plus_equip<=949 ) {multiplier = 2.85;}
if (str_plus_equip >= 950 and str_plus_equip<=974 ) {multiplier = 2.90;}
if (str_plus_equip >= 975 and str_plus_equip<=999 ) {multiplier = 2.95;}
if (str_plus_equip >=1000)							{multiplier = 3.00;}

// We are going to use the subweapon to calculate damage

// If no weapon equipped
if global.inventory[63, 23] = -1 {
	damage = irandom_range(scr_calc_min_dmg(),scr_calc_max_dmg())* multiplier
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
} 

if global.inventory[63, 23] = "Sword" {

	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}

if global.inventory[63, 23] = "2H Sword" {
	// Identify the min and max dmg
	/*
	if (str <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (str > 20) {min_dmg = wepmindmg * (str/20) + attack}
	if (str <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	if (str > 20) {max_dmg = wepmaxdmg * (str/20) + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}
if global.inventory[63, 23] = "Dagger" {
	// Identify the min and max dmg
	/*
	if (str <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (str > 20) {min_dmg = wepmindmg * (str/20) + attack}
	if (str > 20) {max_dmg = wepmaxdmg * (str/20) + attack}
	if (str <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}

if global.inventory[63, 23] = "Bow" {
	// Identify the min and max dmg
	/*
	if (dex <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (dex > 20) {min_dmg = wepmindmg * (dex/20) + attack}
	if (dex > 20) {max_dmg = wepmaxdmg * (dex/20) + attack}
	if (dex <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}

if global.inventory[63, 23] = "Rifle" {
	// Identify the min and max dmg
	/*
	if (dex <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (dex > 20) {min_dmg = wepmindmg * (dex/20) + attack}
	if (dex > 20) {max_dmg = wepmaxdmg * (dex/20) + attack}
	if (dex <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}

if global.inventory[63, 23] = "Bracer" {
	// Identify the min and max dmg
	/*
	if (dex <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (dex > 20) {min_dmg = wepmindmg * (dex/20) + attack}
	if (dex > 20) {max_dmg = wepmaxdmg * (dex/20) + attack}
	if (dex <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}

if global.inventory[63, 23] = "Wand" {
	// Identify the min and max dmg
	/*
	if (int <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (int > 20) {min_dmg = wepmindmg * (int/20) + attack}
	if (int > 20) {max_dmg = wepmaxdmg * (int/20) + attack}
	if (int <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}

if global.inventory[63, 23] = "Staff" {
	// Identify the min and max dmg
	/*
	if (int <= 20 ) {min_dmg = wepmindmg * 1 + attack}
	if (int > 20) {min_dmg = wepmindmg * (int/20) + attack}
	if (int > 20) {max_dmg = wepmaxdmg * (int/20) + attack}
	if (int <= 20 ) {max_dmg = wepmaxdmg * 1 + attack}
	*/
	// Damage is a value in between min/max and multiplied by the autoatk multiplier
	damage = irandom_range(min_dmg, max_dmg) * multiplier;
	dmgvariety = round(irandom_range(-(damage*0.10), (damage*0.10)));
	totaldamage = damage+dmgvariety;
	return damage
}


















/**/