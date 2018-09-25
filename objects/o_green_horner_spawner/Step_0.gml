/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C276D57
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (instance_exists (o_player)) {$(13_10)$(13_10)	// If snake comes into contact with the spawner, dont spawn an enemy for 30 seconds$(13_10)	if place_meeting(x,y,o_hornet) {$(13_10)		detect_time=0;$(13_10)	}$(13_10)	$(13_10)	// Detection time builds up $(13_10)	detect_time+=1;$(13_10)	$(13_10)	if detect_time >= max_detect_time{$(13_10)		instance_create_depth(x,y,0,o_hornet);$(13_10)		detect_time = 0;$(13_10)	}$(13_10)	$(13_10)	$(13_10)}"
/// @description Execute Code
if (instance_exists (o_player)) {

	// If snake comes into contact with the spawner, dont spawn an enemy for 30 seconds
	if place_meeting(x,y,o_hornet) {
		detect_time=0;
	}
	
	// Detection time builds up 
	detect_time+=1;
	
	if detect_time >= max_detect_time{
		instance_create_depth(x,y,0,o_hornet);
		detect_time = 0;
	}
	
	
}