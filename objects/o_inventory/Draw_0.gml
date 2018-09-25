/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1BFAF6CD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var item = global.inventory[0];$(13_10)$(13_10)if (showInv){$(13_10)$(13_10)	// Set the depth to 1$(13_10)	depth=-1;$(13_10)	$(13_10)	// Draw the inventory item and equip screen$(13_10)	draw_sprite_ext(spr_itemscreen2,0,camera_get_view_x(view_camera)+17, camera_get_view_y(view_camera)+120,1,1,0,c_white,1)$(13_10)	$(13_10)	// Draw the word Inventory$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+160,camera_get_view_y(view_camera)+135,"Inventory", 100, 3000, 0.4, 0.4, 0, c_olive, c_red, c_olive, c_red, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	$(13_10)	// Draw the stat boxes$(13_10)	var stat_x1, stat_y1$(13_10)	stat_x1 = camera_get_view_x(view_camera)-30;$(13_10)	stat_y1 = camera_get_view_y(view_camera)+122;$(13_10)	xx = 1;$(13_10)	yy = 1;$(13_10)	$(13_10)	for (i = 0; i <4; i ++) {$(13_10)	$(13_10)	//draw_sprite(spr_stat_border, 0, stat_x1+statspace+(xx*statspace), stat_y1+statspace+(yy*statspace)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	stat_coordx[i] = stat_x1+statspace+(xx*statspace);$(13_10)	stat_coordy[i] = stat_y1+statspace+(yy*statspace);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	stat_button[i].x = stat_x1+statspace+(xx*statspace);$(13_10)	stat_button[i].y = stat_y1+statspace+(yy*statspace);$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < statcolumns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)$(13_10)// Need to draw the stats for STR, DEX, INT, VIT$(13_10)$(13_10)// STR STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+230,camera_get_view_y(view_camera)+330,"STR", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+270,camera_get_view_y(view_camera)+325,camera_get_view_x(view_camera)+330,camera_get_view_y(view_camera)+350,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+275,camera_get_view_y(view_camera)+330,string(o_player_stats.stats[? "strength"]+scr_calc_equip_str()))$(13_10)$(13_10)// DEX STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+340,camera_get_view_y(view_camera)+330,"DEX", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+380,camera_get_view_y(view_camera)+325,camera_get_view_x(view_camera)+440,camera_get_view_y(view_camera)+350,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+385,camera_get_view_y(view_camera)+330,string(o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()))$(13_10)$(13_10)$(13_10)// INT STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+230,camera_get_view_y(view_camera)+360,"INT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+270,camera_get_view_y(view_camera)+355,camera_get_view_x(view_camera)+330,camera_get_view_y(view_camera)+380,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+275,camera_get_view_y(view_camera)+360,string(o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()))$(13_10)	$(13_10)	$(13_10)// VIT STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+340,camera_get_view_y(view_camera)+360,"VIT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+380,camera_get_view_y(view_camera)+355,camera_get_view_x(view_camera)+440,camera_get_view_y(view_camera)+380,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+385,camera_get_view_y(view_camera)+360,string(o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()))$(13_10)		$(13_10)	//stat_button[i].x = (camera_get_view_x(view_camera)+240);$(13_10)	//stat_button[i].y = (camera_get_view_y(view_camera)+350);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)$(13_10)//--------- GENERAL INVENTORY  -------------------//	$(13_10)$(13_10)	// Draw the black rectangle$(13_10)	var x1, x2, y1, y2;$(13_10)	x1 = camera_get_view_x(view_camera)-10;$(13_10)	//x2 = x1 + camera_get_view_width(view_camera);$(13_10)	y1 = camera_get_view_y(view_camera)+340;$(13_10)	//y2 = y1 + 64;$(13_10)	$(13_10)	//draw_set_color(c_black);$(13_10)	//draw_set_alpha(.2);$(13_10)	//draw_rectangle(x1, y1, x2, y2, 0);$(13_10)	//draw_set_alpha(1);$(13_10)	$(13_10)$(13_10)	// Draw the inventory slots$(13_10)	/*$(13_10)	for (i = 0; i< maxItems; i++){$(13_10)		// Draw the border, space it out with 24 and i*40$(13_10)		// First one is x1+24 + 0*40, then so on$(13_10)		var ix = x1+24+(i*40);$(13_10)		var iy = y2 -24;$(13_10)		draw_set_alpha(1);$(13_10)		draw_sprite(spr_border, 0, ix, iy)$(13_10)		if (global.inventory[i] != -1) draw_sprite(spr_items, global.inventory[i], ix, iy);$(13_10)		// We're setting the button's X and Y coordinates here so that its the same$(13_10)		// As the draw border$(13_10)		button[i].x = ix;$(13_10)		button[i].y = iy;$(13_10)$(13_10)	}$(13_10)	*/$(13_10)$(13_10)xx = 1;$(13_10)yy = 1;$(13_10)$(13_10)for (i = 0; i < 60; i ++) {$(13_10)	draw_sprite(spr_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = x1+space+(xx*space);$(13_10)	coordy[i] = y1+space+(yy*space);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = x1+space+(xx*space);$(13_10)	button[i].y = y1+space+(yy*space);$(13_10)	$(13_10)	// If there is an item in the inventory, draw its sprite$(13_10)	if global.inventory[i] != -1 {$(13_10)	$(13_10)	// Draw background mask based on rarity		$(13_10)	$(13_10)	var maskcolor; // Setting mask color$(13_10)	$(13_10)	switch (global.inventory[i+1, 7] ) {$(13_10)		case 1:$(13_10)			maskcolor = c_black;$(13_10)			break;$(13_10)		case 5:$(13_10)			maskcolor = c_lime;$(13_10)			break;$(13_10)		case 10: $(13_10)			maskcolor = make_color_rgb(255,140,0);$(13_10)			break;$(13_10)	$(13_10)	$(13_10)	}$(13_10)			$(13_10)	draw_set_alpha(0.17);$(13_10)	draw_rectangle_color(coordx[i]-18, coordy[i]-18, coordx[i]+18, coordy[i]+18, maskcolor,maskcolor,maskcolor,maskcolor,false);$(13_10)	draw_set_alpha(1);$(13_10)	$(13_10)$(13_10)	draw_sprite(spr_items, global.inventory[i],coordx[i],coordy[i]);	$(13_10)	$(13_10)	// Drawing stack counts$(13_10)	if global.inventory[i+1,9] > 1 {$(13_10)		$(13_10)		// Draw transparent mask$(13_10)		draw_set_alpha(0.3);$(13_10)		draw_rectangle_color(coordx[i]-18, coordy[i]-18, coordx[i]+5, coordy[i]-6, c_black,c_black,c_black,c_black,false);$(13_10)		draw_set_alpha(1);$(13_10)		// Draw stack count over mask$(13_10)		stackcount = global.inventory[i+1,9];$(13_10)		draw_set_font(fnt_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(coordx[i]-14,coordy[i]-18,string(stackcount));$(13_10)		draw_set_font(fnt_normal);$(13_10)	}		$(13_10)		$(13_10)	// Draw the Cooldown and Timers$(13_10)	$(13_10)		name = global.inventory[i+1, 5];$(13_10)		$(13_10)		if o_item_cooldown.hp_potion < 3600 and name = "Health Potion" {$(13_10)			draw_set_alpha(0.5)$(13_10)			draw_healthbar(coordx[i]-18, coordy[i]-18,coordx[i]+18, coordy[i]+18,(o_item_cooldown.hp_potion/3600)*100, c_black,c_black, c_white, 2, true, false );$(13_10)			draw_set_alpha(1)$(13_10)		$(13_10)			// Draw Timer$(13_10)			var cooldown = (60 - (o_item_cooldown.hp_potion/60));$(13_10)			draw_set_halign(fa_center)$(13_10)			draw_set_color(c_yellow)$(13_10)			draw_text(coordx[i],coordy[i]-10,string(round(cooldown)));	$(13_10)			draw_set_color(c_white)$(13_10)			draw_set_halign(fa_left)$(13_10)			$(13_10)		}$(13_10)		$(13_10)		if o_item_cooldown.mp_potion < 3600 and name = "Mana Potion" {$(13_10)			draw_set_alpha(0.5)$(13_10)			draw_healthbar(coordx[i]-18, coordy[i]-18,coordx[i]+18, coordy[i]+18,(o_item_cooldown.mp_potion/3600)*100, c_black,c_black, c_white, 2, true, false );$(13_10)			draw_set_alpha(1)$(13_10)		$(13_10)			// Draw Timer$(13_10)			var cooldown = (60 - (o_item_cooldown.mp_potion/60));$(13_10)			draw_set_halign(fa_center)$(13_10)			draw_set_color(c_yellow)$(13_10)			draw_text(coordx[i],coordy[i]-10,string(round(cooldown)));	$(13_10)			draw_set_color(c_white)$(13_10)			draw_set_halign(fa_left)$(13_10)			$(13_10)		}		$(13_10)$(13_10) $(13_10) $(13_10)	}$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Secondary Inventory (Might change code to move equip slots to the end instead$(13_10)// Slot 52 is the start of the expanded inventory$(13_10)/*$(13_10)for (i = 52; i < 72; i ++) {$(13_10)	draw_sprite(spr_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = x1+space+(xx*space);$(13_10)	coordy[i] = y1+space+(yy*space);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = x1+space+(xx*space);$(13_10)	button[i].y = y1+space+(yy*space);$(13_10)	$(13_10)	// If there is an item in the inventory, draw its sprite$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i],coordx[i],coordy[i]);		$(13_10) // draw_set_colour(c_white);$(13_10) // draw_text_transformed(coordx[i]+12,coordy[i]+13,string(global.inventory[i,2]), .5, .5, 0);$(13_10)	}$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)}$(13_10)*/$(13_10)$(13_10)$(13_10)// Stash Inventory$(13_10)	x2 = camera_get_view_x(view_camera)+500;$(13_10)	y2 = camera_get_view_y(view_camera)+100;$(13_10)/*$(13_10)for (i = 52; i < 100; i ++) {$(13_10)	draw_sprite(spr_border, 0, x2+space+(xx*space), y2+space+(yy*space)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = x2+space+(xx*space);$(13_10)	coordy[i] = y2+space+(yy*space);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = x2+space+(xx*space);$(13_10)	button[i].y = y2+space+(yy*space);$(13_10)	$(13_10)	// If there is an item in the inventory, draw its sprite$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i],coordx[i],coordy[i]);		$(13_10) // draw_set_colour(c_white);$(13_10) // draw_text_transformed(coordx[i]+12,coordy[i]+13,string(global.inventory[i,2]), .5, .5, 0);$(13_10)	}$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)}$(13_10)*/$(13_10)$(13_10)$(13_10)$(13_10)	$(13_10)// Draw the itembox for the Weapon$(13_10)for (i=62; i<63;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+255);$(13_10)	if global.inventory[62] = -1 {$(13_10)		draw_sprite(spr_wep_slot, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+255);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+265, camera_get_view_y(view_camera)+265,"Weapon");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	$(13_10)	$(13_10)	button[i].x = (camera_get_view_x(view_camera)+285);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+255);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+255);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Armor$(13_10)for (i=63; i<64;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+255);$(13_10)	if global.inventory[63] = -1 {$(13_10)		draw_sprite(spr_armor_slot, 0, camera_get_view_x(view_camera)+330, camera_get_view_y(view_camera)+255);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+316, camera_get_view_y(view_camera)+265,"Armor");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+330);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+255);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+255);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Offhand$(13_10)for (i=64; i<65;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+255);$(13_10)	if global.inventory[64] = -1 {$(13_10)		draw_sprite(spr_offhand_slot, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+255);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+356, camera_get_view_y(view_camera)+265,"Offhand");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	$(13_10)	button[i].x = (camera_get_view_x(view_camera)+375);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+255);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+255);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Hat$(13_10)for (i=65; i<66;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+210);$(13_10)	if global.inventory[65] = -1 {$(13_10)		draw_sprite(spr_hat_slot, 0, camera_get_view_x(view_camera)+330, camera_get_view_y(view_camera)+210);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+317, camera_get_view_y(view_camera)+220,"Head");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	$(13_10)	button[i].x = (camera_get_view_x(view_camera)+330);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+210);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+210);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Pants$(13_10)for (i=66; i<67;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+300);$(13_10)	$(13_10)	if global.inventory[66] = -1 {$(13_10)		draw_sprite(spr_pants_slot, 0, camera_get_view_x(view_camera)+330, camera_get_view_y(view_camera)+300);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+318, camera_get_view_y(view_camera)+310,"Pants");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+330);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+300);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+300);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Gloves$(13_10)for (i=67; i<68;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+300);$(13_10)	if global.inventory[67] = -1 {$(13_10)		draw_sprite(spr_gloves_slot, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+300);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+270, camera_get_view_y(view_camera)+310,"Gloves");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+285);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+300);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+300);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Boots$(13_10)for (i=68; i<69;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+300);$(13_10)	if global.inventory[68] = -1 {$(13_10)		draw_sprite(spr_boots_slot, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+300);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+363, camera_get_view_y(view_camera)+310,"Boots");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+375);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+300);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+300);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Artifact$(13_10)for (i=69; i<70;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+300);$(13_10)	$(13_10)	if global.inventory[69] = -1 {$(13_10)		draw_sprite(spr_artifact_slot, 0, camera_get_view_x(view_camera)+420, camera_get_view_y(view_camera)+300);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+403, camera_get_view_y(view_camera)+310,"Artifact");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+420);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+300);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+300);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for the Amulet$(13_10)for (i=70; i<71;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+210);$(13_10)	$(13_10)	if global.inventory[70] = -1 {$(13_10)		draw_sprite(spr_amulet_slot, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+210);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+267, camera_get_view_y(view_camera)+220,"Amulet");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+285);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+210);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+210);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for Bracelet$(13_10)for (i=71; i<72;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+210);$(13_10)	if global.inventory[71] = -1 {$(13_10)		draw_sprite(spr_bracelet_slot, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+210);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+356, camera_get_view_y(view_camera)+220,"Bracelet");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+375);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+210);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+210);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Draw the itembox for Ring$(13_10)for (i=72; i<73;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+210);$(13_10)	if global.inventory[72] = -1 {$(13_10)		draw_sprite(spr_ring_slot, 0, camera_get_view_x(view_camera)+420, camera_get_view_y(view_camera)+210);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+410, camera_get_view_y(view_camera)+220,"Ring");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+420);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+210);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+210);$(13_10)	}$(13_10)}$(13_10)$(13_10)for (i=73; i<74;i++){$(13_10)$(13_10)	// Draw the border$(13_10)	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+255);$(13_10)	if global.inventory[73] = -1 {$(13_10)		draw_sprite(spr_earring_slot, 0, camera_get_view_x(view_camera)+420, camera_get_view_y(view_camera)+255);$(13_10)		draw_set_font(fnt_equipmentslot_text);$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(camera_get_view_x(view_camera)+404, camera_get_view_y(view_camera)+265,"Earring");$(13_10)		draw_set_font(fnt_normal);														$(13_10)	}$(13_10)	button[i].x = (camera_get_view_x(view_camera)+420);$(13_10)	button[i].y = (camera_get_view_y(view_camera)+255);$(13_10)	// Draw the item sprite if there is an item in the slot$(13_10)	if global.inventory[i] != -1 {$(13_10)		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+255);$(13_10)	}$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
var item = global.inventory[0];

if (showInv){

	// Set the depth to 1
	depth=-1;
	
	// Draw the inventory item and equip screen
	draw_sprite_ext(spr_itemscreen2,0,camera_get_view_x(view_camera)+17, camera_get_view_y(view_camera)+120,1,1,0,c_white,1)
	
	// Draw the word Inventory
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+160,camera_get_view_y(view_camera)+135,"Inventory", 100, 3000, 0.4, 0.4, 0, c_olive, c_red, c_olive, c_red, 1);
	draw_set_font(fnt_normal);
	
	// Draw the stat boxes
	var stat_x1, stat_y1
	stat_x1 = camera_get_view_x(view_camera)-30;
	stat_y1 = camera_get_view_y(view_camera)+122;
	xx = 1;
	yy = 1;
	
	for (i = 0; i <4; i ++) {
	
	//draw_sprite(spr_stat_border, 0, stat_x1+statspace+(xx*statspace), stat_y1+statspace+(yy*statspace)) //draws empty boxes
	// Draw the spacing
	stat_coordx[i] = stat_x1+statspace+(xx*statspace);
	stat_coordy[i] = stat_y1+statspace+(yy*statspace);
	// Draw the invis buttons X and Y coordinates
	stat_button[i].x = stat_x1+statspace+(xx*statspace);
	stat_button[i].y = stat_y1+statspace+(yy*statspace);
	
	// Here is where we can use the columns and rows to help us draw
	if(xx < statcolumns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
	}

// Need to draw the stats for STR, DEX, INT, VIT

// STR STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+230,camera_get_view_y(view_camera)+330,"STR", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+270,camera_get_view_y(view_camera)+325,camera_get_view_x(view_camera)+330,camera_get_view_y(view_camera)+350,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+275,camera_get_view_y(view_camera)+330,string(o_player_stats.stats[? "strength"]+scr_calc_equip_str()))

// DEX STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+340,camera_get_view_y(view_camera)+330,"DEX", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+380,camera_get_view_y(view_camera)+325,camera_get_view_x(view_camera)+440,camera_get_view_y(view_camera)+350,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+385,camera_get_view_y(view_camera)+330,string(o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()))


// INT STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+230,camera_get_view_y(view_camera)+360,"INT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+270,camera_get_view_y(view_camera)+355,camera_get_view_x(view_camera)+330,camera_get_view_y(view_camera)+380,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+275,camera_get_view_y(view_camera)+360,string(o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()))
	
	
// VIT STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+340,camera_get_view_y(view_camera)+360,"VIT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+380,camera_get_view_y(view_camera)+355,camera_get_view_x(view_camera)+440,camera_get_view_y(view_camera)+380,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+385,camera_get_view_y(view_camera)+360,string(o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()))
		
	//stat_button[i].x = (camera_get_view_x(view_camera)+240);
	//stat_button[i].y = (camera_get_view_y(view_camera)+350);
	// Draw the item sprite if there is an item in the slot

//--------- GENERAL INVENTORY  -------------------//	

	// Draw the black rectangle
	var x1, x2, y1, y2;
	x1 = camera_get_view_x(view_camera)-10;
	//x2 = x1 + camera_get_view_width(view_camera);
	y1 = camera_get_view_y(view_camera)+340;
	//y2 = y1 + 64;
	
	//draw_set_color(c_black);
	//draw_set_alpha(.2);
	//draw_rectangle(x1, y1, x2, y2, 0);
	//draw_set_alpha(1);
	

	// Draw the inventory slots
	/*
	for (i = 0; i< maxItems; i++){
		// Draw the border, space it out with 24 and i*40
		// First one is x1+24 + 0*40, then so on
		var ix = x1+24+(i*40);
		var iy = y2 -24;
		draw_set_alpha(1);
		draw_sprite(spr_border, 0, ix, iy)
		if (global.inventory[i] != -1) draw_sprite(spr_items, global.inventory[i], ix, iy);
		// We're setting the button's X and Y coordinates here so that its the same
		// As the draw border
		button[i].x = ix;
		button[i].y = iy;

	}
	*/

xx = 1;
yy = 1;

for (i = 0; i < 60; i ++) {
	draw_sprite(spr_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes
	// Draw the spacing
	coordx[i] = x1+space+(xx*space);
	coordy[i] = y1+space+(yy*space);
	// Draw the invis buttons X and Y coordinates
	button[i].x = x1+space+(xx*space);
	button[i].y = y1+space+(yy*space);
	
	// If there is an item in the inventory, draw its sprite
	if global.inventory[i] != -1 {
	
	// Draw background mask based on rarity		
	
	var maskcolor; // Setting mask color
	
	switch (global.inventory[i+1, 7] ) {
		case 1:
			maskcolor = c_black;
			break;
		case 5:
			maskcolor = c_lime;
			break;
		case 10: 
			maskcolor = make_color_rgb(255,140,0);
			break;
	
	
	}
			
	draw_set_alpha(0.17);
	draw_rectangle_color(coordx[i]-18, coordy[i]-18, coordx[i]+18, coordy[i]+18, maskcolor,maskcolor,maskcolor,maskcolor,false);
	draw_set_alpha(1);
	

	draw_sprite(spr_items, global.inventory[i],coordx[i],coordy[i]);	
	
	// Drawing stack counts
	if global.inventory[i+1,9] > 1 {
		
		// Draw transparent mask
		draw_set_alpha(0.3);
		draw_rectangle_color(coordx[i]-18, coordy[i]-18, coordx[i]+5, coordy[i]-6, c_black,c_black,c_black,c_black,false);
		draw_set_alpha(1);
		// Draw stack count over mask
		stackcount = global.inventory[i+1,9];
		draw_set_font(fnt_text);
		draw_set_color(c_white);
		draw_text(coordx[i]-14,coordy[i]-18,string(stackcount));
		draw_set_font(fnt_normal);
	}		
		
	// Draw the Cooldown and Timers
	
		name = global.inventory[i+1, 5];
		
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
	}else{
		xx=1;
		yy+=1;
	}
}

// Secondary Inventory (Might change code to move equip slots to the end instead
// Slot 52 is the start of the expanded inventory
/*
for (i = 52; i < 72; i ++) {
	draw_sprite(spr_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes
	// Draw the spacing
	coordx[i] = x1+space+(xx*space);
	coordy[i] = y1+space+(yy*space);
	// Draw the invis buttons X and Y coordinates
	button[i].x = x1+space+(xx*space);
	button[i].y = y1+space+(yy*space);
	
	// If there is an item in the inventory, draw its sprite
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i],coordx[i],coordy[i]);		
 // draw_set_colour(c_white);
 // draw_text_transformed(coordx[i]+12,coordy[i]+13,string(global.inventory[i,2]), .5, .5, 0);
	}
	// Here is where we can use the columns and rows to help us draw
	if(xx < columns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
}
*/


// Stash Inventory
	x2 = camera_get_view_x(view_camera)+500;
	y2 = camera_get_view_y(view_camera)+100;
/*
for (i = 52; i < 100; i ++) {
	draw_sprite(spr_border, 0, x2+space+(xx*space), y2+space+(yy*space)) //draws empty boxes
	// Draw the spacing
	coordx[i] = x2+space+(xx*space);
	coordy[i] = y2+space+(yy*space);
	// Draw the invis buttons X and Y coordinates
	button[i].x = x2+space+(xx*space);
	button[i].y = y2+space+(yy*space);
	
	// If there is an item in the inventory, draw its sprite
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i],coordx[i],coordy[i]);		
 // draw_set_colour(c_white);
 // draw_text_transformed(coordx[i]+12,coordy[i]+13,string(global.inventory[i,2]), .5, .5, 0);
	}
	// Here is where we can use the columns and rows to help us draw
	if(xx < columns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
}
*/



	
// Draw the itembox for the Weapon
for (i=62; i<63;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+255);
	if global.inventory[62] = -1 {
		draw_sprite(spr_wep_slot, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+255);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+265, camera_get_view_y(view_camera)+265,"Weapon");
		draw_set_font(fnt_normal);														
	}
	
	
	button[i].x = (camera_get_view_x(view_camera)+285);
	button[i].y = (camera_get_view_y(view_camera)+255);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+255);
	}
}

