/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 724CFED7
/// @DnDArgument : "code" "/// @description Execute Code		$(13_10)sprite_index = spr_death;$(13_10)image_speed = 1;$(13_10)image_index = 6;$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)}$(13_10)$(13_10)hspd = 0;$(13_10)$(13_10)move(o_solid);$(13_10)"
/// @description Execute Code		
sprite_index = spr_death;
image_speed = 1;
image_index = 6;

if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
}

hspd = 0;

move(o_solid);