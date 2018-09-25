/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 122F3080
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (showChar){$(13_10)	$(13_10)	// Set the depth to 1$(13_10)	depth=-1;$(13_10)	$(13_10)	// Draw the inventory item and equip screen$(13_10)	draw_sprite_ext(spr_character_screen,0,camera_get_view_x(view_camera)+815, camera_get_view_y(view_camera)+120,1,1,0,c_white,1)$(13_10)	$(13_10)	// Draw the word CHARACTER center top$(13_10)	$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+950,camera_get_view_y(view_camera)+135,"Character", 100, 3000, 0.4, 0.4, 0, c_olive, c_red, c_olive, c_red, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	$(13_10)	// Draw Job and Title and LEVEL$(13_10)	$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+200,"JOB : "+""+ string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+223,"TITLE: " +""+ string(o_player_stats.stats[? "title"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);	$(13_10)	$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+246,"LEVEL: " +""+ string(o_player_stats.level), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);	$(13_10)$(13_10)	// Draw remaing SKILL and STAT points$(13_10)	$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+269,"STAT POINTS: " +""+ string(o_player_stats.stats[? "statpoints"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);	$(13_10)$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+292,"SKILL POINTS: " +""+ string(o_player_stats.stats[? "skillpoints"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);	$(13_10)$(13_10)$(13_10)	// Draw the Stats on the right------------------------------------------------------------------------------------------------------$(13_10)	$(13_10)	// STR STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+200,"STR", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+195,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+220,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "strength"]+scr_calc_equip_str()))$(13_10)$(13_10)	// DEX STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+230,"DEX", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+225,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+250,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+230,string(o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()))$(13_10)$(13_10)$(13_10)	// INT STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+260,"INT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+255,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+280,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+260,string(o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()))$(13_10)	$(13_10)	$(13_10)	// VIT STAT$(13_10)$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+290,"VIT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+285,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+310,c_black,c_black,0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+290,string(o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()))$(13_10)	$(13_10)	// ------------------------------------------$(13_10)	$(13_10)	// Need to create system to add/remove stat points if they are available. If character screen is open, it will allow this$(13_10)	// If character screen closes, the stats will stay and cannot be changed anymore. $(13_10)$(13_10)	// Draw the stat boxes$(13_10)	var stat_x1, stat_y1$(13_10)	stat_x1 = camera_get_view_x(view_camera)+ 1030;$(13_10)	stat_y1 = camera_get_view_y(view_camera)+ 150;$(13_10)	xx = 1;$(13_10)	yy = 1;$(13_10)	$(13_10)	for (i = 0; i <8; i ++) {$(13_10)	$(13_10)	//draw_sprite(spr_stat_border, 0, stat_x1+statspace+(xx*statspace), stat_y1+statspace+(yy*statspace)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	stat_coordx[i] = stat_x1+statspace+(xx*statspace);$(13_10)	stat_coordy[i] = stat_y1+statspace+(yy*statspace);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	stat_button[i].x = stat_x1+statspace+(xx*statspace);$(13_10)	stat_button[i].y = stat_y1+statspace+(yy*statspace);$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < statcolumns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)//--------------------------------------------------------------------------------------------------$(13_10)$(13_10)// Draw the boxes used for hover info$(13_10)$(13_10)	var stat_x2, stat_y2$(13_10)	stat_x2 = camera_get_view_x(view_camera)+ 850;$(13_10)	stat_y2 = camera_get_view_y(view_camera)+ 280;$(13_10)	xx = 1;$(13_10)	yy = 1;$(13_10)	$(13_10)	for (q = 0; q <12; q ++) {$(13_10)	$(13_10)	//draw_sprite(spr_info_border, 0, stat_x2+colspace+(xx*colspace), stat_y2+colspace+(yy*colspace)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	info_coord1x[q] = stat_x2+colspace+(xx*colspace);$(13_10)	info_coord1y[q] = stat_y2+colspace+(yy*colspace);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	info_button1[q].x = stat_x2+colspace+(xx*colspace);$(13_10)	info_button1[q].y = stat_y2+colspace+(yy*colspace);$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < infocolumns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)//------- Second COLUMN ---------$(13_10)$(13_10)	var stat_x3, stat_y3$(13_10)	stat_x3 = camera_get_view_x(view_camera)+ 1055;$(13_10)	stat_y3 = camera_get_view_y(view_camera)+ 280;$(13_10)	xx = 1;$(13_10)	yy = 1;$(13_10)	$(13_10)	for (q = 0; q <12; q ++) {$(13_10)	$(13_10)	//draw_sprite(spr_info_border, 0, stat_x3+colspace+(xx*colspace), stat_y3+colspace+(yy*colspace)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	info_coord2x[q] = stat_x3+colspace+(xx*colspace);$(13_10)	info_coord2y[q] = stat_y3+colspace+(yy*colspace);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	info_button2[q].x = stat_x3+colspace+(xx*colspace);$(13_10)	info_button2[q].y = stat_y3+colspace+(yy*colspace);$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < infocolumns){$(13_10)		xx +=1;$(13_10)	}else{$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)$(13_10)// LEFT SIDE------------------------------------------------------------------------------------------$(13_10)var stat_name_color = c_black;$(13_10)var stat_color = c_yellow;$(13_10)// Max HP$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+323,"Max HP: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+323,string(round(o_player_stats.stats[? "maxhealth"])));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Max MP$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+323,"Max MP: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+323,string(round(o_player_stats.stats[? "maxmana"])));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Crit %$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+347,"Crit Rate: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+347,string(o_player_stats.totalcrit));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Crit Bonus$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+373,"Crit Bonus: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+373,string(scr_calc_crit_multiplier()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// EVASION$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+397,"Evasion: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+397,string(o_player_stats.totalevade));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// HP Regen$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+423,"HP Regen: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+423,string(round(o_player_stats.restore_hp_amount)));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// MP Regen$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+448,"MP Regen: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+448,string(round(o_player_stats.restore_mp_amount)));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Phys %$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+472,"Phys %: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+472,string(scr_calc_equip_bonus_phys()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Fire %$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+497,"Fire %: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+497,string(scr_calc_equip_bonus_fire()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Ice %$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+522,"Ice %: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+522,string(scr_calc_equip_bonus_ice()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Lightning %$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+548,"Lightning %: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+548,string(scr_calc_equip_bonus_lightning()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Light %$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+573,"Light %: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+573,string(scr_calc_equip_bonus_light()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Shadow %$(13_10)$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+596,"Shadow %: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+596,string(scr_calc_equip_bonus_shadow()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)$(13_10)// RIGHT SIDE---------------------------$(13_10)$(13_10)// AVERAGE ATK PWR$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+347,"Average ATK: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+347,string(round((o_player_stats.min_dmg+o_player_stats.max_dmg)/2)));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// DEFENSE$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+373,"Defense: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+373,string(o_player_stats.stats[? "defense"]+ scr_calc_equip_defense()));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// MOVE SPEED$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+397,"Move Speed: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+397,string(o_player.spd));$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Spell Bonus$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+423,"Spell Bonus: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+423,scr_spellbonus_from_int());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// EX Duration$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+448,"EX Duration: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+448,o_player_stats.totalexduration);$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// PHYS RESIST$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+472,"Phys Def: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+472,scr_calc_equip_resist_phys());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Fire RESIST$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+497,"Fire Def: ");$(13_10)draw_set_font(fnt_character_stats_num);	$(13_10)draw_set_color(stat_color); $(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+497,scr_calc_equip_resist_fire());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Ice RESIST$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+522,"Ice Def: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+522,scr_calc_equip_resist_ice());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Lightning RESIST$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+548,"Lightning Def: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+548,scr_calc_equip_resist_lightning());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Light RESIST$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+573,"Light Def: ");$(13_10)draw_set_font(fnt_character_stats_num);$(13_10)draw_set_color(stat_color);	 $(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+573,scr_calc_equip_resist_light());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Shadow RESIST$(13_10)$(13_10)draw_set_font(fnt_character_stats);$(13_10)draw_set_color(stat_name_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+596,"Shadow Def: ");$(13_10)draw_set_font(fnt_character_stats_num);	 $(13_10)draw_set_color(stat_color);$(13_10)draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+596,scr_calc_equip_resist_shadow());$(13_10)draw_set_font(fnt_normal);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)	$(13_10)	$(13_10)	$(13_10)}"
/// @description Execute Code

if (showChar){
	
	// Set the depth to 1
	depth=-1;
	
	// Draw the inventory item and equip screen
	draw_sprite_ext(spr_character_screen,0,camera_get_view_x(view_camera)+815, camera_get_view_y(view_camera)+120,1,1,0,c_white,1)
	
	// Draw the word CHARACTER center top
	
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+950,camera_get_view_y(view_camera)+135,"Character", 100, 3000, 0.4, 0.4, 0, c_olive, c_red, c_olive, c_red, 1);
	draw_set_font(fnt_normal);
	
	// Draw Job and Title and LEVEL
	
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+200,"JOB : "+""+ string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+223,"TITLE: " +""+ string(o_player_stats.stats[? "title"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);	
	
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+246,"LEVEL: " +""+ string(o_player_stats.level), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);	

	// Draw remaing SKILL and STAT points
	
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+269,"STAT POINTS: " +""+ string(o_player_stats.stats[? "statpoints"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);	


	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+850,camera_get_view_y(view_camera)+292,"SKILL POINTS: " +""+ string(o_player_stats.stats[? "skillpoints"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	//draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1120,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "class"]), 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);	


	// Draw the Stats on the right------------------------------------------------------------------------------------------------------
	
	// STR STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+200,"STR", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+195,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+220,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+200,string(o_player_stats.stats[? "strength"]+scr_calc_equip_str()))

	// DEX STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+230,"DEX", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+225,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+250,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+230,string(o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex()))


	// INT STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+260,"INT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+255,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+280,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+260,string(o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel()))
	
	
	// VIT STAT

	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+1140,camera_get_view_y(view_camera)+290,"VIT", 100, 3000, 0.2, 0.2, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);
	draw_set_alpha(0.8);
	draw_roundrect_color(camera_get_view_x(view_camera)+1183,camera_get_view_y(view_camera)+285,camera_get_view_x(view_camera)+1233,camera_get_view_y(view_camera)+310,c_black,c_black,0);
	draw_set_alpha(1);
	draw_text(camera_get_view_x(view_camera)+1185,camera_get_view_y(view_camera)+290,string(o_player_stats.stats[? "vitality"]+scr_calc_equip_vit()))
	
	// ------------------------------------------
	
	// Need to create system to add/remove stat points if they are available. If character screen is open, it will allow this
	// If character screen closes, the stats will stay and cannot be changed anymore. 

	// Draw the stat boxes
	var stat_x1, stat_y1
	stat_x1 = camera_get_view_x(view_camera)+ 1030;
	stat_y1 = camera_get_view_y(view_camera)+ 150;
	xx = 1;
	yy = 1;
	
	for (i = 0; i <8; i ++) {
	
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
//--------------------------------------------------------------------------------------------------

// Draw the boxes used for hover info

	var stat_x2, stat_y2
	stat_x2 = camera_get_view_x(view_camera)+ 850;
	stat_y2 = camera_get_view_y(view_camera)+ 280;
	xx = 1;
	yy = 1;
	
	for (q = 0; q <12; q ++) {
	
	//draw_sprite(spr_info_border, 0, stat_x2+colspace+(xx*colspace), stat_y2+colspace+(yy*colspace)) //draws empty boxes
	// Draw the spacing
	info_coord1x[q] = stat_x2+colspace+(xx*colspace);
	info_coord1y[q] = stat_y2+colspace+(yy*colspace);
	// Draw the invis buttons X and Y coordinates
	info_button1[q].x = stat_x2+colspace+(xx*colspace);
	info_button1[q].y = stat_y2+colspace+(yy*colspace);
	
	// Here is where we can use the columns and rows to help us draw
	if(xx < infocolumns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
	}
//------- Second COLUMN ---------

	var stat_x3, stat_y3
	stat_x3 = camera_get_view_x(view_camera)+ 1055;
	stat_y3 = camera_get_view_y(view_camera)+ 280;
	xx = 1;
	yy = 1;
	
	for (q = 0; q <12; q ++) {
	
	//draw_sprite(spr_info_border, 0, stat_x3+colspace+(xx*colspace), stat_y3+colspace+(yy*colspace)) //draws empty boxes
	// Draw the spacing
	info_coord2x[q] = stat_x3+colspace+(xx*colspace);
	info_coord2y[q] = stat_y3+colspace+(yy*colspace);
	// Draw the invis buttons X and Y coordinates
	info_button2[q].x = stat_x3+colspace+(xx*colspace);
	info_button2[q].y = stat_y3+colspace+(yy*colspace);
	
	// Here is where we can use the columns and rows to help us draw
	if(xx < infocolumns){
		xx +=1;
	}else{
		xx=1;
		yy+=1;
	}
	}

// LEFT SIDE------------------------------------------------------------------------------------------
var stat_name_color = c_black;
var stat_color = c_yellow;
// Max HP
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+323,"Max HP: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+323,string(round(o_player_stats.stats[? "maxhealth"])));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Max MP
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+323,"Max MP: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+323,string(round(o_player_stats.stats[? "maxmana"])));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Crit %
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+347,"Crit Rate: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+347,string(o_player_stats.totalcrit));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Crit Bonus
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+373,"Crit Bonus: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+373,string(scr_calc_crit_multiplier()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// EVASION
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+397,"Evasion: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+397,string(o_player_stats.totalevade));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// HP Regen
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+423,"HP Regen: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+423,string(round(o_player_stats.restore_hp_amount)));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// MP Regen
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+448,"MP Regen: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+448,string(round(o_player_stats.restore_mp_amount)));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Phys %
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+472,"Phys %: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+472,string(scr_calc_equip_bonus_phys()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Fire %
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+497,"Fire %: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+497,string(scr_calc_equip_bonus_fire()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Ice %
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+522,"Ice %: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+522,string(scr_calc_equip_bonus_ice()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Lightning %
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+548,"Lightning %: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+548,string(scr_calc_equip_bonus_lightning()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Light %
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+573,"Light %: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+573,string(scr_calc_equip_bonus_light()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Shadow %

draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+855,camera_get_view_y(view_camera)+596,"Shadow %: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+970,camera_get_view_y(view_camera)+596,string(scr_calc_equip_bonus_shadow()));
draw_set_font(fnt_normal);
draw_set_color(c_white);


// RIGHT SIDE---------------------------

// AVERAGE ATK PWR
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+347,"Average ATK: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+347,string(round((o_player_stats.min_dmg+o_player_stats.max_dmg)/2)));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// DEFENSE
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+373,"Defense: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+373,string(o_player_stats.stats[? "defense"]+ scr_calc_equip_defense()));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// MOVE SPEED
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+397,"Move Speed: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+397,string(o_player.spd));
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Spell Bonus
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+423,"Spell Bonus: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+423,scr_spellbonus_from_int());
draw_set_font(fnt_normal);
draw_set_color(c_white);

// EX Duration
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+448,"EX Duration: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+448,o_player_stats.totalexduration);
draw_set_font(fnt_normal);
draw_set_color(c_white);

// PHYS RESIST
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+472,"Phys Def: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+472,scr_calc_equip_resist_phys());
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Fire RESIST
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+497,"Fire Def: ");
draw_set_font(fnt_character_stats_num);	
draw_set_color(stat_color); 
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+497,scr_calc_equip_resist_fire());
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Ice RESIST
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+522,"Ice Def: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+522,scr_calc_equip_resist_ice());
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Lightning RESIST
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+548,"Lightning Def: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+548,scr_calc_equip_resist_lightning());
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Light RESIST
draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+573,"Light Def: ");
draw_set_font(fnt_character_stats_num);
draw_set_color(stat_color);	 
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+573,scr_calc_equip_resist_light());
draw_set_font(fnt_normal);
draw_set_color(c_white);

// Shadow RESIST

draw_set_font(fnt_character_stats);
draw_set_color(stat_name_color);
draw_text(camera_get_view_x(view_camera)+1060,camera_get_view_y(view_camera)+596,"Shadow Def: ");
draw_set_font(fnt_character_stats_num);	 
draw_set_color(stat_color);
draw_text(camera_get_view_x(view_camera)+1175,camera_get_view_y(view_camera)+596,scr_calc_equip_resist_shadow());
draw_set_font(fnt_normal);
draw_set_color(c_white);












	
	
	
}