/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1CFE3853
/// @DnDArgument : "code" "/// @description Set the MAX HP and MAX MP on creation$(13_10)$(13_10)stats[? "health"] = round(calculate_health(level, class[? "health"])+ scr_calc_hp_from_vit());$(13_10)stats[? "mana"] = round(calculate_health(level, class[? "mana"])+ scr_calc_mp_from_int());$(13_10)$(13_10)"
/// @description Set the MAX HP and MAX MP on creation

stats[? "health"] = round(calculate_health(level, class[? "health"])+ scr_calc_hp_from_vit());
stats[? "mana"] = round(calculate_health(level, class[? "mana"])+ scr_calc_mp_from_int());