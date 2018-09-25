/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E3EC751
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)level = 1;$(13_10)mana = 10;$(13_10)class = o_data.classes [? "player"];$(13_10)// Get the stats from the class$(13_10)stats = get_stats_from_class("player");$(13_10)draw_health = stats[? "health"];$(13_10)draw_maxhealth = stats [? "maxhealth"];$(13_10)draw_level = stats [? "level"];$(13_10)draw_experience = stats[? "experience"];$(13_10)draw_damage = stats [? "attack"];$(13_10)load_save_stats("save.dat");$(13_10)$(13_10)// Items List ? not sure if I need this$(13_10)$(13_10)"
/// @description Execute Code

level = 1;
mana = 10;
class = o_data.classes [? "player"];
// Get the stats from the class
stats = get_stats_from_class("player");
draw_health = stats[? "health"];
draw_maxhealth = stats [? "maxhealth"];
draw_level = stats [? "level"];
draw_experience = stats[? "experience"];
draw_damage = stats [? "attack"];
load_save_stats("save.dat");

// Items List ? not sure if I need this