/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7DC45083
/// @DnDArgument : "code" "///move(collision_object$(13_10)var collision_object = argument0;$(13_10)$(13_10)// Vertical Collisions$(13_10)if (place_meeting (x, y+vspd, collision_object)){$(13_10)	while (!place_meeting(x, y + sign(vspd), collision_object)){$(13_10)		y += sign(vspd);$(13_10)		}$(13_10)	vspd=0;$(13_10)}$(13_10)y+=vspd;"
///move(collision_object
var collision_object = argument0;

// Vertical Collisions
if (place_meeting (x, y+vspd, collision_object)){
	while (!place_meeting(x, y + sign(vspd), collision_object)){
		y += sign(vspd);
		}
	vspd=0;
}
y+=vspd;