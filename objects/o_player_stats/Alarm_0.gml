/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C63692A
/// @DnDArgument : "code" "/// @description Restore HP$(13_10)$(13_10)stats[? "health"] = round(stats[? "health"]+ restore_hp_amount);$(13_10)regen_heal = false;$(13_10)$(13_10)if stats[? "health"] <= stats[? "maxhealth"]{$(13_10)	instance_create_depth(o_player.x,o_player.y, 0,o_regen_hp)$(13_10)}"
/// @description Restore HP

stats[? "health"] = round(stats[? "health"]+ restore_hp_amount);
regen_heal = false;

if stats[? "health"] <= stats[? "maxhealth"]{
	instance_create_depth(o_player.x,o_player.y, 0,o_regen_hp)
}