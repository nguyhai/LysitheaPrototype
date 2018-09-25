/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38A9706F
/// @DnDArgument : "code" "/// @description Town Welcome Displayer$(13_10)$(13_10)// Creating the welcome banner in the towns$(13_10)if town1 = true {$(13_10)	instance_create_depth(camera_get_view_x(view_camera)+600,camera_get_view_y(view_camera)+300, -1, o_welcome );$(13_10)}"
/// @description Town Welcome Displayer

// Creating the welcome banner in the towns
if town1 = true {
	instance_create_depth(camera_get_view_x(view_camera)+600,camera_get_view_y(view_camera)+300, -1, o_welcome );
}