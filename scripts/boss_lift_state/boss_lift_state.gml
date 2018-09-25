/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DAF64E8
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)image_index = 1;$(13_10)$(13_10)if (vspd >= -16) vspd -= .5;$(13_10)$(13_10)move(o_solid);$(13_10)$(13_10)if (place_meeting(x, y-32, o_solid)){$(13_10)$(13_10)	vspd = 0;$(13_10)	state = boss_chase_state;$(13_10)	$(13_10)}"

{
	/// @description Execute Code\n

image_index = 1;

if (vspd >= -16) vspd -= .5;

move(o_solid);

if (place_meeting(x, y-32, o_solid)){

	vspd = 0;
	state = boss_chase_state;
	
}
}

