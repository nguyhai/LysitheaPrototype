/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A0BD792
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)tooltipint = 0;$(13_10)$(13_10)// If there is no defense on the item you are hovering, defense = 0$(13_10)if intelbonus < 0 { intelbonus = 0}$(13_10)// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1$(13_10)if (global.inventory[63,34] < 0) global.inventory[63,34] = 0;$(13_10)if (global.inventory[64,34] < 0) global.inventory[64,34] = 0;$(13_10)if (global.inventory[65,34] < 0) global.inventory[65,34] = 0;$(13_10)if (global.inventory[66,34] < 0) global.inventory[66,34] = 0;$(13_10)if (global.inventory[67,34] < 0) global.inventory[67,34] = 0;$(13_10)if (global.inventory[68,34] < 0) global.inventory[68,34] = 0;$(13_10)if (global.inventory[69,34] < 0) global.inventory[69,34] = 0;$(13_10)if (global.inventory[70,34] < 0) global.inventory[70,34] = 0;$(13_10)if (global.inventory[71,34] < 0) global.inventory[71,34] = 0;$(13_10)if (global.inventory[72,34] < 0) global.inventory[72,34] = 0;$(13_10)if (global.inventory[73,34] < 0) global.inventory[73,34] = 0;$(13_10)if (global.inventory[74,34] < 0) global.inventory[74,34] = 0;$(13_10)$(13_10)if global.inventory[62] != -1 and type = "Weapon" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[63,34] + intelbonus;$(13_10)} $(13_10)if global.inventory[62] = -1 and type = "Weapon" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()+ intelbonus;$(13_10)}$(13_10)$(13_10)$(13_10)if global.inventory[63] != -1 and type = "Chest Armor" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[64,34]+ intelbonus ;$(13_10)} $(13_10)if global.inventory[63] = -1 and type = "Chest Armor" {$(13_10)	tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus ;$(13_10)}$(13_10)$(13_10)if global.inventory[64] != -1 and type = "Offhand" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[65,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[64] = -1 and type = "Offhand" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()+ intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[65] != -1 and type = "Hat" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[66,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[65] = -1 and type = "Hat" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[66] != -1 and type = "Pants" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[67,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[66] = -1 and type = "Pants" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[67] != -1 and type = "Gloves" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[68,34]+ intelbonus;$(13_10)}$(13_10)if global.inventory[67] = -1 and type = "Gloves" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[68] != -1 and type = "Boots" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[69,34] + intelbonus;$(13_10)}$(13_10)if global.inventory[68] = -1 and type = "Boots" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[69] != -1 and type = "Artifact" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[70,34]+ intelbonus;$(13_10)}$(13_10)if global.inventory[69] = -1 and type = "Artifact" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[70] != -1 and type = "Amulet" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[71,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[70] = -1 and type = "Amulet" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[71] != -1 and type = "Bracelet" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[72,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[71] = -1 and type = "Bracelet" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[72] != -1 and type = "Ring" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[73,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[72] = -1 and type = "Ring" {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[73] != -1 and type = "Earring"  {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[74,34]+ intelbonus;$(13_10)} $(13_10)if global.inventory[73] = -1 and type = "Earring"  {$(13_10)	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)return tooltipint;"
/// @description Execute Code
/// @description Execute Code
tooltipint = 0;

// If there is no defense on the item you are hovering, defense = 0
if intelbonus < 0 { intelbonus = 0}
// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1
if (global.inventory[63,34] < 0) global.inventory[63,34] = 0;
if (global.inventory[64,34] < 0) global.inventory[64,34] = 0;
if (global.inventory[65,34] < 0) global.inventory[65,34] = 0;
if (global.inventory[66,34] < 0) global.inventory[66,34] = 0;
if (global.inventory[67,34] < 0) global.inventory[67,34] = 0;
if (global.inventory[68,34] < 0) global.inventory[68,34] = 0;
if (global.inventory[69,34] < 0) global.inventory[69,34] = 0;
if (global.inventory[70,34] < 0) global.inventory[70,34] = 0;
if (global.inventory[71,34] < 0) global.inventory[71,34] = 0;
if (global.inventory[72,34] < 0) global.inventory[72,34] = 0;
if (global.inventory[73,34] < 0) global.inventory[73,34] = 0;
if (global.inventory[74,34] < 0) global.inventory[74,34] = 0;

if global.inventory[62] != -1 and type = "Weapon" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[63,34] + intelbonus;
} 
if global.inventory[62] = -1 and type = "Weapon" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()+ intelbonus;
}


if global.inventory[63] != -1 and type = "Chest Armor" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[64,34]+ intelbonus ;
} 
if global.inventory[63] = -1 and type = "Chest Armor" {
	tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus ;
}

if global.inventory[64] != -1 and type = "Offhand" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[65,34]+ intelbonus;
} 
if global.inventory[64] = -1 and type = "Offhand" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()+ intelbonus;
} 

if global.inventory[65] != -1 and type = "Hat" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[66,34]+ intelbonus;
} 
if global.inventory[65] = -1 and type = "Hat" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 

if global.inventory[66] != -1 and type = "Pants" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[67,34]+ intelbonus;
} 
if global.inventory[66] = -1 and type = "Pants" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 

if global.inventory[67] != -1 and type = "Gloves" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[68,34]+ intelbonus;
}
if global.inventory[67] = -1 and type = "Gloves" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
}

if global.inventory[68] != -1 and type = "Boots" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[69,34] + intelbonus;
}
if global.inventory[68] = -1 and type = "Boots" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 

if global.inventory[69] != -1 and type = "Artifact" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[70,34]+ intelbonus;
}
if global.inventory[69] = -1 and type = "Artifact" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
}

if global.inventory[70] != -1 and type = "Amulet" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[71,34]+ intelbonus;
} 
if global.inventory[70] = -1 and type = "Amulet" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 

if global.inventory[71] != -1 and type = "Bracelet" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[72,34]+ intelbonus;
} 
if global.inventory[71] = -1 and type = "Bracelet" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 

if global.inventory[72] != -1 and type = "Ring" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[73,34]+ intelbonus;
} 
if global.inventory[72] = -1 and type = "Ring" {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 

if global.inventory[73] != -1 and type = "Earring"  {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()- global.inventory[74,34]+ intelbonus;
} 
if global.inventory[73] = -1 and type = "Earring"  {
	 tooltipint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel() + intelbonus;
} 



return tooltipint;