/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BF6FCCA
/// @DnDArgument : "code" "// Create rain in these rooms$(13_10)$(13_10)if room = rm_town2 or room = rm_town3 {$(13_10)	if !instance_exists(o_particle_rain) {$(13_10)		instance_create_depth(x,y,0,o_particle_rain);$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)// Destroy rain if not in these rooms$(13_10)/*$(13_10)if room != rm_town2 {$(13_10)	if instance_exists(o_particle_rain) {$(13_10)		instance_destroy(o_particle_rain);$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)/*$(13_10)if room = rm_town {$(13_10)	if instance_exists(o_particle_rain) {$(13_10)		instance_destroy(o_particle_rain);$(13_10)	}$(13_10)}"
// Create rain in these rooms

if room = rm_town2 or room = rm_town3 {
	if !instance_exists(o_particle_rain) {
		instance_create_depth(x,y,0,o_particle_rain);
	}

}

// Destroy rain if not in these rooms
/*
if room != rm_town2 {
	if instance_exists(o_particle_rain) {
		instance_destroy(o_particle_rain);
	}
}


/*
if room = rm_town {
	if instance_exists(o_particle_rain) {
		instance_destroy(o_particle_rain);
	}
}/**/