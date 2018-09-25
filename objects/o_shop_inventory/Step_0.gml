/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 37D4BE97
/// @DnDArgument : "code" "// We need buyback items to expire every 10 mins unless the sell button is clicked$(13_10)// Clicking sell button resets the duration. room_speed*60 =  1 min. (room_speed*60) * 10 = 10 mins.$(13_10)$(13_10)// Check to see if there is anything in the buyback. If yes, start the timer. $(13_10)$(13_10)if timeron = true {$(13_10)$(13_10)	var delete = ((room_speed*60) * 10);$(13_10)	var reset = delete + 5;$(13_10)	$(13_10)	timer += 1;$(13_10)	$(13_10)	//if timer = ((room_speed*60) * 10) {$(13_10)	if timer = delete {$(13_10)		script_execute(scr_buyback_delete_all);$(13_10)$(13_10)	}$(13_10)	$(13_10)	if timer = reset {$(13_10)$(13_10)		timer =0;;$(13_10)		timeron = false;$(13_10)	}	$(13_10)$(13_10)}"
// We need buyback items to expire every 10 mins unless the sell button is clicked
// Clicking sell button resets the duration. room_speed*60 =  1 min. (room_speed*60) * 10 = 10 mins.

// Check to see if there is anything in the buyback. If yes, start the timer. 

if timeron = true {

	var delete = ((room_speed*60) * 10);
	var reset = delete + 5;
	
	timer += 1;
	
	//if timer = ((room_speed*60) * 10) {
	if timer = delete {
		script_execute(scr_buyback_delete_all);

	}
	
	if timer = reset {

		timer =0;;
		timeron = false;
	}	

}