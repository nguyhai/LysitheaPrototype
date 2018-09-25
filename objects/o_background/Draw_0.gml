/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 046AA1C7
/// @DnDArgument : "code" "/// @description Parallax Backgrounds$(13_10)$(13_10)// Define Lyaer IDs$(13_10)var layer_id0 = layer_get_id("Background");$(13_10)var layer_id1 = layer_get_id("Background_1");$(13_10)var layer_id2 = layer_get_id("Background_2");$(13_10)$(13_10)$(13_10)// Need to use Lerp to interpolate the movement of our viewport$(13_10)$(13_10)if room = rm_town or room = rm_town2 or room = rm_town {$(13_10)	layer_x(layer_id0, lerp(0, camera_get_view_x(view_camera), 0.50));$(13_10)	layer_x(layer_id1, lerp(0, camera_get_view_x(view_camera), 0.60));$(13_10)	layer_x(layer_id2, lerp(0, camera_get_view_x(view_camera), 0.75));$(13_10)}"
/// @description Parallax Backgrounds

// Define Lyaer IDs
var layer_id0 = layer_get_id("Background");
var layer_id1 = layer_get_id("Background_1");
var layer_id2 = layer_get_id("Background_2");


// Need to use Lerp to interpolate the movement of our viewport

if room = rm_town or room = rm_town2 or room = rm_town {
	layer_x(layer_id0, lerp(0, camera_get_view_x(view_camera), 0.50));
	layer_x(layer_id1, lerp(0, camera_get_view_x(view_camera), 0.60));
	layer_x(layer_id2, lerp(0, camera_get_view_x(view_camera), 0.75));
}