/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 669FA68C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Item Pricing is determined here.$(13_10)$(13_10)$(13_10)if (showShop){$(13_10)	$(13_10)	// Close the Character Screen if it is open and prevent it from opening$(13_10)	showChar = false;$(13_10)	// Probably shouldnt require it open, but open only after talking to NPC$(13_10)$(13_10)	// Set the depth to 1$(13_10)	depth=-1;$(13_10)	$(13_10)	// Draw the inventory item and equip screen$(13_10)	draw_sprite_ext(spr_shop_screen,0,camera_get_view_x(view_camera)+815, camera_get_view_y(view_camera)+120,1,1,0,c_white,1)$(13_10)	$(13_10)	// Draw the Shop's Type at the top$(13_10)	$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+950,camera_get_view_y(view_camera)+135,string(shoptype), 100, 3000, 0.4, 0.4, 0, c_olive, c_red, c_olive, c_red, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)$(13_10)// Draw the item boxes$(13_10)$(13_10)// Start drawing the shop slots (1-16)	$(13_10)$(13_10)	var item_x1, item_y1$(13_10)	item_x1 = camera_get_view_x(view_camera)+ 835;$(13_10)	item_y1 = camera_get_view_y(view_camera)+ 115;$(13_10)	xx = 1;$(13_10)	yy = 1;$(13_10)$(13_10)if shop = true {$(13_10)	$(13_10)	for (i = 0; i <8; i ++) {$(13_10)$(13_10)	draw_sprite_ext(spr_shop_item_button, 0, item_x1+colspace+(xx*colspace), item_y1+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = item_x1+colspace+(xx*colspace);$(13_10)	coordy[i] = item_y1+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = item_x1+colspace+(xx*colspace);$(13_10)	button[i].y = item_y1+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw the item sprite if it is there.$(13_10)	if global.shop[i] != -1 {$(13_10)$(13_10)		price = script_execute(scr_shop_prices)$(13_10)		$(13_10)		var textcolor = -1;$(13_10)		$(13_10)		if (global.shop[i+1, 7] = 1) textcolor = c_white;$(13_10)		if (global.shop[i+1, 7] = 5) textcolor = c_lime;$(13_10)		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);$(13_10)		$(13_10)	$(13_10)		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);$(13_10)		draw_set_font(fnt_shop)$(13_10)		$(13_10)		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);$(13_10)		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);$(13_10)		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)		draw_set_font(fnt_normal)$(13_10)	$(13_10)	}$(13_10)$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)$(13_10)	var item_x2, item_y2$(13_10)	item_x2 = camera_get_view_x(view_camera)+ 1045;$(13_10)	item_y2 = camera_get_view_y(view_camera)- 285;$(13_10)$(13_10)	for (i = 8; i <16; i ++) {$(13_10)	$(13_10)	draw_sprite_ext(spr_shop_item_button, 0, item_x2+colspace+(xx*colspace), item_y2+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = item_x2+colspace+(xx*colspace);$(13_10)	coordy[i] = item_y2+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = item_x2+colspace+(xx*colspace);$(13_10)	button[i].y = item_y2+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw item Sprite$(13_10)	if global.shop[i] != -1 {$(13_10)$(13_10)		price = script_execute(scr_shop_prices)$(13_10)		$(13_10)		var textcolor = -1;$(13_10)		$(13_10)		if (global.shop[i+1, 7] = 1) textcolor = c_white;$(13_10)		if (global.shop[i+1, 7] = 5) textcolor = c_lime;$(13_10)		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);$(13_10)		$(13_10)	$(13_10)		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);$(13_10)		draw_set_font(fnt_shop)$(13_10)		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);$(13_10)		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);$(13_10)		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)		draw_set_font(fnt_normal)$(13_10)$(13_10)	}$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)} $(13_10)}$(13_10)// END OF SHOP SLOTS--------------------------------------------------$(13_10)	$(13_10)	var item_x1, item_y1$(13_10)	item_x1 = camera_get_view_x(view_camera)+ 835;$(13_10)	item_y1 = camera_get_view_y(view_camera)+ 115;$(13_10)	xx = 1;$(13_10)	yy = 1;$(13_10)$(13_10)if buyback = true {$(13_10)	$(13_10)	for (i = 21; i <29; i ++) {$(13_10)$(13_10)	draw_sprite_ext(spr_shop_item_button, 0, item_x1+colspace+(xx*colspace), item_y1+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = item_x1+colspace+(xx*colspace);$(13_10)	coordy[i] = item_y1+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = item_x1+colspace+(xx*colspace);$(13_10)	button[i].y = item_y1+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw the item sprite if it is there.$(13_10)	if global.shop[i] != -1 {$(13_10)$(13_10)		price = script_execute(scr_shop_prices)$(13_10)		$(13_10)		var textcolor = -1;$(13_10)		$(13_10)		if (global.shop[i+1, 7] = 1) textcolor = c_white;$(13_10)		if (global.shop[i+1, 7] = 5) textcolor = c_lime;$(13_10)		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);$(13_10)		$(13_10)	$(13_10)		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);$(13_10)		draw_set_font(fnt_shop)$(13_10)		$(13_10)		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);$(13_10)		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);$(13_10)		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)		draw_set_font(fnt_normal)$(13_10)		$(13_10)		// If the stack count is greater than 1, draw the amount in that stack$(13_10)		if global.shop[i+1, 9] > 1 {$(13_10)			// Draw transparent mask$(13_10)			draw_set_alpha(0.3);$(13_10)			draw_rectangle_color(coordx[i]-90, coordy[i]-18, coordx[i]-65, coordy[i]-6, c_black,c_black,c_black,c_black,false);$(13_10)			draw_set_alpha(1);$(13_10)					$(13_10)			draw_set_font(fnt_shop)$(13_10)			draw_text_color (coordx[i]-90,coordy[i]-19,string(global.shop[i+1, 9]),c_white,c_white,c_white,c_white,1);$(13_10)			draw_set_font(fnt_normal)		$(13_10)		}		$(13_10)	$(13_10)	}$(13_10)$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)$(13_10)	var item_x2, item_y2$(13_10)	item_x2 = camera_get_view_x(view_camera)+ 1045;$(13_10)	item_y2 = camera_get_view_y(view_camera)- 285;$(13_10)$(13_10)	for (i = 29; i <37; i ++) {$(13_10)	$(13_10)	draw_sprite_ext(spr_shop_item_button, 0, item_x2+colspace+(xx*colspace), item_y2+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = item_x2+colspace+(xx*colspace);$(13_10)	coordy[i] = item_y2+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = item_x2+colspace+(xx*colspace);$(13_10)	button[i].y = item_y2+colspace+(yy*colspace);$(13_10)	$(13_10)	// Draw item Sprite$(13_10)	if global.shop[i] != -1 {$(13_10)	$(13_10)		price = script_execute(scr_shop_prices)$(13_10)		$(13_10)		var textcolor = -1;$(13_10)		$(13_10)		if (global.shop[i+1, 7] = 1) textcolor = c_white;$(13_10)		if (global.shop[i+1, 7] = 5) textcolor = c_lime;$(13_10)		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);$(13_10)		$(13_10)	$(13_10)		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);$(13_10)		draw_set_font(fnt_shop)$(13_10)		$(13_10)		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);$(13_10)		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);$(13_10)		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)		draw_set_font(fnt_normal)$(13_10)		$(13_10)		// If the stack count is greater than 1, draw the amount in that stack$(13_10)		if global.shop[i+1, 9] > 1 {$(13_10)			// Draw transparent mask$(13_10)			draw_set_alpha(0.5);$(13_10)			draw_rectangle_color(coordx[i]-90, coordy[i]-18, coordx[i]-65, coordy[i]-6, c_black,c_black,c_black,c_black,false);$(13_10)			draw_set_alpha(1);$(13_10)					$(13_10)			draw_set_font(fnt_shop)$(13_10)			draw_text_color (coordx[i]-90,coordy[i]-19,string(global.shop[i+1, 9]),c_white,c_white,c_white,c_white,1);$(13_10)			draw_set_font(fnt_normal)				$(13_10)		}		$(13_10)			$(13_10)	}$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)} $(13_10)}	$(13_10)	$(13_10)$(13_10)// END OF BUYBACK SLOTS--------------------------------------------------	$(13_10)$(13_10)$(13_10)	// Draw the slot for the close button$(13_10)	for (i = 16; i <17; i ++) {$(13_10)		if o_mouse_pointer.sellmode = false {$(13_10)			draw_sprite(spr_sell_and_close, 0, camera_get_view_x(view_camera)+890, camera_get_view_y(view_camera)+617);$(13_10)		} else {$(13_10)			draw_sprite(spr_sell_and_close_red2, 0, camera_get_view_x(view_camera)+890, camera_get_view_y(view_camera)+617);$(13_10)		}$(13_10)		button[i].x = camera_get_view_x(view_camera)+890$(13_10)		button[i].y = camera_get_view_y(view_camera)+617$(13_10)	$(13_10)	}$(13_10)	$(13_10)	for (i = 17; i <18; i ++) {$(13_10)	$(13_10)		draw_sprite(spr_sell_and_close, 0, camera_get_view_x(view_camera)+1012, camera_get_view_y(view_camera)+617);$(13_10)		button[i].x = camera_get_view_x(view_camera)+1012$(13_10)		button[i].y = camera_get_view_y(view_camera)+617$(13_10)	$(13_10)	}$(13_10)$(13_10)	for (i = 18; i <19; i ++) {$(13_10)	$(13_10)		draw_sprite(spr_money_bar, 0, camera_get_view_x(view_camera)+1162, camera_get_view_y(view_camera)+617);$(13_10)		button[i].x = camera_get_view_x(view_camera)+1162$(13_10)		button[i].y = camera_get_view_y(view_camera)+617$(13_10)	$(13_10)	}$(13_10)	$(13_10)	for (i = 19; i <20; i ++) {$(13_10)		//draw_sprite(spr_border, 0, camera_get_view_x(view_camera)+875, camera_get_view_y(view_camera)+145);$(13_10)		button[i].x = camera_get_view_x(view_camera)+875;$(13_10)		button[i].y = camera_get_view_y(view_camera)+145;$(13_10)	}$(13_10)$(13_10)	for (i = 20; i <21; i ++) {$(13_10)	$(13_10)		//draw_sprite(spr_border, 0, camera_get_view_x(view_camera)+1205, camera_get_view_y(view_camera)+145);$(13_10)		button[i].x = camera_get_view_x(view_camera)+1205;$(13_10)		button[i].y = camera_get_view_y(view_camera)+145;$(13_10)	$(13_10)	}$(13_10)$(13_10)$(13_10)	$(13_10)	$(13_10)	$(13_10)}"
/// @description Execute Code

// Item Pricing is determined here.


if (showShop){
	
	// Close the Character Screen if it is open and prevent it from opening
	showChar = false;
	// Probably shouldnt require it open, but open only after talking to NPC

	// Set the depth to 1
	depth=-1;
	
	// Draw the inventory item and equip screen
	draw_sprite_ext(spr_shop_screen,0,camera_get_view_x(view_camera)+815, camera_get_view_y(view_camera)+120,1,1,0,c_white,1)
	
	// Draw the Shop's Type at the top
	
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+950,camera_get_view_y(view_camera)+135,string(shoptype), 100, 3000, 0.4, 0.4, 0, c_olive, c_red, c_olive, c_red, 1);
	draw_set_font(fnt_normal);

// Draw the item boxes

// Start drawing the shop slots (1-16)	

	var item_x1, item_y1
	item_x1 = camera_get_view_x(view_camera)+ 835;
	item_y1 = camera_get_view_y(view_camera)+ 115;
	xx = 1;
	yy = 1;

if shop = true {
	
	for (i = 0; i <8; i ++) {

	draw_sprite_ext(spr_shop_item_button, 0, item_x1+colspace+(xx*colspace), item_y1+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes
	// Draw the spacing
	coordx[i] = item_x1+colspace+(xx*colspace);
	coordy[i] = item_y1+colspace+(yy*colspace);
	
	// Draw the invis buttons X and Y coordinates
	button[i].x = item_x1+colspace+(xx*colspace);
	button[i].y = item_y1+colspace+(yy*colspace);
	
	// Draw the item sprite if it is there.
	if global.shop[i] != -1 {

		price = script_execute(scr_shop_prices)
		
		var textcolor = -1;
		
		if (global.shop[i+1, 7] = 1) textcolor = c_white;
		if (global.shop[i+1, 7] = 5) textcolor = c_lime;
		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);
		
	
		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);
		draw_set_font(fnt_shop)
		
		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);
		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);
		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_set_font(fnt_normal)
	
	}

	// Here is where we can use the columns and rows to help us draw
	if(xx < columns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
	}

	var item_x2, item_y2
	item_x2 = camera_get_view_x(view_camera)+ 1045;
	item_y2 = camera_get_view_y(view_camera)- 285;

	for (i = 8; i <16; i ++) {
	
	draw_sprite_ext(spr_shop_item_button, 0, item_x2+colspace+(xx*colspace), item_y2+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes
	// Draw the spacing
	coordx[i] = item_x2+colspace+(xx*colspace);
	coordy[i] = item_y2+colspace+(yy*colspace);
	
	// Draw the invis buttons X and Y coordinates
	button[i].x = item_x2+colspace+(xx*colspace);
	button[i].y = item_y2+colspace+(yy*colspace);
	
	// Draw item Sprite
	if global.shop[i] != -1 {

		price = script_execute(scr_shop_prices)
		
		var textcolor = -1;
		
		if (global.shop[i+1, 7] = 1) textcolor = c_white;
		if (global.shop[i+1, 7] = 5) textcolor = c_lime;
		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);
		
	
		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);
		draw_set_font(fnt_shop)
		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);
		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);
		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_set_font(fnt_normal)

	}
	
	// Here is where we can use the columns and rows to help us draw

	if(xx < columns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
} 
}
// END OF SHOP SLOTS--------------------------------------------------
	
	var item_x1, item_y1
	item_x1 = camera_get_view_x(view_camera)+ 835;
	item_y1 = camera_get_view_y(view_camera)+ 115;
	xx = 1;
	yy = 1;

