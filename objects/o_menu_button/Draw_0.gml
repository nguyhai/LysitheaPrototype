/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FA94B64
/// @DnDArgument : "code" "var click = mouse_check_button_pressed(mb_left);$(13_10)depth = -2;$(13_10)if (abs(mouse_x - x) < 54) && (abs(mouse_y - y) < 15) {$(13_10)	// On hover, mask the button with different color$(13_10)	draw_sprite_ext(spr_ui_button,1,x,y,1,1,0,c_blue,0.3);$(13_10)	$(13_10)	if click {$(13_10)		// Play click sound and darken button for a bit$(13_10)		draw_sprite_ext(spr_ui_button,1,x,y,1,1,0,1,0.3);$(13_10)		audio_play_sound(snd_click,9,false)$(13_10)		$(13_10)		// Define slots$(13_10)		$(13_10)		if slot = 0 { // Menu$(13_10)		$(13_10)		}$(13_10)		$(13_10)		if slot = 1 { // Quests$(13_10)		$(13_10)		}$(13_10)		$(13_10)		if slot = 2 { // Pet$(13_10)		$(13_10)		}$(13_10)		$(13_10)		if slot = 3 { // Inventory $(13_10)			if showInv == false {$(13_10)	$(13_10)				audio_play_sound(snd_open_screen,9,false);$(13_10)				showInv = true;$(13_10)				instance_create_depth(x,y,-99,o_invitempanel);$(13_10)				//instance_create_depth(camera_get_view_x(view_camera),camera_get_view_x(view_camera),-99,o_equip_wep);$(13_10)			$(13_10)			} else {$(13_10)				showInv = false;$(13_10)				instance_destroy(o_invitempanel);$(13_10)				audio_play_sound(snd_close_screen,9,false);$(13_10)				//instance_destroy(o_equip_wep);$(13_10)				$(13_10)			}$(13_10)		}	$(13_10)			$(13_10)		if slot = 4 { // Character$(13_10)			if showChar == false  and showShop = false {$(13_10)			$(13_10)				showChar = true;$(13_10)				audio_play_sound(snd_open_screen,9,false);$(13_10)			$(13_10)			} else{$(13_10)				showChar = false;$(13_10)				audio_play_sound(snd_close_screen,9,false);$(13_10)			}			$(13_10)		}$(13_10)		$(13_10)		if slot = 5 { // Skill$(13_10)		$(13_10)		}		$(13_10)		$(13_10)$(13_10)	}$(13_10)$(13_10)}"
var click = mouse_check_button_pressed(mb_left);
depth = -2;
if (abs(mouse_x - x) < 54) && (abs(mouse_y - y) < 15) {
	// On hover, mask the button with different color
	draw_sprite_ext(spr_ui_button,1,x,y,1,1,0,c_blue,0.3);
	
	if click {
		// Play click sound and darken button for a bit
		draw_sprite_ext(spr_ui_button,1,x,y,1,1,0,1,0.3);
		audio_play_sound(snd_click,9,false)
		
		// Define slots
		
		if slot = 0 { // Menu
		
		}
		
		if slot = 1 { // Quests
		
		}
		
		if slot = 2 { // Pet
		
		}
		
		if slot = 3 { // Inventory 
			if showInv == false {
	
				audio_play_sound(snd_open_screen,9,false);
				showInv = true;
				instance_create_depth(x,y,-99,o_invitempanel);
				//instance_create_depth(camera_get_view_x(view_camera),camera_get_view_x(view_camera),-99,o_equip_wep);
			
			} else {
				showInv = false;
				instance_destroy(o_invitempanel);
				audio_play_sound(snd_close_screen,9,false);
				//instance_destroy(o_equip_wep);
				
			}
		}	
			
		if slot = 4 { // Character
			if showChar == false  and showShop = false {
			
				showChar = true;
				audio_play_sound(snd_open_screen,9,false);
			
			} else{
				showChar = false;
				audio_play_sound(snd_close_screen,9,false);
			}			
		}
		
		if slot = 5 { // Skill
		
		}		
		

	}

}