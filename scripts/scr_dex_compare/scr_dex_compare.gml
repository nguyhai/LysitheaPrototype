/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31B71D01
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)tooltipdex = 0;$(13_10)$(13_10)// If there is no defense on the item you are hovering, defense = 0$(13_10)if dexbonus < 0 { dexbonus = 0}$(13_10)// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1$(13_10)if (global.inventory[63,33] < 0) global.inventory[63,33] = 0;$(13_10)if (global.inventory[64,33] < 0) global.inventory[64,33] = 0;$(13_10)if (global.inventory[65,33] < 0) global.inventory[65,33] = 0;$(13_10)if (global.inventory[66,33] < 0) global.inventory[66,33] = 0;$(13_10)if (global.inventory[67,33] < 0) global.inventory[67,33] = 0;$(13_10)if (global.inventory[68,33] < 0) global.inventory[68,33] = 0;$(13_10)if (global.inventory[69,33] < 0) global.inventory[69,33] = 0;$(13_10)if (global.inventory[70,33] < 0) global.inventory[70,33] = 0;$(13_10)if (global.inventory[71,33] < 0) global.inventory[71,33] = 0;$(13_10)if (global.inventory[72,33] < 0) global.inventory[72,33] = 0;$(13_10)if (global.inventory[73,33] < 0) global.inventory[73,33] = 0;$(13_10)if (global.inventory[74,33] < 0) global.inventory[74,33] = 0;$(13_10)$(13_10)$(13_10)$(13_10)if global.inventory[62] != -1 and type = "Weapon" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[63,33] + dexbonus;$(13_10)} $(13_10)if global.inventory[62] = -1 and type = "Weapon" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()+ dexbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[63] != -1 and type = "Chest Armor" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[64,33]+ dexbonus ;$(13_10)} $(13_10)if global.inventory[63] = -1 and type = "Chest Armor" {$(13_10)	tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus ;$(13_10)}$(13_10)$(13_10)if global.inventory[64] != -1 and type = "Offhand" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[65,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[64] = -1 and type = "Offhand" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()+ dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[65] != -1 and type = "Hat" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[66,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[65] = -1 and type = "Hat" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()+ dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[66] != -1 and type = "Pants" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[67,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[66] = -1 and type = "Pants" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[67] != -1 and type = "Gloves" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[68,33]+ dexbonus;$(13_10)}$(13_10)if global.inventory[67] = -1 and type = "Gloves" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[68] != -1 and type = "Boots" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[69,33]+ dexbonus;$(13_10)}$(13_10)if global.inventory[68] = -1 and type = "Boots" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[69] != -1 and type = "Artifact" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[70,33]+ dexbonus;$(13_10)}$(13_10)if global.inventory[69] = -1 and type = "Artifact" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[70] != -1 and type = "Amulet" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[71,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[70] = -1 and type = "Amulet" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[71] != -1 and type = "Bracelet" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[72,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[71] = -1 and type = "Bracelet" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[72] != -1 and type = "Ring" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[73,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[72] = -1 and type = "Ring" {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[73] != -1 and type = "Earring"  {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[74,33]+ dexbonus;$(13_10)} $(13_10)if global.inventory[73] = -1 and type = "Earring"  {$(13_10)	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)return tooltipdex;"
/// @description Execute Code
tooltipdex = 0;

// If there is no defense on the item you are hovering, defense = 0
if dexbonus < 0 { dexbonus = 0}
// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1
if (global.inventory[63,33] < 0) global.inventory[63,33] = 0;
if (global.inventory[64,33] < 0) global.inventory[64,33] = 0;
if (global.inventory[65,33] < 0) global.inventory[65,33] = 0;
if (global.inventory[66,33] < 0) global.inventory[66,33] = 0;
if (global.inventory[67,33] < 0) global.inventory[67,33] = 0;
if (global.inventory[68,33] < 0) global.inventory[68,33] = 0;
if (global.inventory[69,33] < 0) global.inventory[69,33] = 0;
if (global.inventory[70,33] < 0) global.inventory[70,33] = 0;
if (global.inventory[71,33] < 0) global.inventory[71,33] = 0;
if (global.inventory[72,33] < 0) global.inventory[72,33] = 0;
if (global.inventory[73,33] < 0) global.inventory[73,33] = 0;
if (global.inventory[74,33] < 0) global.inventory[74,33] = 0;



if global.inventory[62] != -1 and type = "Weapon" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[63,33] + dexbonus;
} 
if global.inventory[62] = -1 and type = "Weapon" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()+ dexbonus;
}

if global.inventory[63] != -1 and type = "Chest Armor" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[64,33]+ dexbonus ;
} 
if global.inventory[63] = -1 and type = "Chest Armor" {
	tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus ;
}

if global.inventory[64] != -1 and type = "Offhand" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[65,33]+ dexbonus;
} 
if global.inventory[64] = -1 and type = "Offhand" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()+ dexbonus;
} 

if global.inventory[65] != -1 and type = "Hat" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[66,33]+ dexbonus;
} 
if global.inventory[65] = -1 and type = "Hat" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()+ dexbonus;
} 

if global.inventory[66] != -1 and type = "Pants" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[67,33]+ dexbonus;
} 
if global.inventory[66] = -1 and type = "Pants" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
} 

if global.inventory[67] != -1 and type = "Gloves" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[68,33]+ dexbonus;
}
if global.inventory[67] = -1 and type = "Gloves" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
}

if global.inventory[68] != -1 and type = "Boots" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[69,33]+ dexbonus;
}
if global.inventory[68] = -1 and type = "Boots" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
} 

if global.inventory[69] != -1 and type = "Artifact" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[70,33]+ dexbonus;
}
if global.inventory[69] = -1 and type = "Artifact" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
}

if global.inventory[70] != -1 and type = "Amulet" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[71,33]+ dexbonus;
} 
if global.inventory[70] = -1 and type = "Amulet" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
} 

if global.inventory[71] != -1 and type = "Bracelet" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[72,33]+ dexbonus;
} 
if global.inventory[71] = -1 and type = "Bracelet" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
} 

if global.inventory[72] != -1 and type = "Ring" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[73,33]+ dexbonus;
} 
if global.inventory[72] = -1 and type = "Ring" {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
} 

if global.inventory[73] != -1 and type = "Earring"  {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()- global.inventory[74,33]+ dexbonus;
} 
if global.inventory[73] = -1 and type = "Earring"  {
	 tooltipdex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex() + dexbonus;
} 



return tooltipdex;