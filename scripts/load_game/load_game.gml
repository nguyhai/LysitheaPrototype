/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 717D4C9A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Take a file name for our load game$(13_10)var file_name = argument0;$(13_10)$(13_10)// Break cases$(13_10)$(13_10)if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);$(13_10)if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);$(13_10)$(13_10)$(13_10)// Load the file$(13_10)// Looks for a save file, if it doesn't exist, then return false$(13_10)var loaded_data = ds_map_secure_load(file_name);$(13_10)$(13_10)if (ds_exists(loaded_data, ds_type_map)){$(13_10)	ds_map_destroy(global.save_data);$(13_10)} else{$(13_10)	return false;$(13_10)}$(13_10)$(13_10)// This is where we assign the new save data to our global save data$(13_10)global.save_data = loaded_data;$(13_10)$(13_10)// Load the stats$(13_10)$(13_10)with (o_player_stats){$(13_10)	level = global.save_data[? "level"];$(13_10)	mana = global.save_data[? "mana"];$(13_10)	stats[? "health"] = global.save_data[? "health"];$(13_10)	ds_map_destroy(stats);$(13_10)	stats = get_stats_from_class("player");$(13_10)	//draw_health = stats[? "health"];$(13_10)	$(13_10)	// Load the items$(13_10)	/*$(13_10)	if (globa.save_data[? "items"] != -1){$(13_10)		ds_list_copy(items, global.save_data[? "items"]);$(13_10)		ds_list_copy(item_number, global.save_data[? "item_number"]);$(13_10)	}$(13_10)	*/$(13_10)}$(13_10)$(13_10)with (o_player){$(13_10)	x = global.save_data [? "x"];$(13_10)	y = global.save_data [? "y"];$(13_10)	// Need this set so that so that it starts out correctly$(13_10)	$(13_10)}$(13_10)$(13_10)// Load the skill objects$(13_10)$(13_10)// Create and snap$(13_10)//instance_create_depth(x,y,0,o_call_lightning);$(13_10)/*$(13_10)with (o_call_lightning){$(13_10)	x = global.save_data[? "x1"];$(13_10)	y = global.save_data[? "y1"];$(13_10)}$(13_10)$(13_10)with (o_call_sword){$(13_10)	x = global.save_data[? "x2"];$(13_10)	y = global.save_data[? "y2"];$(13_10)}$(13_10)$(13_10)with (o_call_multislash){$(13_10)	x = global.save_data[? "x3"];$(13_10)	y = global.save_data[? "y3"];$(13_10)}$(13_10)*/$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// Load the room$(13_10)$(13_10)var saved_room = asset_get_index(global.save_data[? "room"]);$(13_10)if (room != saved_room){$(13_10)	o_player.last_room = noone;$(13_10)	room_goto(saved_room);$(13_10)}$(13_10)$(13_10)// Load the Inventory$(13_10)$(13_10)var temp = ds_list_create();$(13_10)ds_list_read(temp, global.save_data[? "global.inventory"]);$(13_10)global.inventory = temp[| 0];$(13_10)ds_list_destroy(temp); // Free the memory!$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// Success$(13_10)$(13_10)return true;$(13_10)"
/// @description Execute Code

// Take a file name for our load game
var file_name = argument0;

// Break cases

if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);
if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);


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

with (o_player_stats){
	level = global.save_data[? "level"];
	mana = global.save_data[? "mana"];
	stats[? "health"] = global.save_data[? "health"];
	ds_map_destroy(stats);
	stats = get_stats_from_class("player");
	//draw_health = stats[? "health"];
	
	// Load the items
	/*
	if (globa.save_data[? "items"] != -1){
		ds_list_copy(items, global.save_data[? "items"]);
		ds_list_copy(item_number, global.save_data[? "item_number"]);
	}
	*/
}

with (o_player){
	x = global.save_data [? "x"];
	y = global.save_data [? "y"];
	// Need this set so that so that it starts out correctly
	
}

// Load the skill objects

// Create and snap
//instance_create_depth(x,y,0,o_call_lightning);
/*
with (o_call_lightning){
	x = global.save_data[? "x1"];
	y = global.save_data[? "y1"];
}

with (o_call_sword){
	x = global.save_data[? "x2"];
	y = global.save_data[? "y2"];
}

with (o_call_multislash){
	x = global.save_data[? "x3"];
	y = global.save_data[? "y3"];
}
*/




// Load the room

var saved_room = asset_get_index(global.save_data[? "room"]);
if (room != saved_room){
	o_player.last_room = noone;
	room_goto(saved_room);
}

// Load the Inventory

var temp = ds_list_create();
ds_list_read(temp, global.save_data[? "global.inventory"]);
global.inventory = temp[| 0];
ds_list_destroy(temp); // Free the memory!




// Success

return true;
/**/