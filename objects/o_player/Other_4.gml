/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C5CA96E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//Move to the start position$(13_10)$(13_10)if (instance_exists(o_start_position)){$(13_10)	with (o_start_position){$(13_10)		if (last_room == other.last_room){$(13_10)			other.x = x;$(13_10)			other.y = y;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)// Update the last room$(13_10)$(13_10)last_room = room;$(13_10)$(13_10)// Set back to correct state$(13_10)$(13_10)if (state == wait_state){$(13_10)	state = move_state;$(13_10)}"
/// @description Execute Code

//Move to the start position

if (instance_exists(o_start_position)){
	with (o_start_position){
		if (last_room == other.last_room){
			other.x = x;
			other.y = y;
		}
	}
}

// Update the last room

last_room = room;

// Set back to correct state

if (state == wait_state){
	state = move_state;
}