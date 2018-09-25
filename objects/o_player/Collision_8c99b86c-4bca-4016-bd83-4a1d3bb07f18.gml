/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E02F56E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if state != death_state {$(13_10)	hurt = other.damage;$(13_10)	script_execute(take_damage);$(13_10)	in_combat = true;$(13_10)	alarm[6] = room_speed * 6;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
if state != death_state {
	hurt = other.damage;
	script_execute(take_damage);
	in_combat = true;
	alarm[6] = room_speed * 6;
}