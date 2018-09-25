/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5403016F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Max HP needs to equal to player HP added to this$(13_10)var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();$(13_10)mp_bonus = 0$(13_10)$(13_10)// For each point in int, add 5 MP$(13_10)for (i = 0; i < totalint; i++) {$(13_10)	mp_bonus += 3;$(13_10)}$(13_10)$(13_10)return round(mp_bonus)$(13_10)"
/// @description Execute Code
// Max HP needs to equal to player HP added to this
var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();
mp_bonus = 0

// For each point in int, add 5 MP
for (i = 0; i < totalint; i++) {
	mp_bonus += 3;
}

return round(mp_bonus)