// Draw the itembox for the Armor
for (i=63; i<64;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+255);
	if global.inventory[63] = -1 {
		draw_sprite(spr_armor_slot, 0, camera_get_view_x(view_camera)+330, camera_get_view_y(view_camera)+255);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+316, camera_get_view_y(view_camera)+265,"Armor");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+330);
	button[i].y = (camera_get_view_y(view_camera)+255);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+255);
	}
}

// Draw the itembox for the Offhand
for (i=64; i<65;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+255);
	if global.inventory[64] = -1 {
		draw_sprite(spr_offhand_slot, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+255);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+356, camera_get_view_y(view_camera)+265,"Offhand");
		draw_set_font(fnt_normal);														
	}
	
	button[i].x = (camera_get_view_x(view_camera)+375);
	button[i].y = (camera_get_view_y(view_camera)+255);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+255);
	}
}

// Draw the itembox for the Hat
for (i=65; i<66;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+210);
	if global.inventory[65] = -1 {
		draw_sprite(spr_hat_slot, 0, camera_get_view_x(view_camera)+330, camera_get_view_y(view_camera)+210);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+317, camera_get_view_y(view_camera)+220,"Head");
		draw_set_font(fnt_normal);														
	}
	
	button[i].x = (camera_get_view_x(view_camera)+330);
	button[i].y = (camera_get_view_y(view_camera)+210);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+210);
	}
}

