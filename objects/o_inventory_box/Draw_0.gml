/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 455F747D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)$(13_10)// Draw the inventory box$(13_10)$(13_10)if (global.game_state = paused){$(13_10)	draw_set_alpha(.25);$(13_10)	draw_roundrect(camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart, camera_get_view_x(view_camera)+ xstart +32, camera_get_view_y(view_camera)+ ystart +32, false); $(13_10)	draw_set_alpha(1);$(13_10)	if (item != -1){$(13_10)		draw_sprite(object_get_sprite(item), 0, camera_get_view_x(view_camera)+ xstart +16, camera_get_view_y(view_camera)+ ystart+16);$(13_10)	}$(13_10)}"
/// @description Execute Code
/// @description Execute Code

// Draw the inventory box

if (global.game_state = paused){
	draw_set_alpha(.25);
	draw_roundrect(camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart, camera_get_view_x(view_camera)+ xstart +32, camera_get_view_y(view_camera)+ ystart +32, false); 
	draw_set_alpha(1);
	if (item != -1){
		draw_sprite(object_get_sprite(item), 0, camera_get_view_x(view_camera)+ xstart +16, camera_get_view_y(view_camera)+ ystart+16);
	}
}