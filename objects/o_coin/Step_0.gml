/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26A54165
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)){$(13_10)	$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)$(13_10)} else {$(13_10) hspd = 0 $(13_10)}$(13_10)$(13_10)// If picked up, the coin rises up and disappears$(13_10)if pickedup = true {$(13_10)	y -=10;$(13_10)	image_alpha -= 0.05;$(13_10)}$(13_10)$(13_10)move_platform(o_platform2);$(13_10)move(o_solid);$(13_10)$(13_10)$(13_10)/*$(13_10)//move(o_solid)$(13_10)horizontal_move_bounce(o_solid);$(13_10)move_platform(o_platform2);$(13_10)$(13_10)"
/// @description Execute Code

if (!place_meeting(x,y+1,o_solid)){
	
	vspd +=grav; //vspd = gravity speed

} else {
 hspd = 0 
}

// If picked up, the coin rises up and disappears
if pickedup = true {
	y -=10;
	image_alpha -= 0.05;
}

move_platform(o_platform2);
move(o_solid);


/*
//move(o_solid)
horizontal_move_bounce(o_solid);
move_platform(o_platform2);

/**/