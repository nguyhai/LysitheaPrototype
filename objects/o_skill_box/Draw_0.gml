/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 455F747D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)$(13_10)// Draw the inventory box$(13_10)$(13_10)	draw_set_alpha(.25);$(13_10)	draw_rectangle(camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart, camera_get_view_x(view_camera)+ xstart +32, camera_get_view_y(view_camera)+ ystart +32, false); $(13_10)	draw_set_alpha(1);$(13_10)	$(13_10)	if snapped == 1 {$(13_10)	$(13_10)		draw_sprite(skillsprite, 0, camera_get_view_x(view_camera)+ xstart +16.5, camera_get_view_y(view_camera)+ ystart+16.5);$(13_10)		//draw_sprite(skillsprite, 0, camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart);$(13_10)	} $(13_10)	$(13_10) 	// Draw orange box around used skill$(13_10)	if (attack){$(13_10)		draw_rectangle_color(camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart, camera_get_view_x(view_camera)+ xstart +32, camera_get_view_y(view_camera)+ ystart +32,c_orange,c_orange, c_orange, c_orange,  true );$(13_10)	}$(13_10)	$(13_10)	// Draw Cooldown Timer$(13_10)	$(13_10)	if drawcd== true {$(13_10)		draw_set_color(c_red);$(13_10)		draw_text(camera_get_view_x(view_camera)+ xstart +20, camera_get_view_y(view_camera)+ ystart+17, string(showTime));$(13_10)		draw_set_color(c_white);$(13_10)		$(13_10)	} "
/// @description Execute Code
/// @description Execute Code

// Draw the inventory box

	draw_set_alpha(.25);
	draw_rectangle(camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart, camera_get_view_x(view_camera)+ xstart +32, camera_get_view_y(view_camera)+ ystart +32, false); 
	draw_set_alpha(1);
	
	if snapped == 1 {
	
		draw_sprite(skillsprite, 0, camera_get_view_x(view_camera)+ xstart +16.5, camera_get_view_y(view_camera)+ ystart+16.5);
		//draw_sprite(skillsprite, 0, camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart);
	} 
	
 	// Draw orange box around used skill
	if (attack){
		draw_rectangle_color(camera_get_view_x(view_camera)+ xstart, camera_get_view_y(view_camera)+ ystart, camera_get_view_x(view_camera)+ xstart +32, camera_get_view_y(view_camera)+ ystart +32,c_orange,c_orange, c_orange, c_orange,  true );
	}
	
	// Draw Cooldown Timer
	
	if drawcd== true {
		draw_set_color(c_red);
		draw_text(camera_get_view_x(view_camera)+ xstart +20, camera_get_view_y(view_camera)+ ystart+17, string(showTime));
		draw_set_color(c_white);
		
	}