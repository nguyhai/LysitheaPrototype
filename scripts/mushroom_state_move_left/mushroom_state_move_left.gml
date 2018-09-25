/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3637DF41
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)var wall_at_left = place_meeting (x - 18, y, o_solid);$(13_10)var ledge_at_left = !position_meeting (bbox_left - 2, bbox_bottom + 2, o_solid);$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)} else {$(13_10)	vspd = 0; // If you are touching the ground, vspd = 0$(13_10)}$(13_10)$(13_10)// If near a wall, move the other direction so we dont get stuc$(13_10)if (wall_at_left || ledge_at_left){$(13_10)	state = mushroom_state_move_right;$(13_10)	x +=18$(13_10)}$(13_10)$(13_10)image_xscale = -1;$(13_10)$(13_10)// Move$(13_10)$(13_10)if damaged = false {$(13_10)	x-=spd;$(13_10)} else if x > o_player.x and damaged = true{ // Player is on your left$(13_10)	image_blend = c_red;$(13_10)	x +=1*2;$(13_10)	state = mushroom_state_move_left;$(13_10)} else if x < o_player.x and damaged = true{ // Player is on your right$(13_10)	image_blend = c_red;$(13_10)	x -=1;$(13_10)	state = mushroom_state_move_right;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code\n
var wall_at_left = place_meeting (x - 18, y, o_solid);
var ledge_at_left = !position_meeting (bbox_left - 2, bbox_bottom + 2, o_solid);

if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
} else {
	vspd = 0; // If you are touching the ground, vspd = 0
}

// If near a wall, move the other direction so we dont get stuc
if (wall_at_left || ledge_at_left){
	state = mushroom_state_move_right;
	x +=18
}

image_xscale = -1;

// Move

if damaged = false {
	x-=spd;
} else if x > o_player.x and damaged = true{ // Player is on your left
	image_blend = c_red;
	x +=1*2;
	state = mushroom_state_move_left;
} else if x < o_player.x and damaged = true{ // Player is on your right
	image_blend = c_red;
	x -=1;
	state = mushroom_state_move_right;
}