// Draw the itembox for the Pants
for (i=66; i<67;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+300);
	
	if global.inventory[66] = -1 {
		draw_sprite(spr_pants_slot, 0, camera_get_view_x(view_camera)+330, camera_get_view_y(view_camera)+300);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+318, camera_get_view_y(view_camera)+310,"Pants");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+330);
	button[i].y = (camera_get_view_y(view_camera)+300);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 330, camera_get_view_y(view_camera)+300);
	}
}

// Draw the itembox for the Gloves
for (i=67; i<68;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+300);
	if global.inventory[67] = -1 {
		draw_sprite(spr_gloves_slot, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+300);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+270, camera_get_view_y(view_camera)+310,"Gloves");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+285);
	button[i].y = (camera_get_view_y(view_camera)+300);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+300);
	}
}

// Draw the itembox for the Boots
for (i=68; i<69;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+300);
	if global.inventory[68] = -1 {
		draw_sprite(spr_boots_slot, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+300);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+363, camera_get_view_y(view_camera)+310,"Boots");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+375);
	button[i].y = (camera_get_view_y(view_camera)+300);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+300);
	}
}

// Draw the itembox for the Artifact
for (i=69; i<70;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+300);
	
	if global.inventory[69] = -1 {
		draw_sprite(spr_artifact_slot, 0, camera_get_view_x(view_camera)+420, camera_get_view_y(view_camera)+300);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+403, camera_get_view_y(view_camera)+310,"Artifact");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+420);
	button[i].y = (camera_get_view_y(view_camera)+300);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+300);
	}
}

