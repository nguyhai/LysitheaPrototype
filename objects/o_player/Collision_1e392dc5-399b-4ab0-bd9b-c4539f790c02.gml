/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49F02CF6
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// Other refers to instance you are colliding with$(13_10)// This checks to see if we are above the enemy and falling$(13_10)if other.flashing = false and state != death_state {$(13_10)	hurt = other.damage;$(13_10)	script_execute(take_damage);$(13_10)	in_combat = true;$(13_10)	alarm[6] = room_speed * 6;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code\n

// Other refers to instance you are colliding with
// This checks to see if we are above the enemy and falling
if other.flashing = false and state != death_state {
	hurt = other.damage;
	script_execute(take_damage);
	in_combat = true;
	alarm[6] = room_speed * 6;
}