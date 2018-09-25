/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55C7AA3A
/// @DnDArgument : "code" "/// @description For the Pause script$(13_10)// For the pause, alarm activates so I cant move$(13_10)$(13_10)// Testing particle environment destroyer$(13_10)if instance_exists(o_particle_rain) {$(13_10)	instance_destroy(o_particle_rain);$(13_10)}$(13_10)"
/// @description For the Pause script
// For the pause, alarm activates so I cant move

// Testing particle environment destroyer
if instance_exists(o_particle_rain) {
	instance_destroy(o_particle_rain);
}