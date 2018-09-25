/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 528C7FED
/// @DnDArgument : "code" "// Rain system$(13_10)$(13_10)part_rain_sys = part_system_create();$(13_10)$(13_10)// Rain Particle$(13_10)$(13_10)part_rain = part_type_create();$(13_10)part_type_shape(part_rain, pt_shape_line);$(13_10)part_type_size(part_rain, .2,.3,0,0);$(13_10)part_type_color2(part_rain,c_teal,c_white)$(13_10)part_type_alpha2(part_rain,.5,.1)$(13_10)part_type_gravity(part_rain, 0.1, 290);$(13_10)part_type_speed(part_rain, 0.5,0.5,0,0); $(13_10)part_type_direction(part_rain, 250, 330, 0,1);$(13_10)part_type_orientation(part_rain,290, 290, 0,0,0);$(13_10)part_type_life(part_rain, 20, 250);$(13_10)$(13_10)// Create Emitter$(13_10)$(13_10)part_rain_emit = part_emitter_create(part_rain_sys);$(13_10)//part_emitter_region(part_rain_sys, part_rain_emit, x_view-400, w_view+700, y_view-100, y_view-100, ps_shape_line, ps_distr_linear)$(13_10)//part_emitter_stream(part_rain_sys, part_rain_emit, part_rain, 5);$(13_10)$(13_10)// Advance System - This doesn't work for some reason unless the room creates the item$(13_10)repeat (room_speed * 3) {$(13_10)	part_system_update(part_rain_sys);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
// Rain system

part_rain_sys = part_system_create();

// Rain Particle

part_rain = part_type_create();
part_type_shape(part_rain, pt_shape_line);
part_type_size(part_rain, .2,.3,0,0);
part_type_color2(part_rain,c_teal,c_white)
part_type_alpha2(part_rain,.5,.1)
part_type_gravity(part_rain, 0.1, 290);
part_type_speed(part_rain, 0.5,0.5,0,0); 
part_type_direction(part_rain, 250, 330, 0,1);
part_type_orientation(part_rain,290, 290, 0,0,0);
part_type_life(part_rain, 20, 250);

// Create Emitter

part_rain_emit = part_emitter_create(part_rain_sys);
//part_emitter_region(part_rain_sys, part_rain_emit, x_view-400, w_view+700, y_view-100, y_view-100, ps_shape_line, ps_distr_linear)
//part_emitter_stream(part_rain_sys, part_rain_emit, part_rain, 5);

// Advance System - This doesn't work for some reason unless the room creates the item
repeat (room_speed * 3) {
	part_system_update(part_rain_sys);
}