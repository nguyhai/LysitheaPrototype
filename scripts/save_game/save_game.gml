/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13774407
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//We're gonna pass in a file name$(13_10)$(13_10)var file_name = argument0;$(13_10)$(13_10)// Break cases$(13_10)$(13_10)if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);$(13_10)if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);$(13_10)$(13_10)// Save Room$(13_10)$(13_10)global.save_data[? "room"] = room_get_name(room);$(13_10)$(13_10)// Save Inventory$(13_10)// DS Maps only save array pointers so we have to convert the array to another ds strucutre.$(13_10)// Convert it to string using ds_write, then save it using secure save.$(13_10)$(13_10)var temp = ds_list_create();$(13_10)temp[| 0]=global.inventory;$(13_10)global.save_data[? "global.inventory"] = ds_list_write(temp);$(13_10)ds_list_destroy(temp); // Free the memory!$(13_10)/*$(13_10)//Save skill objects$(13_10)if instance_exists(o_call_lightning){$(13_10)	with (o_call_lightning){$(13_10)		global.save_data[? "x1"] = x;$(13_10)		global.save_data[? "y1"] = y;$(13_10)	}$(13_10)}$(13_10)$(13_10)if instance_exists(o_call_sword){$(13_10)	with (o_call_sword){$(13_10)		global.save_data[? "x2"] = x;$(13_10)		global.save_data[? "y2"] = y;$(13_10)	}$(13_10)}$(13_10)$(13_10)if instance_exists(o_call_multislash){$(13_10)	with (o_call_multislash){$(13_10)		global.save_data[? "x3"] = x;$(13_10)		global.save_data[? "y3"] = y;$(13_10)	}$(13_10)}$(13_10)*/$(13_10)// Save Player's Position$(13_10)$(13_10)with (o_player){$(13_10)	global.save_data[? "x"] = x;$(13_10)	global.save_data[? "y"] = y;$(13_10)}$(13_10)$(13_10)// Save the player stats and items$(13_10)$(13_10)with (o_player_stats){$(13_10)$(13_10)	global.save_data[? "level"] = level;$(13_10)	global.save_data[? "mana"] = mana;$(13_10)	//global.save_data[? "health"] = stats[? "health"];$(13_10)$(13_10)	//Save all other stats$(13_10)	//global.save_data[? "items"] = list_to_array(items);$(13_10)	//global.save_data[? "item_number"] = list_to_array(item_number);$(13_10)}$(13_10)$(13_10)// Save the data to the file - The above only puts our crap into the map - The below saves the map to a file.$(13_10)$(13_10)ds_map_secure_save(global.save_data, file_name);$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

//We're gonna pass in a file name

var file_name = argument0;

// Break cases

if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);
if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);

// Save Room

global.save_data[? "room"] = room_get_name(room);

// Save Inventory
// DS Maps only save array pointers so we have to convert the array to another ds strucutre.
// Convert it to string using ds_write, then save it using secure save.

var temp = ds_list_create();
temp[| 0]=global.inventory;
global.save_data[? "global.inventory"] = ds_list_write(temp);
ds_list_destroy(temp); // Free the memory!
/*
//Save skill objects
if instance_exists(o_call_lightning){
	with (o_call_lightning){
		global.save_data[? "x1"] = x;
		global.save_data[? "y1"] = y;
	}
}

if instance_exists(o_call_sword){
	with (o_call_sword){
		global.save_data[? "x2"] = x;
		global.save_data[? "y2"] = y;
	}
}

if instance_exists(o_call_multislash){
	with (o_call_multislash){
		global.save_data[? "x3"] = x;
		global.save_data[? "y3"] = y;
	}
}
*/
// Save Player's Position

with (o_player){
	global.save_data[? "x"] = x;
	global.save_data[? "y"] = y;
}

// Save the player stats and items

with (o_player_stats){

	global.save_data[? "level"] = level;
	global.save_data[? "mana"] = mana;
	//global.save_data[? "health"] = stats[? "health"];

	//Save all other stats
	//global.save_data[? "items"] = list_to_array(items);
	//global.save_data[? "item_number"] = list_to_array(item_number);
}

// Save the data to the file - The above only puts our crap into the map - The below saves the map to a file.

ds_map_secure_save(global.save_data, file_name);



/**/