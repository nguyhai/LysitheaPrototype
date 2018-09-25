/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E0EB19
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//draw_text(camera_get_view_x(o_view)+ 345, camera_get_view_y(o_view)+90, "Game Paused");$(13_10)/*$(13_10)$(13_10)if (!pause){$(13_10)$(13_10)	//!!!For saving, ALL objects that need to go into the save MUST be enabled!!!$(13_10)	$(13_10)	//instance_deactivate_all(true);$(13_10)	instance_activate_object(Background);$(13_10)	instance_activate_object(o_player_stats);$(13_10)	instance_activate_object(o_player);$(13_10)	instance_activate_object(o_saveloadstats1);$(13_10)	instance_activate_object(o_saveloadstats2);$(13_10)	instance_activate_object(o_data);$(13_10)	instance_activate_object(o_solid);$(13_10)	instance_activate_object(o_mouse_pointer);$(13_10)	$(13_10)	o_player.state = wait_state;$(13_10)	o_player.alarm[3] = 1;$(13_10)	instance_activate_object(o_door);$(13_10)	$(13_10)	// Skill x and y not saving because it deactivates them, so they dont have the $(13_10)	// x and y coordinate$(13_10)	$(13_10)	instance_activate_object(o_call_lightning);$(13_10)	instance_activate_object(o_call_sword);$(13_10)	instance_activate_object(o_call_multislash);$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	// Probably should activate enemyparent during pause$(13_10)	// However, put them in a wate state$(13_10)	// Which will need to be changed to a move state or$(13_10)	// Use a CASE statement for each enemy to re-activate their movement$(13_10)$(13_10)	audio_play_sound(snd_pause, 8, false);$(13_10)	pause = 1;$(13_10)	$(13_10)	// Create the menu buttons$(13_10)	//instance_create_layer(camera_get_view_x(o_view.x), camera_get_view_y(o_view.y),"Fade", o_loadbtn)$(13_10) $(13_10)	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+130,"Fade", o_loadbtn)$(13_10)	instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+180,"Fade", o_savebtn)$(13_10)	instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+230,"Fade", o_exitbtn)$(13_10)	instance_create_layer(camera_get_view_x(o_view)+ 370, camera_get_view_y(o_view)+390,"Fade", o_menu)$(13_10)	$(13_10)	instance_activate_object(o_menu);$(13_10)	//instance_activate_object(o_loadbtn);$(13_10)	instance_activate_object(o_savebtn);$(13_10)	instance_activate_object(o_exitbtn);$(13_10)	$(13_10)/*	Need code to that utilizes keyboard to select menu options - May need to use a list$(13_10)$(13_10)var right = keyboard_check(vk_right);$(13_10)var left = keyboard_check(vk_left);$(13_10)var up = keyboard_check(vk_up);$(13_10)var down = keyboard_check(vk_down);	$(13_10)$(13_10)if (down) {$(13_10)	//Selected flag? If selected flag = 1, object is highlighted? $(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)} else{$(13_10)	instance_activate_all();$(13_10)	pause = 0;$(13_10)	o_player.state = move_state;$(13_10)	instance_destroy(o_menu);$(13_10)	instance_destroy(o_loadbtn);$(13_10)	instance_destroy(o_savebtn);$(13_10)	instance_destroy(o_exitbtn);$(13_10)$(13_10)}$(13_10)	$(13_10)$(13_10)"
/// @description Execute Code
//draw_text(camera_get_view_x(o_view)+ 345, camera_get_view_y(o_view)+90, "Game Paused");
/*

if (!pause){

	//!!!For saving, ALL objects that need to go into the save MUST be enabled!!!
	
	//instance_deactivate_all(true);
	instance_activate_object(Background);
	instance_activate_object(o_player_stats);
	instance_activate_object(o_player);
	instance_activate_object(o_saveloadstats1);
	instance_activate_object(o_saveloadstats2);
	instance_activate_object(o_data);
	instance_activate_object(o_solid);
	instance_activate_object(o_mouse_pointer);
	
	o_player.state = wait_state;
	o_player.alarm[3] = 1;
	instance_activate_object(o_door);
	
	// Skill x and y not saving because it deactivates them, so they dont have the 
	// x and y coordinate
	
	instance_activate_object(o_call_lightning);
	instance_activate_object(o_call_sword);
	instance_activate_object(o_call_multislash);
	
	
	
	
	// Probably should activate enemyparent during pause
	// However, put them in a wate state
	// Which will need to be changed to a move state or
	// Use a CASE statement for each enemy to re-activate their movement

	audio_play_sound(snd_pause, 8, false);
	pause = 1;
	
	// Create the menu buttons
	//instance_create_layer(camera_get_view_x(o_view.x), camera_get_view_y(o_view.y),"Fade", o_loadbtn)
 
	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+130,"Fade", o_loadbtn)
	instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+180,"Fade", o_savebtn)
	instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+230,"Fade", o_exitbtn)
	instance_create_layer(camera_get_view_x(o_view)+ 370, camera_get_view_y(o_view)+390,"Fade", o_menu)
	
	instance_activate_object(o_menu);
	//instance_activate_object(o_loadbtn);
	instance_activate_object(o_savebtn);
	instance_activate_object(o_exitbtn);
	
/*	Need code to that utilizes keyboard to select menu options - May need to use a list

var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);	

if (down) {
	//Selected flag? If selected flag = 1, object is highlighted? 
	
}



} else{
	instance_activate_all();
	pause = 0;
	o_player.state = move_state;
	instance_destroy(o_menu);
	instance_destroy(o_loadbtn);
	instance_destroy(o_savebtn);
	instance_destroy(o_exitbtn);

}
	

/**/