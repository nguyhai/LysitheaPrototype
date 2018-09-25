/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7818EDC3
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)// Draw the heart spaces$(13_10)$(13_10)switch (room) {$(13_10)$(13_10)	//case rm_town: $(13_10)	//draw_sprite_ext(spr_welcome, 0, 320, 300,1 , 1, 0, c_white, 0)$(13_10)	//if (image_alpha <= 0){$(13_10)	//	image_alpha += .01;$(13_10)	//}$(13_10)	//draw_sprite(spr_welcome,0, camera_get_view_x(view_camera), camera_get_view_y(view_camera))$(13_10)	//break;$(13_10)$(13_10)	case rm_menu: $(13_10)		//draw_set_halign(fa_center);$(13_10)		//draw_set_font(fnt_title);$(13_10)		//draw_text_colour (room_width/2+4, 200+6, "Slime Quest???", c_black, c_black, c_black, c_black, 1);$(13_10)		//draw_text_colour (room_width/2, 200, "Slime Quest???", c_white, c_white, c_white, c_white, 1);$(13_10)$(13_10)		var str;$(13_10)		str = "Press [Space] to Play"$(13_10)$(13_10)		//draw_set_font(fnt_start);$(13_10)		//draw_text_colour (room_width/2+2, 400+2, str, c_black, c_black, c_black, c_black, 1);$(13_10)		//draw_text_colour (room_width/2, 400, str, c_white, c_white, c_white, c_white, 1);$(13_10)		break;$(13_10)$(13_10)}$(13_10)$(13_10)//Draw Level $(13_10)$(13_10)$(13_10)/*$(13_10)if instance_exists(o_player){$(13_10)// Set GUI Size for just these stats$(13_10)display_set_gui_size(1280, 720);$(13_10)	$(13_10)	// Draw some Grey transparent bar thing$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_rectangle_color(0,0,1200, 85, c_black,c_black,c_black,c_black,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	//Draw LVL$(13_10)	draw_text(15,8, "LEVEL:" +" "+ string(level));$(13_10)	//Draw HP$(13_10)	draw_text(15,32,"HP:" +" "+  string(round(stats[? "health"])) + "/" + string(round(stats[? "maxhealth"])));$(13_10)	//draw_text(15,32,"HP:" +" "+  string(round(hp)) + "/" + string(max_hp));$(13_10)	//Draw MP$(13_10)	draw_text(15,62,"MP:" +" "+  string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])));$(13_10)	$(13_10)	// Column 2$(13_10)	$(13_10)	draw_text(185,8,"CLASS:" +" "+ string(stats[? "class"]));$(13_10)	draw_text(185,32,"BASE DMG:" +" "+ string(stats[? "attack"]));$(13_10)	draw_text(185,62,"ATKRANGE:" +" "+ string(round(min_dmg)) +"-"+ string(round(max_dmg)));$(13_10)	$(13_10)	// Column 3$(13_10)	$(13_10)	draw_text(355,8,"DMGNoMulti:" +" "+ string(scr_calc_dmg_no_multiplier()));$(13_10)	draw_text(355,32,"DEF:" +" "+ string(stats[? "defense"]+scr_calc_equip_defense()));$(13_10)	draw_text(355,62,"CRIT:" +" "+ string(totalcrit));$(13_10)	$(13_10)	// Column 4$(13_10)	draw_text(525,8,"EXP:" +" "+  string(stats[? "experience"]) + "/" + string(stats[? "maxexperience"]));$(13_10)	draw_text(525,32,"EVADE:" +" "+ string(totalevade));$(13_10)	draw_text(525,62,"VIT:" +" "+ string(stats[? "vitality"]+scr_calc_equip_vit()));$(13_10)	// Columm 5$(13_10)$(13_10)	draw_text(695,8,"STR:" +" "+ string(stats[? "strength"]+scr_calc_equip_str()));$(13_10)	draw_text(695,32,"DEX:" +" "+ string(stats[? "dexterity"]+scr_calc_equip_dex()));$(13_10)	draw_text(695,62,"INT:" +" "+ string(stats[? "intelligence"]+scr_calc_equip_intel()));$(13_10)	$(13_10)$(13_10)$(13_10)//----- Add break under here for partial display$(13_10)*/$(13_10)/*$(13_10)if instance_exists(o_player){$(13_10)// Draw some Grey transparent bar thing$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_rectangle_color(0,0,1200, 85, c_black,c_black,c_black,c_black,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_font(fnt_normal);$(13_10)// Set GUI Size for just these stats$(13_10)display_set_gui_size(1280, 720);$(13_10)	// Column 6$(13_10)	draw_text(865,8,"SKILLPOINTS:" +" "+ string(stats[? "skillpoints"]));$(13_10)	draw_text(865,32,"Equip Min DMG" +" "+ string(scr_calc_equip_mindmg()));$(13_10)	draw_text(865,62,"Equip Mix DMG" +" "+ string(scr_calc_equip_maxdmg()));$(13_10)	//draw_text(865,62,"Crit Multiplier:" +" "+ string(scr_calc_crit_multiplier()));$(13_10)	//draw_text(865,62,"Random SEED:" +" "+ string(random_get_seed()));$(13_10)$(13_10)}$(13_10)"
/// @description Execute Code\n
// Draw the heart spaces

