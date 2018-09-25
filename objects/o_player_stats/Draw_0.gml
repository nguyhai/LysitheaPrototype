/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 674DA891
/// @DnDArgument : "code" "/// @description Draws the UI bar and Player Bars$(13_10)/*$(13_10)if instance_exists(o_player) and o_player.cutscene = false {$(13_10)$(13_10)depth = -1;$(13_10)	// Circle$(13_10)	draw_sprite(spr_glass_circle,0,camera_get_view_x(view_camera),camera_get_view_y(view_camera)-15);$(13_10)	//draw_set_font(fnt_player_ui_text);$(13_10)	draw_set_font(global.fnt_cartoon4);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+5,stats[? "class"],100, 3000, 0.25, 0.25, 0, c_olive,c_olive,c_olive,c_olive,1);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+45,"LvL ",100, 3000, 0.2, 0.2, 0, c_olive,c_olive,c_olive,c_olive,1);$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+65,camera_get_view_y(view_camera)+40,string(level), 100, 3000, 0.3, 0.3, 0, c_olive, c_olive, c_olive, c_olive, 1);$(13_10)	draw_set_font(fnt_normal);	$(13_10)$(13_10)	//HP BAR and Text$(13_10)	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5)$(13_10)	draw_sprite_ext(spr_red_hp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5, stats[? "health"]/stats[? "maxhealth"],1,0,c_white,1);$(13_10)	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5);$(13_10)	draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+3, string(round(stats[? "health"])) + "/" + string(round(stats[? "maxhealth"])))$(13_10)	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fnt_normal_ui);$(13_10)	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+5, "HP")$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_color(c_white);$(13_10)	//MP BAR$(13_10)	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25)$(13_10)	draw_sprite_ext(spr_blue_mp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25, stats[? "mana"]/stats[? "maxmana"],1,0,c_white,1);$(13_10)	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25);$(13_10)	draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+23, string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])))$(13_10)	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+25);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fnt_normal_ui);$(13_10)	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+25, "MP");$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	//EX BAR$(13_10)	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45)$(13_10)	draw_sprite_ext(spr_purple_ex_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45, stats[? "mana"]/stats[? "maxmana"],1,0,c_white,1);$(13_10)	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45);$(13_10)	//draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+70, string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])))$(13_10)	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+45);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fnt_normal_ui);$(13_10)	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+45, "EX")$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_set_color(c_white);$(13_10)	$(13_10)	// Draw UI bar$(13_10)	draw_sprite(spr_ui_bar,0,camera_get_view_x(view_camera)-18,camera_get_view_y(view_camera)+675)$(13_10)	$(13_10)	//EXP BAR$(13_10)	draw_sprite(spr_exp_bar_blank,0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666);$(13_10)	draw_sprite_ext(spr_exp_bar_filled, 0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666, stats[? "experience"]/stats[? "maxexperience"],1,0,c_white,1);$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Draws the UI bar and Player Bars
/*
if instance_exists(o_player) and o_player.cutscene = false {

depth = -1;
	// Circle
	draw_sprite(spr_glass_circle,0,camera_get_view_x(view_camera),camera_get_view_y(view_camera)-15);
	//draw_set_font(fnt_player_ui_text);
	draw_set_font(global.fnt_cartoon4);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+5,stats[? "class"],100, 3000, 0.25, 0.25, 0, c_olive,c_olive,c_olive,c_olive,1);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+10,camera_get_view_y(view_camera)+45,"LvL ",100, 3000, 0.2, 0.2, 0, c_olive,c_olive,c_olive,c_olive,1);
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+65,camera_get_view_y(view_camera)+40,string(level), 100, 3000, 0.3, 0.3, 0, c_olive, c_olive, c_olive, c_olive, 1);
	draw_set_font(fnt_normal);	

	//HP BAR and Text
	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5)
	draw_sprite_ext(spr_red_hp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5, stats[? "health"]/stats[? "maxhealth"],1,0,c_white,1);
	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+5);
	draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+3, string(round(stats[? "health"])) + "/" + string(round(stats[? "maxhealth"])))
	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+5);
	draw_set_color(c_black);
	draw_set_font(fnt_normal_ui);
	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+5, "HP")
	draw_set_font(fnt_normal);
	draw_set_color(c_white);
	//MP BAR
	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25)
	draw_sprite_ext(spr_blue_mp_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25, stats[? "mana"]/stats[? "maxmana"],1,0,c_white,1);
	draw_sprite(spr_glass_bar,0,camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+25);
	draw_text(camera_get_view_x(view_camera)+300,camera_get_view_y(view_camera)+23, string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])))
	draw_sprite(spr_wood_button,0,camera_get_view_x(view_camera)+190,camera_get_view_y(view_camera)+25);
	draw_set_color(c_black);
	draw_set_font(fnt_normal_ui);
	draw_text(camera_get_view_x(view_camera)+182,camera_get_view_y(view_camera)+25, "MP");
	draw_set_font(fnt_normal);
	draw_set_color(c_white);
	
	//EX BAR
	draw_sprite(spr_background_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45)
	draw_sprite_ext(spr_purple_ex_bar, 0, camera_get_view_x(view_camera)+212,camera_get_view_y(view_camera)+45, stats[? "mana"]/stats[? "maxmana"],1,0,c_white,1);
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
	draw_sprite_ext(spr_exp_bar_filled, 0, camera_get_view_x(view_camera)+0,camera_get_view_y(view_camera)+666, stats[? "experience"]/stats[? "maxexperience"],1,0,c_white,1);
	
}




/**/