if buyback = true {
	
	for (i = 21; i <29; i ++) {

	draw_sprite_ext(spr_shop_item_button, 0, item_x1+colspace+(xx*colspace), item_y1+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes
	// Draw the spacing
	coordx[i] = item_x1+colspace+(xx*colspace);
	coordy[i] = item_y1+colspace+(yy*colspace);
	
	// Draw the invis buttons X and Y coordinates
	button[i].x = item_x1+colspace+(xx*colspace);
	button[i].y = item_y1+colspace+(yy*colspace);
	
	// Draw the item sprite if it is there.
	if global.shop[i] != -1 {

		price = script_execute(scr_shop_prices)
		
		var textcolor = -1;
		
		if (global.shop[i+1, 7] = 1) textcolor = c_white;
		if (global.shop[i+1, 7] = 5) textcolor = c_lime;
		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);
		
	
		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);
		draw_set_font(fnt_shop)
		
		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);
		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);
		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_set_font(fnt_normal)
		
		// If the stack count is greater than 1, draw the amount in that stack
		if global.shop[i+1, 9] > 1 {
			// Draw transparent mask
			draw_set_alpha(0.3);
			draw_rectangle_color(coordx[i]-90, coordy[i]-18, coordx[i]-65, coordy[i]-6, c_black,c_black,c_black,c_black,false);
			draw_set_alpha(1);
					
			draw_set_font(fnt_shop)
			draw_text_color (coordx[i]-90,coordy[i]-19,string(global.shop[i+1, 9]),c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_normal)		
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

	var item_x2, item_y2
	item_x2 = camera_get_view_x(view_camera)+ 1045;
	item_y2 = camera_get_view_y(view_camera)- 285;

	for (i = 29; i <37; i ++) {
	
	draw_sprite_ext(spr_shop_item_button, 0, item_x2+colspace+(xx*colspace), item_y2+colspace+(yy*colspace), 1,1,0,c_white,1) //draws empty boxes
	// Draw the spacing
	coordx[i] = item_x2+colspace+(xx*colspace);
	coordy[i] = item_y2+colspace+(yy*colspace);
	
	// Draw the invis buttons X and Y coordinates
	button[i].x = item_x2+colspace+(xx*colspace);
	button[i].y = item_y2+colspace+(yy*colspace);
	
	// Draw item Sprite
	if global.shop[i] != -1 {
	
		price = script_execute(scr_shop_prices)
		
		var textcolor = -1;
		
		if (global.shop[i+1, 7] = 1) textcolor = c_white;
		if (global.shop[i+1, 7] = 5) textcolor = c_lime;
		if (global.shop[i+1, 7] = 10) textcolor = make_color_rgb(255,140,0);
		
	
		draw_sprite(spr_items, global.shop[i],coordx[i]-70,coordy[i]);
		draw_set_font(fnt_shop)
		
		draw_text_color (coordx[i]-40,coordy[i]-17,string(global.shop[i+1,5]),textcolor,textcolor,textcolor,textcolor,1);
		draw_sprite_ext(spr_coin,0,coordx[i]-30,coordy[i]+7,0.4,0.4,0,c_white,1);
		draw_text_color (coordx[i]-20,coordy[i],+" x "+string(string_thousands(price)),c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_set_font(fnt_normal)
		
		// If the stack count is greater than 1, draw the amount in that stack
		if global.shop[i+1, 9] > 1 {
			// Draw transparent mask
			draw_set_alpha(0.5);
			draw_rectangle_color(coordx[i]-90, coordy[i]-18, coordx[i]-65, coordy[i]-6, c_black,c_black,c_black,c_black,false);
			draw_set_alpha(1);
					
			draw_set_font(fnt_shop)
			draw_text_color (coordx[i]-90,coordy[i]-19,string(global.shop[i+1, 9]),c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_normal)				
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
}	
	

// END OF BUYBACK SLOTS--------------------------------------------------	


	// Draw the slot for the close button
	for (i = 16; i <17; i ++) {
		if o_mouse_pointer.sellmode = false {
			draw_sprite(spr_sell_and_close, 0, camera_get_view_x(view_camera)+890, camera_get_view_y(view_camera)+617);
		} else {
			draw_sprite(spr_sell_and_close_red2, 0, camera_get_view_x(view_camera)+890, camera_get_view_y(view_camera)+617);
		}
		button[i].x = camera_get_view_x(view_camera)+890
		button[i].y = camera_get_view_y(view_camera)+617
	
	}
	
	for (i = 17; i <18; i ++) {
	
		draw_sprite(spr_sell_and_close, 0, camera_get_view_x(view_camera)+1012, camera_get_view_y(view_camera)+617);
		button[i].x = camera_get_view_x(view_camera)+1012
		button[i].y = camera_get_view_y(view_camera)+617
	
	}

	for (i = 18; i <19; i ++) {
	
		draw_sprite(spr_money_bar, 0, camera_get_view_x(view_camera)+1162, camera_get_view_y(view_camera)+617);
		button[i].x = camera_get_view_x(view_camera)+1162
		button[i].y = camera_get_view_y(view_camera)+617
	
	}
	
	for (i = 19; i <20; i ++) {
		//draw_sprite(spr_border, 0, camera_get_view_x(view_camera)+875, camera_get_view_y(view_camera)+145);
		button[i].x = camera_get_view_x(view_camera)+875;
		button[i].y = camera_get_view_y(view_camera)+145;
	}

	for (i = 20; i <21; i ++) {
	
		//draw_sprite(spr_border, 0, camera_get_view_x(view_camera)+1205, camera_get_view_y(view_camera)+145);
		button[i].x = camera_get_view_x(view_camera)+1205;
		button[i].y = camera_get_view_y(view_camera)+145;
	
	}


	
	
	
}