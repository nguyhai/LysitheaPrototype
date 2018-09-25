/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29E23A15
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var file_name = argument0;$(13_10)$(13_10)// Break cases$(13_10)$(13_10)//if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);$(13_10)//if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);$(13_10)$(13_10)// Load the file$(13_10)// Looks for a save file, if it doesn't exist, then return false$(13_10)var loaded_data = ds_map_secure_load(file_name);$(13_10)$(13_10)if (ds_exists(loaded_data, ds_type_map)){$(13_10)	ds_map_destroy(global.save_data);$(13_10)} else{$(13_10)	return false;$(13_10)}$(13_10)$(13_10)// This is where we assign the new save data to our global save data$(13_10)global.save_data = loaded_data;$(13_10)$(13_10)// Load the stats$(13_10)$(13_10)//with (o_saveloadstats){$(13_10)$(13_10)$(13_10)	level = global.save_data[? "level"];$(13_10)	mana = global.save_data[? "mana"];$(13_10)	//stats[? "health"] = global.save_data[? "health"];$(13_10)	$(13_10)	ds_map_destroy(stats);$(13_10)	$(13_10)	stats = get_stats_from_class("player");$(13_10)	//draw_health = stats[? "health"];$(13_10)	$(13_10)$(13_10)//}$(13_10)return true;"
/// @description Execute Code
var file_name = argument0;

// Break cases

//if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);
//if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);

// Load the file
// Looks for a save file, if it doesn't exist, then return false
var loaded_data = ds_map_secure_load(file_name);

if (ds_exists(loaded_data, ds_type_map)){
	ds_map_destroy(global.save_data);
} else{
	return false;
}

// This is where we assign the new save data to our global save data
global.save_data = loaded_data;

// Load the stats

//with (o_saveloadstats){


	level = global.save_data[? "level"];
	mana = global.save_data[? "mana"];
	//stats[? "health"] = global.save_data[? "health"];
	
	ds_map_destroy(stats);
	
	stats = get_stats_from_class("player");
	//draw_health = stats[? "health"];
	

//}
return true;