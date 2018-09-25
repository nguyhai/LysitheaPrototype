/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 251F4C6E
/// @DnDArgument : "code" "if instance_exists(o_player) and o_player.cutscene = false {$(13_10)$(13_10)depth = -1;$(13_10)	// Circle$(13_10)	draw_sprite(spr_glass_circle,0,camera_get_view_x(view_camera),camera_get_view_y(view_camera)-15);$(13_10)	//draw_set_font(fnt_player_ui_text);$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+5,o_player_stats.stats[? "class"],100, 3000, 0.25, 0.25, 0, c_olive,c_olive,c_olive,c_olive,1);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+45,"LvL ",100, 3000, 0.2, 0.2, 0, c_olive,c_olive,c_olive,c_olive,1);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+65,camera_get_view_y(view_camera)+40,string(o_player_stats.level), 100, 3000, 0.3, 0.3, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);	$(13_10)$(13_10)	//HP BAR and Text$(13_10)	draw_health = lerp(draw_health, o_player_stats.stats[? "health"],0.1);$(13_10)	draw_mana = lerp(draw_mana, o_player_stats.stats[? "mana"],0.1);$(13_10)	draw_exp = lerp(draw_exp, o_player_stats.stats[? "experience"],0.1);$(13_10)	$(13_10)	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5)$(13_10)	draw_sprite_ext(spr_red_hp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5, draw_health/o_player_stats.stats[? "maxhealth"],1,0,c_white,1);$(13_10)	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5);$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_text(camera_get_view_x(view_camera)+325,camera_get_view_y(view_camera)+3, string(round(o_player_stats.stats[? "health"])) + "/" + string(round(o_player_stats.stats[? "maxhealth"])))$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fnt_normal_ui);$(13_10)	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+5, "HP")$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	//MP BAR$(13_10)	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25)$(13_10)	draw_sprite_ext(spr_blue_mp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25, draw_mana/o_player_stats.stats[? "maxmana"],1,0,c_white,1);$(13_10)	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25);$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_text(camera_get_view_x(view_camera)+325,camera_get_view_y(view_camera)+23, string(round(o_player_stats.stats[? "mana"])) + "/" + string(round(o_player_stats.stats[? "maxmana"])))$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+25);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fnt_normal_ui);$(13_10)	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+25, "MP");$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	//EX BAR$(13_10)	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45)$(13_10)	draw_sprite_ext(spr_purple_ex_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45, o_player_stats.stats[? "mana"]/o_player_stats.stats[? "maxmana"],1,0,c_white,1);$(13_10)	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45);$(13_10)	//draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+70, string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])))$(13_10)	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+45);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fnt_normal_ui);$(13_10)	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+45, "EX")$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	// Draw UI bar$(13_10)	draw_sprite(spr_ui_bar,0,camera_get_view_x(view_camera)-18,camera_get_view_y(view_camera)+675)$(13_10)	$(13_10)	//EXP BAR$(13_10)	draw_sprite(spr_exp_bar_blank,0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666);$(13_10)	draw_sprite_ext(spr_exp_bar_filled, 0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666, draw_exp/o_player_stats.stats[? "maxexperience"],1,0,c_white,1);$(13_10)	$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_font(fnt_equip_stat);$(13_10)	draw_text_color(camera_get_view_x(view_camera)+1236, camera_get_view_y(view_camera)+662, string((draw_exp/o_player_stats.stats[? "maxexperience"])*100)+"% EXP", c_black,c_black,c_black,c_black,1) $(13_10)	draw_text(camera_get_view_x(view_camera)+1235, camera_get_view_y(view_camera)+660, string((draw_exp/o_player_stats.stats[? "maxexperience"])*100)+"% EXP") $(13_10)	draw_set_halign(fa_left);$(13_10)	draw_set_font(fnt_normal);$(13_10)	// Draw the buttons in the array$(13_10)$(13_10)	var x1, x2, y1, x3,x4,x5,x6;$(13_10)	y1 = camera_get_view_y(view_camera)+698;$(13_10)	x1 = camera_get_view_x(view_camera)+65;$(13_10)	x2 = x1+115;$(13_10)	x3 = x2+115;$(13_10)	$(13_10)	x4 = x1+920;$(13_10)	x5 = x4+115;$(13_10)	x6 = x5+115;$(13_10)	$(13_10)	var orange = make_color_rgb(255,140,50)$(13_10)	$(13_10)	for (i = 0; i<1; i++) {$(13_10)		draw_sprite(spr_ui_button, 0, x1, y1) //draws empty boxes$(13_10)$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_font(fnt_menu)$(13_10)		draw_text_ext_color(x1+1, y1-10+1, "Menu",200,200,c_black,c_black,c_black,c_black,1) $(13_10)		draw_text_ext_color(x1, y1-10, "Menu",200,200,c_black,c_olive,c_black,c_olive,1) $(13_10)		draw_set_font(fnt_normal)$(13_10)		draw_set_halign(fa_left)$(13_10)$(13_10)		button[i].x = x1;$(13_10)		button[i].y = y1;$(13_10)	}$(13_10)$(13_10)	for (i = 1; i<2; i++) {$(13_10)		draw_sprite(spr_ui_button, 0, x1+115, y1) //draws empty boxes$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_font(fnt_menu)$(13_10)		draw_text_ext_color(x2+1, y1-10+1, "Quests",200,200,c_black,c_black,c_black,c_black,1) $(13_10)		draw_text_ext_color(x2, y1-10, "Quests",200,200,c_black,c_olive,c_black,c_olive,1) $(13_10)		draw_set_font(fnt_normal)$(13_10)		draw_set_halign(fa_left)$(13_10)		button[i].x = x1+115;$(13_10)		button[i].y = y1;$(13_10)		$(13_10)	}$(13_10)	$(13_10)	for (i = 2; i<3; i++) {$(13_10)		draw_sprite(spr_ui_button, 0, x1+230, y1) //draws empty boxes$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_font(fnt_menu)$(13_10)		draw_text_ext_color(x3+1, y1-10+1, "Pet",200,200,c_black,c_black,c_black,c_black,1) $(13_10)		draw_text_ext_color(x3, y1-10, "Pet",200,200,c_black,c_olive,c_black,c_olive,1) $(13_10)		draw_set_font(fnt_normal)$(13_10)		draw_set_halign(fa_left)$(13_10)		button[i].x = x1+230;$(13_10)		button[i].y = y1;$(13_10)	}$(13_10)	$(13_10)	for (i = 3; i<4; i++) {$(13_10)		draw_sprite(spr_ui_button, 0, x4, y1) //draws empty boxes$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_font(fnt_menu)$(13_10)		draw_text_ext_color(x4+1, y1-10+1, "Inventory",200,200,c_black,c_black,c_black,c_black,1) $(13_10)		draw_text_ext_color(x4, y1-10, "Inventory",200,200,c_black,c_olive,c_black,c_olive,1)$(13_10)		draw_set_font(fnt_normal)$(13_10)		draw_set_halign(fa_left)$(13_10)		button[i].x = x4;$(13_10)		button[i].y = y1;$(13_10)	}$(13_10)	$(13_10)	for (i = 4; i<5; i++) {$(13_10)		// Draw flashing red border if new stat points available$(13_10)		if o_player_stats.stats[? "statpoints"] > 0{$(13_10)			draw_sprite_ext(spr_ui_button_red_border, 0, x5, y1,1,1,0,c_white,wave(0.2,0.9,1.5,0)) $(13_10)		}$(13_10)		draw_sprite(spr_ui_button, 0, x5, y1) //draws empty boxes$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_font(fnt_menu)$(13_10)		draw_text_ext_color(x5+1, y1-10+1, "Character",200,200,c_black,c_black,c_black,c_black,1) $(13_10)		draw_text_ext_color(x5, y1-10, "Character",200,200,c_black,c_olive,c_black,c_olive,1) $(13_10)		draw_set_font(fnt_normal)$(13_10)		draw_set_halign(fa_left)$(13_10)		button[i].x = x5;$(13_10)		button[i].y = y1;$(13_10)	}$(13_10)	$(13_10)	for (i = 5; i<6; i++) {$(13_10)		// Draw flashing red border if new skill points available$(13_10)		if o_player_stats.stats[? "skillpoints"] > 0{$(13_10)			draw_sprite_ext(spr_ui_button_red_border, 0, x6, y1,1,1,0,c_white,wave(0.2,0.9,1.5,0)) $(13_10)		}$(13_10)		draw_sprite(spr_ui_button, 0, x6, y1) //draws empty boxes$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_font(fnt_menu)$(13_10)		draw_text_ext_color(x6+1, y1-10+1, "Skills",200,200,c_black,c_black,c_black,c_black,1) $(13_10)		draw_text_ext_color(x6, y1-10, "Skills",200,200,c_black,c_olive,c_black,c_olive,1) $(13_10)		draw_set_font(fnt_normal)$(13_10)		draw_set_halign(fa_left)$(13_10)		button[i].x = x6;$(13_10)		button[i].y = y1;$(13_10)	}$(13_10)	$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
if instance_exists(o_player) and o_player.cutscene = false {

depth = -1;
	// Circle
	draw_sprite(spr_glass_circle,0,camera_get_view_x(view_camera),camera_get_view_y(view_camera)-15);
	//draw_set_font(fnt_player_ui_text);
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+5,o_player_stats.stats[? "class"],100, 3000, 0.25, 0.25, 0, c_olive,c_olive,c_olive,c_olive,1);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+45,"LvL ",100, 3000, 0.2, 0.2, 0, c_olive,c_olive,c_olive,c_olive,1);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+65,camera_get_view_y(view_camera)+40,string(o_player_stats.level), 100, 3000, 0.3, 0.3, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);	

	//HP BAR and Text
	draw_health = lerp(draw_health, o_player_stats.stats[? "health"],0.1);
	draw_mana = lerp(draw_mana, o_player_stats.stats[? "mana"],0.1);
	draw_exp = lerp(draw_exp, o_player_stats.stats[? "experience"],0.1);
	
	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5)
	draw_sprite_ext(spr_red_hp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5, draw_health/o_player_stats.stats[? "maxhealth"],1,0,c_white,1);
	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5);
	draw_set_halign(fa_center);
	draw_text(camera_get_view_x(view_camera)+325,camera_get_view_y(view_camera)+3, string(round(o_player_stats.stats[? "health"])) + "/" + string(round(o_player_stats.stats[? "maxhealth"])))
	draw_set_halign(fa_left);
	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+5);
	draw_set_color(c_black);
	draw_set_font(fnt_normal_ui);
	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+5, "HP")
	draw_set_font(fnt_normal);
	draw_set_color(c_white);
	
	//MP BAR
	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25)
	draw_sprite_ext(spr_blue_mp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25, draw_mana/o_player_stats.stats[? "maxmana"],1,0,c_white,1);
	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25);
	draw_set_halign(fa_center);
	draw_text(camera_get_view_x(view_camera)+325,camera_get_view_y(view_camera)+23, string(round(o_player_stats.stats[? "mana"])) + "/" + string(round(o_player_stats.stats[? "maxmana"])))
	draw_set_halign(fa_left);
	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+25);
	draw_set_color(c_black);
	draw_set_font(fnt_normal_ui);
	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+25, "MP");
	draw_set_font(fnt_normal);
	draw_set_color(c_white);
	
	//EX BAR
	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45)
	draw_sprite_ext(spr_purple_ex_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45, o_player_stats.stats[? "mana"]/o_player_stats.stats[? "maxmana"],1,0,c_white,1);
	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45);
	//draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+70, string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])))
	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+45);
	draw_set_color(c_black);
	draw_set_font(fnt_normal_ui);
	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+45, "EX")
	draw_set_font(fnt_normal);
	draw_set_color(c_white);
	
	// Draw UI bar
	draw_sprite(spr_ui_bar,0,camera_get_view_x(view_camera)-18,camera_get_view_y(view_camera)+675)
	
	//EXP BAR
	draw_sprite(spr_exp_bar_blank,0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666);
	draw_sprite_ext(spr_exp_bar_filled, 0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666, draw_exp/o_player_stats.stats[? "maxexperience"],1,0,c_white,1);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_equip_stat);
	draw_text_color(camera_get_view_x(view_camera)+1236, camera_get_view_y(view_camera)+662, string((draw_exp/o_player_stats.stats[? "maxexperience"])*100)+"% EXP", c_black,c_black,c_black,c_black,1) 
	draw_text(camera_get_view_x(view_camera)+1235, camera_get_view_y(view_camera)+660, string((draw_exp/o_player_stats.stats[? "maxexperience"])*100)+"% EXP") 
	draw_set_halign(fa_left);
	draw_set_font(fnt_normal);
	// Draw the buttons in the array

	var x1, x2, y1, x3,x4,x5,x6;
	y1 = camera_get_view_y(view_camera)+698;
	x1 = camera_get_view_x(view_camera)+65;
	x2 = x1+115;
	x3 = x2+115;
	
	x4 = x1+920;
	x5 = x4+115;
	x6 = x5+115;
	
	var orange = make_color_rgb(255,140,50)
	
	for (i = 0; i<1; i++) {
		draw_sprite(spr_ui_button, 0, x1, y1) //draws empty boxes

		draw_set_halign(fa_center)
		draw_set_font(fnt_menu)
		draw_text_ext_color(x1+1, y1-10+1, "Menu",200,200,c_black,c_black,c_black,c_black,1) 
		draw_text_ext_color(x1, y1-10, "Menu",200,200,c_black,c_olive,c_black,c_olive,1) 
		draw_set_font(fnt_normal)
		draw_set_halign(fa_left)

		button[i].x = x1;
		button[i].y = y1;
	}

	for (i = 1; i<2; i++) {
		draw_sprite(spr_ui_button, 0, x1+115, y1) //draws empty boxes
		draw_set_halign(fa_center)
		draw_set_font(fnt_menu)
		draw_text_ext_color(x2+1, y1-10+1, "Quests",200,200,c_black,c_black,c_black,c_black,1) 
		draw_text_ext_color(x2, y1-10, "Quests",200,200,c_black,c_olive,c_black,c_olive,1) 
		draw_set_font(fnt_normal)
		draw_set_halign(fa_left)
		button[i].x = x1+115;
		button[i].y = y1;
		
	}
	
	for (i = 2; i<3; i++) {
		draw_sprite(spr_ui_button, 0, x1+230, y1) //draws empty boxes
		draw_set_halign(fa_center)
		draw_set_font(fnt_menu)
		draw_text_ext_color(x3+1, y1-10+1, "Pet",200,200,c_black,c_black,c_black,c_black,1) 
		draw_text_ext_color(x3, y1-10, "Pet",200,200,c_black,c_olive,c_black,c_olive,1) 
		draw_set_font(fnt_normal)
		draw_set_halign(fa_left)
		button[i].x = x1+230;
		button[i].y = y1;
	}
	
	for (i = 3; i<4; i++) {
		draw_sprite(spr_ui_button, 0, x4, y1) //draws empty boxes
		draw_set_halign(fa_center)
		draw_set_font(fnt_menu)
		draw_text_ext_color(x4+1, y1-10+1, "Inventory",200,200,c_black,c_black,c_black,c_black,1) 
		draw_text_ext_color(x4, y1-10, "Inventory",200,200,c_black,c_olive,c_black,c_olive,1)
		draw_set_font(fnt_normal)
		draw_set_halign(fa_left)
		button[i].x = x4;
		button[i].y = y1;
	}
	
	for (i = 4; i<5; i++) {
		// Draw flashing red border if new stat points available
		if o_player_stats.stats[? "statpoints"] > 0{
			draw_sprite_ext(spr_ui_button_red_border, 0, x5, y1,1,1,0,c_white,wave(0.2,0.9,1.5,0)) 
		}
		draw_sprite(spr_ui_button, 0, x5, y1) //draws empty boxes
		draw_set_halign(fa_center)
		draw_set_font(fnt_menu)
		draw_text_ext_color(x5+1, y1-10+1, "Character",200,200,c_black,c_black,c_black,c_black,1) 
		draw_text_ext_color(x5, y1-10, "Character",200,200,c_black,c_olive,c_black,c_olive,1) 
		draw_set_font(fnt_normal)
		draw_set_halign(fa_left)
		button[i].x = x5;
		button[i].y = y1;
	}
	
	for (i = 5; i<6; i++) {
		// Draw flashing red border if new skill points available
		if o_player_stats.stats[? "skillpoints"] > 0{
			draw_sprite_ext(spr_ui_button_red_border, 0, x6, y1,1,1,0,c_white,wave(0.2,0.9,1.5,0)) 
		}
		draw_sprite(spr_ui_button, 0, x6, y1) //draws empty boxes
		draw_set_halign(fa_center)
		draw_set_font(fnt_menu)
		draw_text_ext_color(x6+1, y1-10+1, "Skills",200,200,c_black,c_black,c_black,c_black,1) 
		draw_text_ext_color(x6, y1-10, "Skills",200,200,c_black,c_olive,c_black,c_olive,1) 
		draw_set_font(fnt_normal)
		draw_set_halign(fa_left)
		button[i].x = x6;
		button[i].y = y1;
	}
	


}