// Draw the itembox for the Amulet
for (i=70; i<71;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+210);
	
	if global.inventory[70] = -1 {
		draw_sprite(spr_amulet_slot, 0, camera_get_view_x(view_camera)+285, camera_get_view_y(view_camera)+210);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+267, camera_get_view_y(view_camera)+220,"Amulet");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+285);
	button[i].y = (camera_get_view_y(view_camera)+210);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 285, camera_get_view_y(view_camera)+210);
	}
}

// Draw the itembox for Bracelet
for (i=71; i<72;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+210);
	if global.inventory[71] = -1 {
		draw_sprite(spr_bracelet_slot, 0, camera_get_view_x(view_camera)+375, camera_get_view_y(view_camera)+210);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+356, camera_get_view_y(view_camera)+220,"Bracelet");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+375);
	button[i].y = (camera_get_view_y(view_camera)+210);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 375, camera_get_view_y(view_camera)+210);
	}
}

// Draw the itembox for Ring
for (i=72; i<73;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+210);
	if global.inventory[72] = -1 {
		draw_sprite(spr_ring_slot, 0, camera_get_view_x(view_camera)+420, camera_get_view_y(view_camera)+210);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+410, camera_get_view_y(view_camera)+220,"Ring");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+420);
	button[i].y = (camera_get_view_y(view_camera)+210);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+210);
	}
}

for (i=73; i<74;i++){

	// Draw the border
	draw_sprite(spr_border_equip, 0, camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+255);
	if global.inventory[73] = -1 {
		draw_sprite(spr_earring_slot, 0, camera_get_view_x(view_camera)+420, camera_get_view_y(view_camera)+255);
		draw_set_font(fnt_equipmentslot_text);
		draw_set_color(c_white);
		draw_text(camera_get_view_x(view_camera)+404, camera_get_view_y(view_camera)+265,"Earring");
		draw_set_font(fnt_normal);														
	}
	button[i].x = (camera_get_view_x(view_camera)+420);
	button[i].y = (camera_get_view_y(view_camera)+255);
	// Draw the item sprite if there is an item in the slot
	if global.inventory[i] != -1 {
		draw_sprite(spr_items, global.inventory[i], camera_get_view_x(view_camera)+ 420, camera_get_view_y(view_camera)+255);
	}
}

}

/**/