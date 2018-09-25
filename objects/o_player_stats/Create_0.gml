/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E042FF8
/// @DnDArgument : "code" "/// @description UI is also drawn using this object$(13_10)$(13_10)// Dash and S$(13_10)deathflag = false;$(13_10)gold = 1000000;$(13_10)game_started = true;$(13_10)//Set GUI view size$(13_10)display_set_gui_size(view_wview[0], view_hview[0])$(13_10)// Set the character's level on create$(13_10)level = 1;$(13_10)// Define the class$(13_10)class = o_data.classes [? "player"];$(13_10)// Get the stats from the class$(13_10)stats = get_stats_from_class("player");$(13_10)$(13_10)// Create stats for damage and auto attack damage$(13_10)damage = -1;$(13_10)min_dmg = -1;$(13_10)max_dmg = -1;$(13_10)auto_attack_damage = -1;$(13_10)$(13_10)// Create stats for calculated equipment total$(13_10)$(13_10)equip_dmg = -1;$(13_10)equip_str = -1;$(13_10)equip_dex = -1;$(13_10)equip_int = -1;$(13_10)equip_vit = -1;$(13_10)equip_def = -1;$(13_10)equip_crit = -1;$(13_10)equip_evade = -1;$(13_10)$(13_10)totalcrit = -1;$(13_10)crit_multiplier = -1;$(13_10)totalevade = -1;$(13_10)totalexduration = -1;$(13_10)$(13_10)hpregen = -1;$(13_10)mpregen = -1;$(13_10)$(13_10)restore_hp_percent = -1;$(13_10)restore_hp_amount = -1;$(13_10)$(13_10)regen_heal = false;$(13_10)regen_mana_heal = false;$(13_10)$(13_10)$(13_10)// Items List ? not sure if I need this$(13_10)/*$(13_10)items = ds_list_create();$(13_10)item_number = ds_list_create();$(13_10)"
/// @description UI is also drawn using this object

// Dash and S
deathflag = false;
gold = 1000000;
game_started = true;
//Set GUI view size
display_set_gui_size(view_wview[0], view_hview[0])
// Set the character's level on create
level = 1;
// Define the class
class = o_data.classes [? "player"];
// Get the stats from the class
stats = get_stats_from_class("player");

// Create stats for damage and auto attack damage
damage = -1;
min_dmg = -1;
max_dmg = -1;
auto_attack_damage = -1;

// Create stats for calculated equipment total

equip_dmg = -1;
equip_str = -1;
equip_dex = -1;
equip_int = -1;
equip_vit = -1;
equip_def = -1;
equip_crit = -1;
equip_evade = -1;

totalcrit = -1;
crit_multiplier = -1;
totalevade = -1;
totalexduration = -1;

hpregen = -1;
mpregen = -1;

restore_hp_percent = -1;
restore_hp_amount = -1;

regen_heal = false;
regen_mana_heal = false;


// Items List ? not sure if I need this
/*
items = ds_list_create();
item_number = ds_list_create();
/**/