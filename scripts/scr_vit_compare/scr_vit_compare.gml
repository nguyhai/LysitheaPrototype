/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24CEB0D3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)tooltipvit = 0;$(13_10)$(13_10)// If there is no defense on the item you are hovering, defense = 0$(13_10)if vitbonus < 0 { vitbonus = 0}$(13_10)// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1$(13_10)if (global.inventory[63,35] < 0) global.inventory[63,35] = 0;$(13_10)if (global.inventory[64,35] < 0) global.inventory[64,35] = 0;$(13_10)if (global.inventory[65,35] < 0) global.inventory[65,35] = 0;$(13_10)if (global.inventory[66,35] < 0) global.inventory[66,35] = 0;$(13_10)if (global.inventory[67,35] < 0) global.inventory[67,35] = 0;$(13_10)if (global.inventory[68,35] < 0) global.inventory[68,35] = 0;$(13_10)if (global.inventory[69,35] < 0) global.inventory[69,35] = 0;$(13_10)if (global.inventory[70,35] < 0) global.inventory[70,35] = 0;$(13_10)if (global.inventory[71,35] < 0) global.inventory[71,35] = 0;$(13_10)if (global.inventory[72,35] < 0) global.inventory[72,35] = 0;$(13_10)if (global.inventory[73,35] < 0) global.inventory[73,35] = 0;$(13_10)if (global.inventory[74,35] < 0) global.inventory[74,35] = 0;$(13_10)$(13_10)if global.inventory[62] != -1 and type = "Weapon" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[63,35] + vitbonus;$(13_10)} $(13_10)if global.inventory[62] = -1 and type = "Weapon" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()+ vitbonus;$(13_10)}$(13_10)$(13_10)$(13_10)if global.inventory[63] != -1 and type = "Chest Armor" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[64,35]+ vitbonus ;$(13_10)} $(13_10)if global.inventory[63] = -1 and type = "Chest Armor" {$(13_10)	tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus ;$(13_10)}$(13_10)$(13_10)if global.inventory[64] != -1 and type = "Offhand" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[65,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[64] = -1 and type = "Offhand" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()+ vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[65] != -1 and type = "Hat" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[66,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[65] = -1 and type = "Hat" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()+ vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[66] != -1 and type = "Pants" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[67,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[66] = -1 and type = "Pants" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[67] != -1 and type = "Gloves" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[68,35]+ vitbonus;$(13_10)}$(13_10)if global.inventory[67] = -1 and type = "Gloves" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[68] != -1 and type = "Boots" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[69,35]+ vitbonus;$(13_10)}$(13_10)if global.inventory[68] = -1 and type = "Boots" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[69] != -1 and type = "Artifact" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[70,35]+ vitbonus;$(13_10)}$(13_10)if global.inventory[69] = -1 and type = "Artifact" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)}$(13_10)$(13_10)if global.inventory[70] != -1 and type = "Amulet" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[71,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[70] = -1 and type = "Amulet" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[71] != -1 and type = "Bracelet" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[72,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[71] = -1 and type = "Bracelet" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[72] != -1 and type = "Ring" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[73,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[72] = -1 and type = "Ring" {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)} $(13_10)$(13_10)if global.inventory[73] != -1 and type = "Earring"  {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[74,35]+ vitbonus;$(13_10)} $(13_10)if global.inventory[73] = -1 and type = "Earring"  {$(13_10)	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)return tooltipvit;"
/// @description Execute Code
/// @description Execute Code
tooltipvit = 0;

// If there is no defense on the item you are hovering, defense = 0
if vitbonus < 0 { vitbonus = 0}
// If there is no defense stat on the weapon equipped, then that becomes zero so it wont subtract a -1
if (global.inventory[63,35] < 0) global.inventory[63,35] = 0;
if (global.inventory[64,35] < 0) global.inventory[64,35] = 0;
if (global.inventory[65,35] < 0) global.inventory[65,35] = 0;
if (global.inventory[66,35] < 0) global.inventory[66,35] = 0;
if (global.inventory[67,35] < 0) global.inventory[67,35] = 0;
if (global.inventory[68,35] < 0) global.inventory[68,35] = 0;
if (global.inventory[69,35] < 0) global.inventory[69,35] = 0;
if (global.inventory[70,35] < 0) global.inventory[70,35] = 0;
if (global.inventory[71,35] < 0) global.inventory[71,35] = 0;
if (global.inventory[72,35] < 0) global.inventory[72,35] = 0;
if (global.inventory[73,35] < 0) global.inventory[73,35] = 0;
if (global.inventory[74,35] < 0) global.inventory[74,35] = 0;

if global.inventory[62] != -1 and type = "Weapon" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[63,35] + vitbonus;
} 
if global.inventory[62] = -1 and type = "Weapon" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()+ vitbonus;
}


if global.inventory[63] != -1 and type = "Chest Armor" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[64,35]+ vitbonus ;
} 
if global.inventory[63] = -1 and type = "Chest Armor" {
	tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus ;
}

if global.inventory[64] != -1 and type = "Offhand" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[65,35]+ vitbonus;
} 
if global.inventory[64] = -1 and type = "Offhand" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()+ vitbonus;
} 

if global.inventory[65] != -1 and type = "Hat" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[66,35]+ vitbonus;
} 
if global.inventory[65] = -1 and type = "Hat" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()+ vitbonus;
} 

if global.inventory[66] != -1 and type = "Pants" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[67,35]+ vitbonus;
} 
if global.inventory[66] = -1 and type = "Pants" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
} 

if global.inventory[67] != -1 and type = "Gloves" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[68,35]+ vitbonus;
}
if global.inventory[67] = -1 and type = "Gloves" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
}

if global.inventory[68] != -1 and type = "Boots" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[69,35]+ vitbonus;
}
if global.inventory[68] = -1 and type = "Boots" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
} 

if global.inventory[69] != -1 and type = "Artifact" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[70,35]+ vitbonus;
}
if global.inventory[69] = -1 and type = "Artifact" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
}

if global.inventory[70] != -1 and type = "Amulet" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[71,35]+ vitbonus;
} 
if global.inventory[70] = -1 and type = "Amulet" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
} 

if global.inventory[71] != -1 and type = "Bracelet" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[72,35]+ vitbonus;
} 
if global.inventory[71] = -1 and type = "Bracelet" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
} 

if global.inventory[72] != -1 and type = "Ring" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[73,35]+ vitbonus;
} 
if global.inventory[72] = -1 and type = "Ring" {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
} 

if global.inventory[73] != -1 and type = "Earring"  {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()- global.inventory[74,35]+ vitbonus;
} 
if global.inventory[73] = -1 and type = "Earring"  {
	 tooltipvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit() + vitbonus;
}



return tooltipvit;