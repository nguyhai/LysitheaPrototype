/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FBE2B22
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var class_string = argument0;$(13_10)$(13_10)// Create the new stats map and copy it at the same time$(13_10)var stats = json_decode(json_encode(o_data.classes[? class_string]));$(13_10)$(13_10)// Set the maxhealth and health and mana$(13_10)$(13_10)stats[? "maxhealth"] = calculate_health(level, stats[? "health"]);$(13_10)stats[? "health"] = stats[? "maxhealth"];$(13_10)$(13_10)stats[? "maxmana"] = calculate_mana(level, stats[? "mana"]);$(13_10)stats[? "mana"] = stats[? "maxmana"];$(13_10)$(13_10)stats[? "maxattack"] = calculate_attack(level, stats[? "attack"]);$(13_10)stats[? "attack"] = stats[? "maxattack"];$(13_10)$(13_10)stats[? "maxdefense"] = calculate_defense(level, stats[? "defense"]);$(13_10)stats[? "defemse"] = stats[? "maxdefense"];$(13_10)$(13_10)stats[? "maxcritical"] = calculate_critical(level, stats[? "critical"]);$(13_10)stats[? "critical"] = stats[? "maxcritical"];$(13_10)$(13_10)stats[? "maxevasion"] = calculate_evasion(level, stats[? "evasion"]);$(13_10)stats[? "evasion"] = stats[? "maxevasion"];$(13_10)$(13_10)$(13_10)$(13_10)// Set Experience - Max Experience is equal to player level times 10. $(13_10)if (object_index == o_player_stats) {$(13_10)	stats [? "maxexperience"] = level * 10;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// Return the stats $(13_10)return stats;"
/// @description Execute Code
var class_string = argument0;

// Create the new stats map and copy it at the same time
var stats = json_decode(json_encode(o_data.classes[? class_string]));

// Set the maxhealth and health and mana

stats[? "maxhealth"] = calculate_health(level, stats[? "health"]);
stats[? "health"] = stats[? "maxhealth"];

stats[? "maxmana"] = calculate_mana(level, stats[? "mana"]);
stats[? "mana"] = stats[? "maxmana"];

stats[? "maxattack"] = calculate_attack(level, stats[? "attack"]);
stats[? "attack"] = stats[? "maxattack"];

stats[? "maxdefense"] = calculate_defense(level, stats[? "defense"]);
stats[? "defemse"] = stats[? "maxdefense"];

stats[? "maxcritical"] = calculate_critical(level, stats[? "critical"]);
stats[? "critical"] = stats[? "maxcritical"];

stats[? "maxevasion"] = calculate_evasion(level, stats[? "evasion"]);
stats[? "evasion"] = stats[? "maxevasion"];



// Set Experience - Max Experience is equal to player level times 10. 
if (object_index == o_player_stats) {
	stats [? "maxexperience"] = level * 10;
}



// Return the stats 
return stats;