/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B4ED9F4
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)//Splash the lava$(13_10)$(13_10)if (vspd > 0) {$(13_10)	with (other) {$(13_10)		speed = random_range (4, 10);$(13_10)		direction = random_range (45, 135);$(13_10)	}$(13_10)}"

{
	/// @description Execute Code\n

//Splash the lava

if (vspd > 0) {
	with (other) {
		speed = random_range (4, 10);
		direction = random_range (45, 135);
	}
}
}

