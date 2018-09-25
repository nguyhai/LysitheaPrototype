/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 634AC38C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var item = global.shop[slot];// What this does is check that slot, and look at the sprite index$(13_10)var click = mouse_check_button_pressed(mb_left);$(13_10)var rightclick = mouse_check_button_pressed(mb_right);$(13_10)var shift = keyboard_check(vk_shift);$(13_10)$(13_10)depth = -1;$(13_10)$(13_10)if showShop == true {$(13_10)$(13_10)	if show_tooltip = true { // We use this to delay the tooltip background from vanishing$(13_10)	$(13_10)		tooltipx = camera_get_view_x(view_camera)+ 640;$(13_10)		tooltipy = camera_get_view_y(view_camera)+ 360;$(13_10)		$(13_10)		draw_sprite(spr_tooltip_background,0,tooltipx,tooltipy+3);$(13_10)		draw_sprite(spr_purchase_sign,0,tooltipx,tooltipy-285);$(13_10)		draw_sprite(spr_tooltip_shop,0,tooltipx+4,tooltipy-25);$(13_10)		draw_sprite(spr_tooltip_shop_compare,0,tooltipx+3,tooltipy+235);$(13_10)		$(13_10)		// Draw purchase sign text$(13_10)		draw_set_font(global.fnt_cartoon3);$(13_10)		draw_text_ext_transformed_colour(tooltipx-148,tooltipy-295,"Right Click to Purchase!", 100, 3000, 0.21, 0.25, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);$(13_10)		draw_text_ext_transformed_colour(tooltipx-148,tooltipy-295,"Right Click to Purchase!", 100, 3000, 0.21, 0.25, 0, c_red, c_red, c_red, c_red, 0.5);$(13_10)		draw_set_font(fnt_normal);	$(13_10)		$(13_10)	}$(13_10)	$(13_10)	// Sell and close button activations$(13_10)	$(13_10)	// Test Hover Effect$(13_10)	$(13_10)	if slot = 16 { // Sell Button$(13_10)	$(13_10)		draw_text_color(x-47,y-10,"SELL MODE",c_yellow,c_yellow,c_yellow,c_yellow,1)$(13_10)		if (abs(mouse_x - x) < 55) && (abs(mouse_y - y) < 22) {$(13_10)			// Turn Red on Hover$(13_10)			draw_sprite(spr_sell_and_close_red,0,x,y);$(13_10)			if click {$(13_10)$(13_10)				// Set timer for buyback expiration$(13_10)				o_shop_inventory.timeron = true;$(13_10)				o_shop_inventory.timer = 0;$(13_10)				audio_play_sound(snd_shop_tick,9,false);$(13_10)				if o_mouse_pointer.sellmode=false {$(13_10)					o_mouse_pointer.sellmode=true;$(13_10)				} else {$(13_10)					o_mouse_pointer.sellmode=false;$(13_10)				}$(13_10)				$(13_10)$(13_10)				$(13_10)			}		$(13_10)		}	$(13_10)	}$(13_10)$(13_10)	if slot = 17 { // Close Button$(13_10)	$(13_10)		draw_text_color(x-27,y-10,"CLOSE",c_yellow,c_yellow,c_yellow,c_yellow,1)$(13_10)		if (abs(mouse_x - x) < 55) && (abs(mouse_y - y) < 22) {$(13_10)			// Turn Red on Hover$(13_10)			draw_sprite(spr_sell_and_close_red,0,x,y);$(13_10)			if click {$(13_10)				audio_play_sound(snd_shop_tick,9,false);$(13_10)				showShop = false; $(13_10)				showInv = false; $(13_10)				instance_destroy(o_invitempanel);$(13_10)				o_mouse_pointer.sellmode=false$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if slot = 18 { // Gold button - draw current gold$(13_10)		draw_text_color(x-38,y-10,string(string_thousands(o_player_stats.gold)),c_yellow,c_yellow,c_yellow,c_yellow,1)$(13_10)	}$(13_10)	$(13_10)	if slot = 19 { // Shop Button$(13_10)	$(13_10)	if (abs(mouse_x - x) < 52) && (abs(mouse_y - y) < 15) {$(13_10)		if click {$(13_10)			o_shop_inventory.timeron = true;$(13_10)			o_shop_inventory.timer = 0;$(13_10)			audio_play_sound(snd_shop_tick,9,false);$(13_10)			if o_shop_inventory.shop == false {$(13_10)				o_shop_inventory.shop = true;$(13_10)				o_shop_inventory.buyback = false;$(13_10)			}		$(13_10)$(13_10)		}$(13_10)		}	$(13_10)			$(13_10)		if o_shop_inventory.shop = true {$(13_10)			draw_set_font(global.fnt_cartoon4);$(13_10)			draw_text_ext_transformed_colour(x-25,y-12,"Shop", 100, 3000, 0.21, 0.25, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);$(13_10)			draw_set_font(fnt_normal);	$(13_10)		}$(13_10)		$(13_10)		if o_shop_inventory.shop = false {$(13_10)			draw_set_alpha(0.4)$(13_10)			draw_roundrect_color(x-54,y-15,x+50,y+14,c_dkgray,c_gray,false);$(13_10)			draw_set_alpha(1)$(13_10)			draw_set_font(global.fnt_cartoon4);$(13_10)			draw_text_ext_transformed_colour(x-25,y-12,"Shop", 100, 3000, 0.21, 0.25, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);$(13_10)			draw_set_font(fnt_normal);$(13_10)		}		$(13_10)	}	$(13_10)	$(13_10)	if slot = 20 { // Buyback Button$(13_10)	if (abs(mouse_x - x) < 52) && (abs(mouse_y - y) < 15) {$(13_10)	$(13_10)	$(13_10)		if click {$(13_10)		o_shop_inventory.timeron = true;$(13_10)		o_shop_inventory.timer = 0;$(13_10)		script_execute(scr_buyback_reogranize);			$(13_10)$(13_10)			audio_play_sound(snd_shop_tick,9,false);$(13_10)			if o_shop_inventory.buyback == false {$(13_10)				o_shop_inventory.buyback = true;$(13_10)				o_shop_inventory.shop = false;$(13_10)$(13_10)				$(13_10)			}				$(13_10)		}$(13_10)		}$(13_10)		if o_shop_inventory.buyback = true {$(13_10)			draw_set_font(global.fnt_cartoon4);$(13_10)			draw_text_ext_transformed_colour(x-35,y-12,"Buyback", 100, 3000, 0.21, 0.25, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);$(13_10)			draw_set_font(fnt_normal);	$(13_10)		}$(13_10)		if o_shop_inventory.buyback = false {$(13_10)			draw_set_alpha(0.4)$(13_10)			draw_roundrect_color(x-51,y-15,x+53,y+14,c_dkgray,c_gray,false);$(13_10)			draw_set_alpha(1)$(13_10)			draw_set_font(global.fnt_cartoon4);$(13_10)			draw_text_ext_transformed_colour(x-35,y-12,"Buyback", 100, 3000, 0.21, 0.25, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);$(13_10)			draw_set_font(fnt_normal);				$(13_10)		}		$(13_10)		$(13_10)	}	$(13_10)$(13_10)	// Click events for SHOP tab$(13_10)	if o_shop_inventory.shop = true{$(13_10)		scr_shop_display();$(13_10)	}$(13_10)	$(13_10)	// Click events for BUYBACK tab$(13_10)	if o_shop_inventory.buyback = true{$(13_10)		scr_buyback_display();$(13_10)	}$(13_10)$(13_10)$(13_10)} else {// End of if showShop$(13_10)	o_shop_inventory.sellmode=false$(13_10)}"
/// @description Execute Code
var item = global.shop[slot];// What this does is check that slot, and look at the sprite index
var click = mouse_check_button_pressed(mb_left);
var rightclick = mouse_check_button_pressed(mb_right);
var shift = keyboard_check(vk_shift);

