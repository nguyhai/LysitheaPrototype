/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06CB6382
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (pause){$(13_10)	//instance_deactivate_all(true);$(13_10)$(13_10)	$(13_10)	// Create the menu buttons$(13_10)	//instance_create_layer(camera_get_view_x(o_view.x), camera_get_view_y(o_view.y),"Fade", o_loadbtn)$(13_10)	$(13_10)	$(13_10)	$(13_10)	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+130,"Fade", o_loadbtn)$(13_10)	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+180,"Fade", o_savebtn)$(13_10)	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+230,"Fade", o_exitbtn)$(13_10)	//instance_create_layer(o_view.x+ 320, o_view.y+230,"Fade", o_exitbtn)$(13_10)	$(13_10)	//instance_create_layer(0,-15,"Fade", o_loadbtn)$(13_10)	//instance_create_layer(0,-15,"Fade", o_savebtn)$(13_10)	//instance_create_layer(0,-15,"Fade", o_exitbtn)$(13_10)	$(13_10)	//instance_activate_object(o_loadbtn);$(13_10)	//instance_activate_object(o_savebtn);$(13_10)	//instance_activate_object(o_exitbtn);$(13_10)	$(13_10)} else{$(13_10)$(13_10)$(13_10)	$(13_10)	// Destroy menu buttons$(13_10)	//instance_destroy(o_loadbtn);$(13_10)	instance_destroy(o_savebtn);$(13_10)	instance_destroy(o_exitbtn);$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code

if (pause){
	//instance_deactivate_all(true);

	
	// Create the menu buttons
	//instance_create_layer(camera_get_view_x(o_view.x), camera_get_view_y(o_view.y),"Fade", o_loadbtn)
	
	
	
	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+130,"Fade", o_loadbtn)
	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+180,"Fade", o_savebtn)
	//instance_create_layer(camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+230,"Fade", o_exitbtn)
	//instance_create_layer(o_view.x+ 320, o_view.y+230,"Fade", o_exitbtn)
	
	//instance_create_layer(0,-15,"Fade", o_loadbtn)
	//instance_create_layer(0,-15,"Fade", o_savebtn)
	//instance_create_layer(0,-15,"Fade", o_exitbtn)
	
	//instance_activate_object(o_loadbtn);
	//instance_activate_object(o_savebtn);
	//instance_activate_object(o_exitbtn);
	
} else{


	
	// Destroy menu buttons
	//instance_destroy(o_loadbtn);
	instance_destroy(o_savebtn);
	instance_destroy(o_exitbtn);
	
	
}