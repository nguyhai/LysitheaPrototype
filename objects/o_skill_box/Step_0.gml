/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71E848A0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if !place_meeting(x,y,o_skill_controller){$(13_10)	snapped = -1;$(13_10)	//other.visible = true;$(13_10)	o_skill_controller.depth = -9999;$(13_10)}$(13_10)$(13_10)// Timer Code$(13_10)if myTime > 0{$(13_10)	myTime = myTime-delta_time/1000000;$(13_10)} else {$(13_10)	myTime = 0$(13_10)}$(13_10)showTime = ceil(myTime);$(13_10)if showTime == 0 {$(13_10)	drawcd = false;$(13_10)}"
/// @description Execute Code

if !place_meeting(x,y,o_skill_controller){
	snapped = -1;
	//other.visible = true;
	o_skill_controller.depth = -9999;
}

// Timer Code
if myTime > 0{
	myTime = myTime-delta_time/1000000;
} else {
	myTime = 0
}
showTime = ceil(myTime);
if showTime == 0 {
	drawcd = false;
}