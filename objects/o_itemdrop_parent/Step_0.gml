/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E600AE0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)){$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)} $(13_10)/*$(13_10)if (!place_meeting(x,y+2,o_platform2)){$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)} $(13_10)*/$(13_10)if place_meeting(x,y+1,o_solid) and play_sound == 1 {$(13_10)	script_execute(scr_drop_sound);$(13_10)	play_sound = 0;$(13_10)	//instance_create_depth(x+1,y+13,0,o_legendtail);;$(13_10)} $(13_10)/*$(13_10)if place_meeting(x,y+2,o_platform2) and play_sound == 1 {$(13_10)	script_execute(scr_drop_sound);$(13_10)	play_sound = 0;$(13_10)	//instance_create_depth(x+1,y+13,0,o_legendtail);;$(13_10)} $(13_10)*/$(13_10)if pickedup = true {$(13_10)	y -= 7;$(13_10)	image_alpha -= 0.04;$(13_10)}$(13_10)$(13_10)move_platform(o_platform2);$(13_10)move(o_solid);$(13_10)"
/// @description Execute Code

if (!place_meeting(x,y+1,o_solid)){
	vspd +=grav; //vspd = gravity speed
} 
/*
if (!place_meeting(x,y+2,o_platform2)){
	vspd +=grav; //vspd = gravity speed
} 
*/
if place_meeting(x,y+1,o_solid) and play_sound == 1 {
	script_execute(scr_drop_sound);
	play_sound = 0;
	//instance_create_depth(x+1,y+13,0,o_legendtail);;
} 
/*
if place_meeting(x,y+2,o_platform2) and play_sound == 1 {
	script_execute(scr_drop_sound);
	play_sound = 0;
	//instance_create_depth(x+1,y+13,0,o_legendtail);;
} 
*/
if pickedup = true {
	y -= 7;
	image_alpha -= 0.04;
}

move_platform(o_platform2);
move(o_solid);
/**/