switch (room) {

	//case rm_town: 
	//draw_sprite_ext(spr_welcome, 0, 320, 300,1 , 1, 0, c_white, 0)
	//if (image_alpha <= 0){
	//	image_alpha += .01;
	//}
	//draw_sprite(spr_welcome,0, camera_get_view_x(view_camera), camera_get_view_y(view_camera))
	//break;

	case rm_menu: 
		//draw_set_halign(fa_center);
		//draw_set_font(fnt_title);
		//draw_text_colour (room_width/2+4, 200+6, "Slime Quest???", c_black, c_black, c_black, c_black, 1);
		//draw_text_colour (room_width/2, 200, "Slime Quest???", c_white, c_white, c_white, c_white, 1);

		var str;
		str = "Press [Space] to Play"

		//draw_set_font(fnt_start);
		//draw_text_colour (room_width/2+2, 400+2, str, c_black, c_black, c_black, c_black, 1);
		//draw_text_colour (room_width/2, 400, str, c_white, c_white, c_white, c_white, 1);
		break;

}

//Draw Level 


/*
if instance_exists(o_player){
// Set GUI Size for just these stats
display_set_gui_size(1280, 720);
	
	// Draw some Grey transparent bar thing
	draw_set_alpha(0.5);
	draw_rectangle_color(0,0,1200, 85, c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	draw_set_font(fnt_normal);
	//Draw LVL
	draw_text(15,8, "LEVEL:" +" "+ string(level));
	//Draw HP
	draw_text(15,32,"HP:" +" "+  string(round(stats[? "health"])) + "/" + string(round(stats[? "maxhealth"])));
	//draw_text(15,32,"HP:" +" "+  string(round(hp)) + "/" + string(max_hp));
	//Draw MP
	draw_text(15,62,"MP:" +" "+  string(round(stats[? "mana"])) + "/" + string(round(stats[? "maxmana"])));
	
	// Column 2
	
	draw_text(185,8,"CLASS:" +" "+ string(stats[? "class"]));
	draw_text(185,32,"BASE DMG:" +" "+ string(stats[? "attack"]));
	draw_text(185,62,"ATKRANGE:" +" "+ string(round(min_dmg)) +"-"+ string(round(max_dmg)));
	
	// Column 3
	
	draw_text(355,8,"DMGNoMulti:" +" "+ string(scr_calc_dmg_no_multiplier()));
	draw_text(355,32,"DEF:" +" "+ string(stats[? "defense"]+scr_calc_equip_defense()));
	draw_text(355,62,"CRIT:" +" "+ string(totalcrit));
	
	// Column 4
	draw_text(525,8,"EXP:" +" "+  string(stats[? "experience"]) + "/" + string(stats[? "maxexperience"]));
	draw_text(525,32,"EVADE:" +" "+ string(totalevade));
	draw_text(525,62,"VIT:" +" "+ string(stats[? "vitality"]+scr_calc_equip_vit()));
	// Columm 5

	draw_text(695,8,"STR:" +" "+ string(stats[? "strength"]+scr_calc_equip_str()));
	draw_text(695,32,"DEX:" +" "+ string(stats[? "dexterity"]+scr_calc_equip_dex()));
	draw_text(695,62,"INT:" +" "+ string(stats[? "intelligence"]+scr_calc_equip_intel()));
	


//----- Add break under here for partial display
*/
/*
if instance_exists(o_player){
// Draw some Grey transparent bar thing
	draw_set_alpha(0.5);
	draw_rectangle_color(0,0,1200, 85, c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	draw_set_font(fnt_normal);
// Set GUI Size for just these stats
display_set_gui_size(1280, 720);
	// Column 6
	draw_text(865,8,"SKILLPOINTS:" +" "+ string(stats[? "skillpoints"]));
	draw_text(865,32,"Equip Min DMG" +" "+ string(scr_calc_equip_mindmg()));
	draw_text(865,62,"Equip Mix DMG" +" "+ string(scr_calc_equip_maxdmg()));
	//draw_text(865,62,"Crit Multiplier:" +" "+ string(scr_calc_crit_multiplier()));
	//draw_text(865,62,"Random SEED:" +" "+ string(random_get_seed()));

}
/**/