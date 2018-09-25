/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3637DF41
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)var wall_at_right = place_meeting(x + 15, y, o_solid);$(13_10)var ledge_at_right = !position_meeting (bbox_right + 1, bbox_bottom + 1, o_solid);$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)} $(13_10)$(13_10)// If near a wall, move the other direction so we dont get stuck$(13_10)if (wall_at_right || ledge_at_right){$(13_10)	state = snake_move_left_state;$(13_10)	x -=15$(13_10)	$(13_10)}$(13_10)$(13_10)image_xscale = 1;$(13_10)$(13_10)// Move the snake$(13_10)if damaged = false {$(13_10)	x+=spd;$(13_10)} else if x > o_player.x and damaged = true{$(13_10)	image_blend = c_red$(13_10)	x +=spd;$(13_10)$(13_10)} else if x < o_player.x and damaged = true{$(13_10)	image_blend = c_red$(13_10)	x -=spd*2;$(13_10)$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code\n
var wall_at_right = place_meeting(x + 15, y, o_solid);
var ledge_at_right = !position_meeting (bbox_right + 1, bbox_bottom + 1, o_solid);

if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
} 

// If near a wall, move the other direction so we dont get stuck
if (wall_at_right || ledge_at_right){
	state = snake_move_left_state;
	x -=15
	
}

image_xscale = 1;

// Move the snake
if damaged = false {
	x+=spd;
} else if x > o_player.x and damaged = true{
	image_blend = c_red
	x +=spd;

} else if x < o_player.x and damaged = true{
	image_blend = c_red
	x -=spd*2;

}