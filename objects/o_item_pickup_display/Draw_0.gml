/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24BAC300
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//var listcheck; //= script_execute(scr_check_display_list);$(13_10)script_execute(scr_display_list_sort);$(13_10)$(13_10)if listcheck = 1 {// This means that there is an item in our display list$(13_10)	$(13_10)	//audio_play_sound(snd_alert,9,false);$(13_10)	// Sort list first$(13_10)	$(13_10)$(13_10)	// Draw item name for first slot$(13_10)	if timer < 90{$(13_10)	$(13_10)		startdraw = true;$(13_10)		$(13_10)		if global.showPickup[1,2] > 0 {$(13_10)		$(13_10)			draw_set_font(global.fnt_cartoon3);$(13_10)			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+15,camera_get_view_y(view_camera)+130,"+ ", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+35,camera_get_view_y(view_camera)+140,string(global.showPickup[1,0]) +" x"+ string(global.showPickup[1,2]), 100, 3000, 0.20, 0.20, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)			//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);$(13_10)			draw_set_font(fnt_normal);$(13_10)		$(13_10)		}$(13_10)		$(13_10)		if global.showPickup[1,2] < 1 {	$(13_10)		$(13_10)			draw_set_font(global.fnt_cartoon3);$(13_10)			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+15,camera_get_view_y(view_camera)+130, "+ ", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+35,camera_get_view_y(view_camera)+140,string(global.showPickup[1,0]), 100, 3000, 0.20, 0.20, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)			//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);$(13_10)			draw_set_font(fnt_normal);$(13_10)		$(13_10)		}$(13_10)		$(13_10)		if global.showPickup[1,2] < 1 and global.showPickup[1,1] > 0{	$(13_10)		$(13_10)			draw_set_font(global.fnt_cartoon3);$(13_10)			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+15,camera_get_view_y(view_camera)+130, "+", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+35,camera_get_view_y(view_camera)+140,string(global.showPickup[1,0]) +" +"+ string(global.showPickup[1,1]), 100, 3000, 0.20, 0.20, 0, c_white, c_white, c_white, c_white, image_alpha);$(13_10)			//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);$(13_10)			draw_set_font(fnt_normal);$(13_10)		$(13_10)		}$(13_10)$(13_10)$(13_10)		$(13_10)	}$(13_10)	// Delete item in first slot after 1.5 seconds$(13_10)	if timer  >= 90 and timer  < 92{	$(13_10)		global.showPickup[0]	= -1; // Slot$(13_10)		global.showPickup[1,0]  = -1; // Name$(13_10)		global.showPickup[1,1]  = -1; // Upgrade Level$(13_10)		global.showPickup[1,2]  = -1; // Stackcount$(13_10)		 $(13_10)	}$(13_10)$(13_10)	if timer  > 95 and timer  < 97 {$(13_10)		image_alpha = 0;$(13_10)		startdraw = false;$(13_10)		timerstart = false	$(13_10)$(13_10)		$(13_10)	}$(13_10)	$(13_10)	$(13_10)$(13_10)} else {$(13_10)	// Turn off timer if nothing found in our list$(13_10)	image_alpha = 0;$(13_10)	timerstart = false;$(13_10)	timerstart = false		$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)/*$(13_10)$(13_10)$(13_10)if (rarity == 1)rarity = c_white;$(13_10)if (rarity == 5)rarity = c_lime;$(13_10)if (rarity == 10)rarity = make_color_rgb(255,140,0);$(13_10)$(13_10)// This just draws the text box on top of the player whenever an item is picked up$(13_10)// Just shows the name of the item picked up$(13_10)$(13_10)if drawstats == true {$(13_10)$(13_10)	draw_set_alpha(text_alpha);$(13_10)	draw_set_font(fnt_normal);$(13_10)	if upgradelevel > 0{$(13_10)		draw_text_color(o_player.x-69, o_player.y-144, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);$(13_10)		draw_text_color(o_player.x-70, o_player.y-145, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);$(13_10)	} else{$(13_10)		draw_text_color(o_player.x-69, o_player.y-144, string(name),c_black,c_black,c_black,c_black,1);$(13_10)		draw_text_color(o_player.x-70, o_player.y-145, string(name),rarity,rarity,rarity,rarity,1);$(13_10)	}	$(13_10)	$(13_10)	if stackcount > 0{$(13_10)		draw_text_color(o_player.x-70, o_player.y-145, string(name)+" x "+string(stackcount),rarity,rarity,rarity,rarity,1)$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)if itemfull == true {$(13_10)$(13_10)	draw_set_alpha(text_alpha);$(13_10)	draw_text_color(o_player.x-84, o_player.y-144, "Inventory is full!",c_black,c_black,c_black,c_black,1);$(13_10)	draw_text_color(o_player.x-85, o_player.y-145, "Inventory is full!",c_maroon,c_maroon,c_maroon,c_maroon,1);$(13_10)$(13_10)}"
/// @description Execute Code