depth = -1;

if showShop == true {

	if show_tooltip = true { // We use this to delay the tooltip background from vanishing
	
		tooltipx = camera_get_view_x(view_camera)+ 640;
		tooltipy = camera_get_view_y(view_camera)+ 360;
		
		draw_sprite(spr_tooltip_background,0,tooltipx,tooltipy+3);
		draw_sprite(spr_purchase_sign,0,tooltipx,tooltipy-285);
		draw_sprite(spr_tooltip_shop,0,tooltipx+4,tooltipy-25);
		draw_sprite(spr_tooltip_shop_compare,0,tooltipx+3,tooltipy+235);
		
		// Draw purchase sign text
		draw_set_font(global.fnt_cartoon3);
		draw_text_ext_transformed_colour(tooltipx-148,tooltipy-295,"Right Click to Purchase!", 100, 3000, 0.21, 0.25, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_ext_transformed_colour(tooltipx-148,tooltipy-295,"Right Click to Purchase!", 100, 3000, 0.21, 0.25, 0, c_red, c_red, c_red, c_red, 0.5);
		draw_set_font(fnt_normal);	
		
	}
	
	// Sell and close button activations
	
	// Test Hover Effect
	
	if slot = 16 { // Sell Button
	
		draw_text_color(x-47,y-10,"SELL MODE",c_yellow,c_yellow,c_yellow,c_yellow,1)
		if (abs(mouse_x - x) < 55) && (abs(mouse_y - y) < 22) {
			// Turn Red on Hover
			draw_sprite(spr_sell_and_close_red,0,x,y);
			if click {

				// Set timer for buyback expiration
				o_shop_inventory.timeron = true;
				o_shop_inventory.timer = 0;
				audio_play_sound(snd_shop_tick,9,false);
				if o_mouse_pointer.sellmode=false {
					o_mouse_pointer.sellmode=true;
				} else {
					o_mouse_pointer.sellmode=false;
				}
				

				
			}		
		}	
	}

	if slot = 17 { // Close Button
	
		draw_text_color(x-27,y-10,"CLOSE",c_yellow,c_yellow,c_yellow,c_yellow,1)
		if (abs(mouse_x - x) < 55) && (abs(mouse_y - y) < 22) {
			// Turn Red on Hover
			draw_sprite(spr_sell_and_close_red,0,x,y);
			if click {
				audio_play_sound(snd_shop_tick,9,false);
				showShop = false; 
				showInv = false; 
				instance_destroy(o_invitempanel);
				o_mouse_pointer.sellmode=false
			}
		}
	}
	
	if slot = 18 { // Gold button - draw current gold
		draw_text_color(x-38,y-10,string(string_thousands(o_player_stats.gold)),c_yellow,c_yellow,c_yellow,c_yellow,1)
	}
	
	if slot = 19 { // Shop Button
	
	if (abs(mouse_x - x) < 52) && (abs(mouse_y - y) < 15) {
		if click {
			o_shop_inventory.timeron = true;
			o_shop_inventory.timer = 0;
			audio_play_sound(snd_shop_tick,9,false);
			if o_shop_inventory.shop == false {
				o_shop_inventory.shop = true;
				o_shop_inventory.buyback = false;
			}		

		}
		}	
			
		if o_shop_inventory.shop = true {
			draw_set_font(global.fnt_cartoon4);
			draw_text_ext_transformed_colour(x-25,y-12,"Shop", 100, 3000, 0.21, 0.25, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
			draw_set_font(fnt_normal);	
		}
		
		if o_shop_inventory.shop = false {
			draw_set_alpha(0.4)
			draw_roundrect_color(x-54,y-15,x+50,y+14,c_dkgray,c_gray,false);
			draw_set_alpha(1)
			draw_set_font(global.fnt_cartoon4);
			draw_text_ext_transformed_colour(x-25,y-12,"Shop", 100, 3000, 0.21, 0.25, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
			draw_set_font(fnt_normal);
		}		
	}	
	
	if slot = 20 { // Buyback Button
	if (abs(mouse_x - x) < 52) && (abs(mouse_y - y) < 15) {
	
	
		if click {
		o_shop_inventory.timeron = true;
		o_shop_inventory.timer = 0;
		script_execute(scr_buyback_reogranize);			

			audio_play_sound(snd_shop_tick,9,false);
			if o_shop_inventory.buyback == false {
				o_shop_inventory.buyback = true;
				o_shop_inventory.shop = false;

				
			}				
		}
		}
		if o_shop_inventory.buyback = true {
			draw_set_font(global.fnt_cartoon4);
			draw_text_ext_transformed_colour(x-35,y-12,"Buyback", 100, 3000, 0.21, 0.25, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
			draw_set_font(fnt_normal);	
		}
		if o_shop_inventory.buyback = false {
			draw_set_alpha(0.4)
			draw_roundrect_color(x-51,y-15,x+53,y+14,c_dkgray,c_gray,false);
			draw_set_alpha(1)
			draw_set_font(global.fnt_cartoon4);
			draw_text_ext_transformed_colour(x-35,y-12,"Buyback", 100, 3000, 0.21, 0.25, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
			draw_set_font(fnt_normal);				
		}		
		
	}	

	// Click events for SHOP tab
	if o_shop_inventory.shop = true{
		scr_shop_display();
	}
	
	// Click events for BUYBACK tab
	if o_shop_inventory.buyback = true{
		scr_buyback_display();
	}


} else {// End of if showShop
	o_shop_inventory.sellmode=false
}