/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 520EEDF1
/// @DnDArgument : "code" "/// @description Take damage event - Flash if you get hurt$(13_10)$(13_10)if image_alpha = 1.0 {$(13_10)	image_alpha = 0.1;$(13_10)} else {$(13_10)	image_alpha = 1.0;$(13_10)}$(13_10)$(13_10)if (recently_hit = true){$(13_10)	alarm[1] = 3;$(13_10)} else {$(13_10)	image_alpha = 1.0;$(13_10)}"
/// @description Take damage event - Flash if you get hurt

if image_alpha = 1.0 {
	image_alpha = 0.1;
} else {
	image_alpha = 1.0;
}

if (recently_hit = true){
	alarm[1] = 3;
} else {
	image_alpha = 1.0;
}