/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3637DF41
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)var wall_at_right = place_meeting(x + 18, y, o_solid);$(13_10)var ledge_at_right = !position_meeting (bbox_right + 2, bbox_bottom + 2, o_solid);$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)} $(13_10)$(13_10)// If near a wall, move the other direction so we dont get stuck$(13_10)if (wall_at_right || ledge_at_right){$(13_10)	state = mushroom_state_move_left;$(13_10)	x -=18$(13_10)}$(13_10)$(13_10)image_xscale = 1;$(13_10)$(13_10)// Move$(13_10)$(13_10)if damaged = false {$(13_10)	x+=spd;$(13_10)} else if x > o_player.x and damaged = true{ // If player is on the left$(13_10)	image_blend = c_red$(13_10)	x +=1;$(13_10)	state = mushroom_state_move_left;$(13_10)} else if x < o_player.x and damaged = true{ // If player is on the right$(13_10)	image_blend = c_red$(13_10)	x -=1*2;$(13_10)	state = mushroom_state_move_right;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code\n
var wall_at_right = place_meeting(x + 18, y, o_solid);
var ledge_at_right = !position_meeting (bbox_right + 2, bbox_bottom + 2, o_solid);

if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
} 

// If near a wall, move the other direction so we dont get stuck
if (wall_at_right || ledge_at_right){
	state = mushroom_state_move_left;
	x -=18
}

image_xscale = 1;

// Move

if damaged = false {
	x+=spd;
} else if x > o_player.x and damaged = true{ // If player is on the left
	image_blend = c_red
	x +=1;
	state = mushroom_state_move_left;
} else if x < o_player.x and damaged = true{ // If player is on the right
	image_blend = c_red
	x -=1*2;
	state = mushroom_state_move_right;
}