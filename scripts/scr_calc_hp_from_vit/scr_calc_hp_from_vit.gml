/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5403016F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Max HP needs to equal to player HP added to this$(13_10)$(13_10)var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();$(13_10)hp_bonus = 0;$(13_10)$(13_10)// For each point in vit, add 5 HP$(13_10)for (i = 0; i < totalvit; i++) {$(13_10)	hp_bonus += 3;$(13_10)}$(13_10)$(13_10)return round(hp_bonus)$(13_10)"
/// @description Execute Code
// Max HP needs to equal to player HP added to this

var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();
hp_bonus = 0;

// For each point in vit, add 5 HP
for (i = 0; i < totalvit; i++) {
	hp_bonus += 3;
}

return round(hp_bonus)