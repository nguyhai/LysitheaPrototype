/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 159AA17E
/// @DnDArgument : "code" "if instance_exists(o_player) and o_player.cutscene = false {$(13_10)$(13_10)	depth = -1;$(13_10)	$(13_10)	var x1, y1$(13_10)	$(13_10)	x1 = camera_get_view_x(view_camera)+320;$(13_10)	y1 = camera_get_view_y(view_camera)+614;$(13_10)$(13_10)	yy = 1;$(13_10)	xx = 1;$(13_10)	$(13_10)	var orange = make_color_rgb(255,140,50)$(13_10)	$(13_10)	for (i = 0; i <4; i ++) {$(13_10)	$(13_10)	if global.itembar[i] != -1 {$(13_10)		draw_sprite(spr_border_equip, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes$(13_10)	} else {$(13_10)		draw_sprite(spr_item_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes$(13_10)	}$(13_10)	// Draw the spacing$(13_10)	coordx[i] = x1+space+(xx*space);$(13_10)	coordy[i] = y1+space+(yy*space);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = x1+space+(xx*space);$(13_10)	button[i].y = y1+space+(yy*space);$(13_10)$(13_10)	// if global.itembar[i] has an item, draws the stack count on bottom right$(13_10)	if global.itembar[i] != -1 {$(13_10)		draw_sprite(spr_items, global.itembar[i],coordx[i],coordy[i]);$(13_10)		// If stackcount > 1, draw the stack count$(13_10)		if global.itembar[i+1, 9] > 1 {$(13_10)			draw_set_font(fnt_stacktext)$(13_10)			draw_set_halign(fa_right)$(13_10)			draw_text(coordx[i]+17, coordy[i]+7, global.itembar[i+1, 9]);$(13_10)			draw_set_halign(fa_left)$(13_10)			draw_set_font(fnt_normal)$(13_10)		}$(13_10)		$(13_10)		// Draw cooldown mask for items$(13_10)		$(13_10)		name = global.itembar[i+1, 5];$(13_10)		$(13_10)		if o_item_cooldown.hp_potion < 3600 and name = "Health Potion" {$(13_10)			draw_set_alpha(0.5)$(13_10)			draw_healthbar(coordx[i]-18, coordy[i]-18,coordx[i]+18, coordy[i]+18,(o_item_cooldown.hp_potion/3600)*100, c_black,c_black, c_white, 2, true, false );$(13_10)			draw_set_alpha(1)$(13_10)		$(13_10)			// Draw Timer$(13_10)			var cooldown = (60 - (o_item_cooldown.hp_potion/60));$(13_10)			draw_set_halign(fa_center)$(13_10)			draw_set_color(c_yellow)$(13_10)			draw_text(coordx[i],coordy[i]-10,string(round(cooldown)));	$(13_10)			draw_set_color(c_white)$(13_10)			draw_set_halign(fa_left)$(13_10)			$(13_10)		}$(13_10)		$(13_10)		if o_item_cooldown.mp_potion < 3600 and name = "Mana Potion" {$(13_10)			draw_set_alpha(0.5)$(13_10)			draw_healthbar(coordx[i]-18, coordy[i]-18,coordx[i]+18, coordy[i]+18,(o_item_cooldown.mp_potion/3600)*100, c_black,c_black, c_white, 2, true, false );$(13_10)			draw_set_alpha(1)$(13_10)		$(13_10)			// Draw Timer$(13_10)			var cooldown = (60 - (o_item_cooldown.mp_potion/60));$(13_10)			draw_set_halign(fa_center)$(13_10)			draw_set_color(c_yellow)$(13_10)			draw_text(coordx[i],coordy[i]-10,string(round(cooldown)));	$(13_10)			draw_set_color(c_white)$(13_10)			draw_set_halign(fa_left)$(13_10)			$(13_10)		}		$(13_10)		$(13_10)	}$(13_10)$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	} else {$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)	$(13_10)$(13_10)}"
if instance_exists(o_player) and o_player.cutscene = false {

	depth = -1;
	
	var x1, y1
	
	x1 = camera_get_view_x(view_camera)+320;
	y1 = camera_get_view_y(view_camera)+614;

	yy = 1;
	xx = 1;
	
	var orange = make_color_rgb(255,140,50)
	
	for (i = 0; i <4; i ++) {
	
	if global.itembar[i] != -1 {
		draw_sprite(spr_border_equip, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes
	} else {
		draw_sprite(spr_item_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes
	}
	// Draw the spacing
	coordx[i] = x1+space+(xx*space);
	coordy[i] = y1+space+(yy*space);
	// Draw the invis buttons X and Y coordinates
	button[i].x = x1+space+(xx*space);
	button[i].y = y1+space+(yy*space);

	// if global.itembar[i] has an item, draws the stack count on bottom right
	if global.itembar[i] != -1 {
		draw_sprite(spr_items, global.itembar[i],coordx[i],coordy[i]);
		// If stackcount > 1, draw the stack count
		if global.itembar[i+1, 9] > 1 {
			draw_set_font(fnt_stacktext)
			draw_set_halign(fa_right)
			draw_text(coordx[i]+17, coordy[i]+7, global.itembar[i+1, 9]);
			draw_set_halign(fa_left)
			draw_set_font(fnt_normal)
		}
		
		// Draw cooldown mask for items
		
		name = global.itembar[i+1, 5];
		
		if o_item_cooldown.hp_potion < 3600 and name = "Health Potion" {
			draw_set_alpha(0.5)
			draw_healthbar(coordx[i]-18, coordy[i]-18,coordx[i]+18, coordy[i]+18,(o_item_cooldown.hp_potion/3600)*100, c_black,c_black, c_white, 2, true, false );
			draw_set_alpha(1)
		
			// Draw Timer
			var cooldown = (60 - (o_item_cooldown.hp_potion/60));
			draw_set_halign(fa_center)
			draw_set_color(c_yellow)
			draw_text(coordx[i],coordy[i]-10,string(round(cooldown)));	
			draw_set_color(c_white)
			draw_set_halign(fa_left)
			
		}
		
		if o_item_cooldown.mp_potion < 3600 and name = "Mana Potion" {
			draw_set_alpha(0.5)
			draw_healthbar(coordx[i]-18, coordy[i]-18,coordx[i]+18, coordy[i]+18,(o_item_cooldown.mp_potion/3600)*100, c_black,c_black, c_white, 2, true, false );
			draw_set_alpha(1)
		
			// Draw Timer
			var cooldown = (60 - (o_item_cooldown.mp_potion/60));
			draw_set_halign(fa_center)
			draw_set_color(c_yellow)
			draw_text(coordx[i],coordy[i]-10,string(round(cooldown)));	
			draw_set_color(c_white)
			draw_set_halign(fa_left)
			
		}		
		
	}

	// Here is where we can use the columns and rows to help us draw
	if(xx < columns){
		xx +=1;
	} else {
		xx=1;
		yy+=1;
	}
	}
	

}