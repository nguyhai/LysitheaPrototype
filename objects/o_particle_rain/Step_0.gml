/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C68489D
/// @DnDArgument : "code" "x_view = camera_get_view_x(view_camera);$(13_10)y_view = camera_get_view_y(view_camera);$(13_10)w_view = camera_get_view_width(view_camera)$(13_10)$(13_10)// Update Emitter$(13_10)part_emitter_region(part_rain_sys, part_rain_emit, x_view-400, x_view + w_view, y_view-100, y_view-100, ps_shape_line, ps_distr_linear)$(13_10)part_emitter_stream(part_rain_sys, part_rain_emit, part_rain, 5);$(13_10)"
x_view = camera_get_view_x(view_camera);
y_view = camera_get_view_y(view_camera);
w_view = camera_get_view_width(view_camera)

// Update Emitter
part_emitter_region(part_rain_sys, part_rain_emit, x_view-400, x_view + w_view, y_view-100, y_view-100, ps_shape_line, ps_distr_linear)
part_emitter_stream(part_rain_sys, part_rain_emit, part_rain, 5);