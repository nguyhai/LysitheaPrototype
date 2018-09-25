/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12140F15
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Use this state to prevent movement while transition is happening$(13_10)$(13_10)//image_index = 0;$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)	sprite_index = spr_jump;$(13_10)	image_speed = 0;$(13_10)	image_index = (vspd > 0);$(13_10)}$(13_10)$(13_10)$(13_10)if place_meeting(x,y+1,o_solid) {$(13_10)	sprite_index = spr_idle;$(13_10)	image_speed = 1;$(13_10)	spd = 0;$(13_10)	hspd = 0;$(13_10)}$(13_10)$(13_10)move(o_solid);"
/// @description Execute Code
// Use this state to prevent movement while transition is happening

//image_index = 0;
if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
	sprite_index = spr_jump;
	image_speed = 0;
	image_index = (vspd > 0);
}


if place_meeting(x,y+1,o_solid) {
	sprite_index = spr_idle;
	image_speed = 1;
	spd = 0;
	hspd = 0;
}

move(o_solid);