//var listcheck; //= script_execute(scr_check_display_list);
script_execute(scr_display_list_sort);

if listcheck = 1 {// This means that there is an item in our display list
	
	//audio_play_sound(snd_alert,9,false);
	// Sort list first
	

	// Draw item name for first slot
	if timer < 90{
	
		startdraw = true;
		
		if global.showPickup[1,2] > 0 {
		
			draw_set_font(global.fnt_cartoon3);
			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+15,camera_get_view_y(view_camera)+130,"+ ", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);
			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+35,camera_get_view_y(view_camera)+140,string(global.showPickup[1,0]) +" x"+ string(global.showPickup[1,2]), 100, 3000, 0.20, 0.20, 0, c_white, c_white, c_white, c_white, image_alpha);
			//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);
			draw_set_font(fnt_normal);
		
		}
		
		if global.showPickup[1,2] < 1 {	
		
			draw_set_font(global.fnt_cartoon3);
			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+15,camera_get_view_y(view_camera)+130, "+ ", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);
			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+35,camera_get_view_y(view_camera)+140,string(global.showPickup[1,0]), 100, 3000, 0.20, 0.20, 0, c_white, c_white, c_white, c_white, image_alpha);
			//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);
			draw_set_font(fnt_normal);
		
		}
		
		if global.showPickup[1,2] < 1 and global.showPickup[1,1] > 0{	
		
			draw_set_font(global.fnt_cartoon3);
			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+15,camera_get_view_y(view_camera)+130, "+", 100, 3000, 0.30, 0.30, 0, c_white, c_white, c_white, c_white, image_alpha);
			draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+35,camera_get_view_y(view_camera)+140,string(global.showPickup[1,0]) +" +"+ string(global.showPickup[1,1]), 100, 3000, 0.20, 0.20, 0, c_white, c_white, c_white, c_white, image_alpha);
			//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+60,camera_get_view_y(view_camera)+130, o_player_stats.gold, 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, text_alpha);
			draw_set_font(fnt_normal);
		
		}


		
	}
	// Delete item in first slot after 1.5 seconds
	if timer  >= 90 and timer  < 92{	
		global.showPickup[0]	= -1; // Slot
		global.showPickup[1,0]  = -1; // Name
		global.showPickup[1,1]  = -1; // Upgrade Level
		global.showPickup[1,2]  = -1; // Stackcount
		 
	}

	if timer  > 95 and timer  < 97 {
		image_alpha = 0;
		startdraw = false;
		timerstart = false	

		
	}
	
	

} else {
	// Turn off timer if nothing found in our list
	image_alpha = 0;
	timerstart = false;
	timerstart = false		
}






/*


if (rarity == 1)rarity = c_white;
if (rarity == 5)rarity = c_lime;
if (rarity == 10)rarity = make_color_rgb(255,140,0);

// This just draws the text box on top of the player whenever an item is picked up
// Just shows the name of the item picked up

if drawstats == true {

	draw_set_alpha(text_alpha);
	draw_set_font(fnt_normal);
	if upgradelevel > 0{
		draw_text_color(o_player.x-69, o_player.y-144, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);
		draw_text_color(o_player.x-70, o_player.y-145, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);
	} else{
		draw_text_color(o_player.x-69, o_player.y-144, string(name),c_black,c_black,c_black,c_black,1);
		draw_text_color(o_player.x-70, o_player.y-145, string(name),rarity,rarity,rarity,rarity,1);
	}	
	
	if stackcount > 0{
		draw_text_color(o_player.x-70, o_player.y-145, string(name)+" x "+string(stackcount),rarity,rarity,rarity,rarity,1)
	}
	
	
	
}

if itemfull == true {

	draw_set_alpha(text_alpha);
	draw_text_color(o_player.x-84, o_player.y-144, "Inventory is full!",c_black,c_black,c_black,c_black,1);
	draw_text_color(o_player.x-85, o_player.y-145, "Inventory is full!",c_maroon,c_maroon,c_maroon,c_maroon,1);

}/**/