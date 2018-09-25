/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31B71D01
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)tooltipdefense = 0;$(13_10)//defense = global.inventory[slot+1, 15]$(13_10)$(13_10)// If there is no defense on the item you are hovering, defense = 0$(13_10)if defense < 0 { defense = 0}$(13_10)// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1$(13_10)if (global.inventory[63,15] < 0) global.inventory[63,15] = 0;$(13_10)if (global.inventory[64,15] < 0) global.inventory[64,15] = 0;$(13_10)if (global.inventory[65,15] < 0) global.inventory[65,15] = 0;$(13_10)if (global.inventory[66,15] < 0) global.inventory[66,15] = 0;$(13_10)if (global.inventory[67,15] < 0) global.inventory[67,15] = 0;$(13_10)if (global.inventory[68,15] < 0) global.inventory[68,15] = 0;$(13_10)if (global.inventory[69,15] < 0) global.inventory[69,15] = 0;$(13_10)if (global.inventory[70,15] < 0) global.inventory[70,15] = 0;$(13_10)if (global.inventory[71,15] < 0) global.inventory[71,15] = 0;$(13_10)if (global.inventory[72,15] < 0) global.inventory[72,15] = 0;$(13_10)if (global.inventory[73,15] < 0) global.inventory[73,15] = 0;$(13_10)if (global.inventory[74,15] < 0) global.inventory[74,15] = 0;$(13_10)$(13_10)if global.inventory[62] != -1 and type = "Weapon" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[63,15] + defense;$(13_10)} $(13_10)if global.inventory[62] = -1 and type = "Weapon" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()+ defense;$(13_10)}$(13_10)$(13_10)if global.inventory[63] != -1 and type = "Chest Armor" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[64,15]+ defense ;$(13_10)} $(13_10)if global.inventory[63] = -1 and type = "Chest Armor" {$(13_10)	tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense ;$(13_10)}$(13_10)$(13_10)if global.inventory[64] != -1 and type = "Offhand" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[65,15]+ defense;$(13_10)} $(13_10)if global.inventory[64] = -1 and type = "Offhand" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()+ defense;$(13_10)} $(13_10)$(13_10)if global.inventory[65] != -1 and type = "Hat" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[66,15]+ defense;$(13_10)} $(13_10)if global.inventory[65] = -1 and type = "Hat" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()+ defense;$(13_10)} $(13_10)$(13_10)if global.inventory[66] != -1 and type = "Pants" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[67,15]+ defense;$(13_10)} $(13_10)if global.inventory[66] = -1 and type = "Pants" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)} $(13_10)$(13_10)if global.inventory[67] != -1 and type = "Gloves" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[68,15]+ defense;$(13_10)}$(13_10)if global.inventory[67] = -1 and type = "Gloves" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)}$(13_10)$(13_10)if global.inventory[68] != -1 and type = "Boots" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[69,15]+ defense;$(13_10)}$(13_10)if global.inventory[68] = -1 and type = "Boots" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)} $(13_10)$(13_10)if global.inventory[69] != -1 and type = "Artifact" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[70,15]+ defense;$(13_10)}$(13_10)if global.inventory[69] = -1 and type = "Artifact" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)}$(13_10)$(13_10)if global.inventory[71,15] != -1 and type = "Amulet" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[71,15]+ defense;$(13_10)} $(13_10)if global.inventory[71,15] = -1 and type = "Amulet" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)} $(13_10)$(13_10)if global.inventory[72,15] != -1 and type = "Bracelet" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[72,15]+ defense;$(13_10)} $(13_10)if global.inventory[72,15] = -1 and type = "Bracelet" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)} $(13_10)$(13_10)if global.inventory[73,15] != -1 and type = "Ring" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[73,15]+ defense;$(13_10)} $(13_10)if global.inventory[73,15] = -1 and type = "Ring" {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)} $(13_10)$(13_10)if global.inventory[74,15] != -1 and type = "Earring"  {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[74,15]+ defense;$(13_10)} $(13_10)if global.inventory[74,15] = -1 and type = "Earring"  {$(13_10)	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)return tooltipdefense;"
/// @description Execute Code
tooltipdefense = 0;
//defense = global.inventory[slot+1, 15]

// If there is no defense on the item you are hovering, defense = 0
if defense < 0 { defense = 0}
// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1
if (global.inventory[63,15] < 0) global.inventory[63,15] = 0;
if (global.inventory[64,15] < 0) global.inventory[64,15] = 0;
if (global.inventory[65,15] < 0) global.inventory[65,15] = 0;
if (global.inventory[66,15] < 0) global.inventory[66,15] = 0;
if (global.inventory[67,15] < 0) global.inventory[67,15] = 0;
if (global.inventory[68,15] < 0) global.inventory[68,15] = 0;
if (global.inventory[69,15] < 0) global.inventory[69,15] = 0;
if (global.inventory[70,15] < 0) global.inventory[70,15] = 0;
if (global.inventory[71,15] < 0) global.inventory[71,15] = 0;
if (global.inventory[72,15] < 0) global.inventory[72,15] = 0;
if (global.inventory[73,15] < 0) global.inventory[73,15] = 0;
if (global.inventory[74,15] < 0) global.inventory[74,15] = 0;

if global.inventory[62] != -1 and type = "Weapon" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[63,15] + defense;
} 
if global.inventory[62] = -1 and type = "Weapon" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()+ defense;
}

if global.inventory[63] != -1 and type = "Chest Armor" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[64,15]+ defense ;
} 
if global.inventory[63] = -1 and type = "Chest Armor" {
	tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense ;
}

if global.inventory[64] != -1 and type = "Offhand" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[65,15]+ defense;
} 
if global.inventory[64] = -1 and type = "Offhand" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()+ defense;
} 

if global.inventory[65] != -1 and type = "Hat" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[66,15]+ defense;
} 
if global.inventory[65] = -1 and type = "Hat" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()+ defense;
} 

if global.inventory[66] != -1 and type = "Pants" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[67,15]+ defense;
} 
if global.inventory[66] = -1 and type = "Pants" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
} 

if global.inventory[67] != -1 and type = "Gloves" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[68,15]+ defense;
}
if global.inventory[67] = -1 and type = "Gloves" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
}

if global.inventory[68] != -1 and type = "Boots" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[69,15]+ defense;
}
if global.inventory[68] = -1 and type = "Boots" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
} 

if global.inventory[69] != -1 and type = "Artifact" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[70,15]+ defense;
}
if global.inventory[69] = -1 and type = "Artifact" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
}

if global.inventory[71,15] != -1 and type = "Amulet" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[71,15]+ defense;
} 
if global.inventory[71,15] = -1 and type = "Amulet" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
} 

if global.inventory[72,15] != -1 and type = "Bracelet" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[72,15]+ defense;
} 
if global.inventory[72,15] = -1 and type = "Bracelet" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
} 

if global.inventory[73,15] != -1 and type = "Ring" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[73,15]+ defense;
} 
if global.inventory[73,15] = -1 and type = "Ring" {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
} 

if global.inventory[74,15] != -1 and type = "Earring"  {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense()- global.inventory[74,15]+ defense;
} 
if global.inventory[74,15] = -1 and type = "Earring"  {
	 tooltipdefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense() + defense;
} 



return tooltipdefense;