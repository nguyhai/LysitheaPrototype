/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31B71D01
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)tooltipstr = 0;$(13_10)$(13_10)// If there is no defense on the item you are hovering, defense = 0$(13_10)if strbonus < 0 { strbonus = 0}$(13_10)// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1$(13_10)if (global.inventory[63,32] < 0) global.inventory[63,32] = 0;$(13_10)if (global.inventory[64,32] < 0) global.inventory[64,32] = 0;$(13_10)if (global.inventory[65,32] < 0) global.inventory[65,32] = 0;$(13_10)if (global.inventory[66,32] < 0) global.inventory[66,32] = 0;$(13_10)if (global.inventory[67,32] < 0) global.inventory[67,32] = 0;$(13_10)if (global.inventory[68,32] < 0) global.inventory[68,32] = 0;$(13_10)if (global.inventory[69,32] < 0) global.inventory[69,32] = 0;$(13_10)if (global.inventory[70,32] < 0) global.inventory[70,32] = 0;$(13_10)if (global.inventory[71,32] < 0) global.inventory[71,32] = 0;$(13_10)if (global.inventory[72,32] < 0) global.inventory[72,32] = 0;$(13_10)if (global.inventory[73,32] < 0) global.inventory[73,32] = 0;$(13_10)if (global.inventory[74,32] < 0) global.inventory[74,32] = 0;$(13_10)$(13_10)if global.inventory[62] != -1 and type = "Weapon" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[63,32] + strbonus;$(13_10)} $(13_10)if global.inventory[62] = -1 and type = "Weapon" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()+ strbonus;$(13_10)}$(13_10)$(13_10)$(13_10)if global.inventory[63] != -1 and type = "Chest Armor" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[64,32]+ strbonus ;$(13_10)} $(13_10)if global.inventory[63] = -1 and type = "Chest Armor" {$(13_10)	tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus ;$(13_10)}$(13_10)$(13_10)if global.inventory[64] != -1 and type = "Offhand" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[65,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[64] = -1 and type = "Offhand" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()+ strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[65] != -1 and type = "Hat" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[66,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[65] = -1 and type = "Hat" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()+ strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[66] != -1 and type = "Pants" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[67,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[66] = -1 and type = "Pants" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[67] != -1 and type = "Gloves" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[68,32]+ strbonus;$(13_10)}$(13_10)if global.inventory[67] = -1 and type = "Gloves" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[68] != -1 and type = "Boots" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[69,32]+ strbonus;$(13_10)}$(13_10)if global.inventory[68] = -1 and type = "Boots" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[69] != -1 and type = "Artifact" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[70,32]+ strbonus;$(13_10)}$(13_10)if global.inventory[69] = -1 and type = "Artifact" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[70] != -1 and type = "Amulet" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[71,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[70] = -1 and type = "Amulet" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[71] != -1 and type = "Bracelet" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[72,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[71] = -1 and type = "Bracelet" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[72] != -1 and type = "Ring" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[73,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[72] = -1 and type = "Ring" {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[73] != -1 and type = "Earring"  {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[74,32]+ strbonus;$(13_10)} $(13_10)if global.inventory[73] = -1 and type = "Earring"  {$(13_10)	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)return tooltipstr;"
/// @description Execute Code
tooltipstr = 0;

// If there is no defense on the item you are hovering, defense = 0
if strbonus < 0 { strbonus = 0}
// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1
if (global.inventory[63,32] < 0) global.inventory[63,32] = 0;
if (global.inventory[64,32] < 0) global.inventory[64,32] = 0;
if (global.inventory[65,32] < 0) global.inventory[65,32] = 0;
if (global.inventory[66,32] < 0) global.inventory[66,32] = 0;
if (global.inventory[67,32] < 0) global.inventory[67,32] = 0;
if (global.inventory[68,32] < 0) global.inventory[68,32] = 0;
if (global.inventory[69,32] < 0) global.inventory[69,32] = 0;
if (global.inventory[70,32] < 0) global.inventory[70,32] = 0;
if (global.inventory[71,32] < 0) global.inventory[71,32] = 0;
if (global.inventory[72,32] < 0) global.inventory[72,32] = 0;
if (global.inventory[73,32] < 0) global.inventory[73,32] = 0;
if (global.inventory[74,32] < 0) global.inventory[74,32] = 0;

if global.inventory[62] != -1 and type = "Weapon" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[63,32] + strbonus;
} 
if global.inventory[62] = -1 and type = "Weapon" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()+ strbonus;
}


if global.inventory[63] != -1 and type = "Chest Armor" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[64,32]+ strbonus ;
} 
if global.inventory[63] = -1 and type = "Chest Armor" {
	tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus ;
}

if global.inventory[64] != -1 and type = "Offhand" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[65,32]+ strbonus;
} 
if global.inventory[64] = -1 and type = "Offhand" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()+ strbonus;
} 

if global.inventory[65] != -1 and type = "Hat" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[66,32]+ strbonus;
} 
if global.inventory[65] = -1 and type = "Hat" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()+ strbonus;
} 

if global.inventory[66] != -1 and type = "Pants" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[67,32]+ strbonus;
} 
if global.inventory[66] = -1 and type = "Pants" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
} 

if global.inventory[67] != -1 and type = "Gloves" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[68,32]+ strbonus;
}
if global.inventory[67] = -1 and type = "Gloves" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
}

if global.inventory[68] != -1 and type = "Boots" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[69,32]+ strbonus;
}
if global.inventory[68] = -1 and type = "Boots" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
} 

if global.inventory[69] != -1 and type = "Artifact" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[70,32]+ strbonus;
}
if global.inventory[69] = -1 and type = "Artifact" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
}

if global.inventory[70] != -1 and type = "Amulet" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[71,32]+ strbonus;
} 
if global.inventory[70] = -1 and type = "Amulet" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
} 

if global.inventory[71] != -1 and type = "Bracelet" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[72,32]+ strbonus;
} 
if global.inventory[71] = -1 and type = "Bracelet" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
} 

if global.inventory[72] != -1 and type = "Ring" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[73,32]+ strbonus;
} 
if global.inventory[72] = -1 and type = "Ring" {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
} 

if global.inventory[73] != -1 and type = "Earring"  {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str()- global.inventory[74,32]+ strbonus;
} 
if global.inventory[73] = -1 and type = "Earring"  {
	 tooltipstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str() + strbonus;
} 



return tooltipstr;