/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70BCD705
/// @DnDArgument : "code" "/// @description Restores mana$(13_10)$(13_10)stats[? "mana"] = round(stats[? "mana"]+ restore_mp_amount);$(13_10)regen_mana_heal = false;$(13_10)$(13_10)if stats[? "mana"] <= stats[? "maxmana"]{$(13_10)	instance_create_depth(o_player.x,o_player.y, 0,o_regen_mp)$(13_10)}"
/// @description Restores mana

stats[? "mana"] = round(stats[? "mana"]+ restore_mp_amount);
regen_mana_heal = false;

if stats[? "mana"] <= stats[? "maxmana"]{
	instance_create_depth(o_player.x,o_player.y, 0,o_regen_mp)
}