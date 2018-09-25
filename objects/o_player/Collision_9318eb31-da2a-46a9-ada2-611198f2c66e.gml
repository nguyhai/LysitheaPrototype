/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09DAA281
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (keyboard_check_released(vk_up)) and state != death_state{$(13_10)/*$(13_10)	if instance_exists(o_particle_rain) {$(13_10)		instance_destroy(o_particle_rain)$(13_10)	}$(13_10)*/$(13_10)	//state = exit_state;$(13_10)	//alarm[3] = 45;$(13_10)	alarm[3] = room_speed;$(13_10)	//room_goto(other.next_room);$(13_10)	// o_fade gets called later and it has a goto_next room inside of it$(13_10)	$(13_10)	if (state != wait_state){$(13_10)		state = wait_state;$(13_10)		var transition = instance_create_depth(0,0,0,o_fade);$(13_10)		transition.next_room = other.next_room;$(13_10)		if other.next_room = rm_town {$(13_10)			town1 = true;$(13_10)			alarm[7] = room_speed *2;$(13_10)$(13_10)		}	$(13_10)	}$(13_10)$(13_10)	//instance_create_layer(camera_get_view_x(view_camera), camera_get_view_y(view_camera), "Fade", o_welcome)$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
if (keyboard_check_released(vk_up)) and state != death_state{
/*
	if instance_exists(o_particle_rain) {
		instance_destroy(o_particle_rain)
	}
*/
	//state = exit_state;
	//alarm[3] = 45;
	alarm[3] = room_speed;
	//room_goto(other.next_room);
	// o_fade gets called later and it has a goto_next room inside of it
	
	if (state != wait_state){
		state = wait_state;
		var transition = instance_create_depth(0,0,0,o_fade);
		transition.next_room = other.next_room;
		if other.next_room = rm_town {
			town1 = true;
			alarm[7] = room_speed *2;

		}	
	}

	//instance_create_layer(camera_get_view_x(view_camera), camera_get_view_y(view_camera), "Fade", o_welcome)
}

/**/