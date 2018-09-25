/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7DC45083
/// @DnDArgument : "code" "///move(collision_object$(13_10)var collision_object = argument0;$(13_10)$(13_10)// Horizontal Collisions$(13_10)//If place meeting is hspd, you stop. $(13_10)if (place_meeting (x+hspd, y, collision_object)){$(13_10)	while (!place_meeting(x + sign(hspd), y, o_solid)){$(13_10)		x += sign(hspd);$(13_10)		}$(13_10)	hspd= -(hspd/2);$(13_10)}$(13_10)x+=hspd;$(13_10)$(13_10)// Vertical Collisions$(13_10)$(13_10)if (place_meeting (x, y+vspd, collision_object)){$(13_10)	while (!place_meeting(x, y + sign(vspd), collision_object)){$(13_10)		y += sign(vspd);$(13_10)		}$(13_10)	vspd=0;$(13_10)}$(13_10)$(13_10)y+=vspd;"
///move(collision_object
var collision_object = argument0;

// Horizontal Collisions
//If place meeting is hspd, you stop. 
if (place_meeting (x+hspd, y, collision_object)){
	while (!place_meeting(x + sign(hspd), y, o_solid)){
		x += sign(hspd);
		}
	hspd= -(hspd/2);
}
x+=hspd;

// Vertical Collisions

if (place_meeting (x, y+vspd, collision_object)){
	while (!place_meeting(x, y + sign(vspd), collision_object)){
		y += sign(vspd);
		}
	vspd=0;
}

y+=vspd;