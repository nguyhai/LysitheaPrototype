/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A23020C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)depth = -3;$(13_10)$(13_10)// HP, MP, ATK , DEF$(13_10)$(13_10)if showInv == true {$(13_10)$(13_10)	// Draw the gold that the player has$(13_10)	$(13_10)	draw_set_color(c_black);$(13_10)	draw_text(camera_get_view_x(view_camera)+75, camera_get_view_y(view_camera)+370, "x");$(13_10)	draw_set_color(c_white);$(13_10)	draw_set_font(global.fnt_cartoon);$(13_10)	draw_sprite(spr_coin_inventory, 0, camera_get_view_x(view_camera)+43, camera_get_view_y(view_camera)+365)$(13_10)	$(13_10)	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+90,camera_get_view_y(view_camera)+365, string_thousands(o_player_stats.gold), 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);$(13_10)	draw_set_font(fnt_normal);$(13_10)	$(13_10)	$(13_10)	if statslot = 0 {$(13_10)		$(13_10)	draw_sprite(spr_equip_stat_hp, 0, x, y);$(13_10)	draw_text(x+25,y-8,string(round(o_player_stats.stats[? "health"])) + "/" + string(round(o_player_stats.stats[? "maxhealth"])));$(13_10)$(13_10)	}$(13_10)	if statslot = 1 {$(13_10)		$(13_10)		draw_sprite(spr_equip_stat_mp, 0, x, y);$(13_10)		draw_text(x+25,y-8,string(round(o_player_stats.stats[? "mana"])) + "/" + string(round(o_player_stats.stats[? "maxmana"])));$(13_10)			$(13_10)	}$(13_10)	if statslot = 2 {$(13_10)		$(13_10)		draw_sprite(spr_equip_stat_atk, 0, x, y);$(13_10)		draw_text(x+25,y-8,string(round(o_player_stats.min_dmg)) +"-"+ string(round(o_player_stats.max_dmg)));$(13_10)		$(13_10)	}$(13_10)	if statslot = 3 {$(13_10)		$(13_10)		draw_sprite(spr_equip_stat_def, 0, x, y);$(13_10)		draw_text(x+25,y-8,string(o_player_stats.stats[? "defense"]+scr_calc_equip_defense()));$(13_10)			$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if (abs(mouse_x - x) < 19) && (abs(mouse_y - y) < 19) && showInv == true {$(13_10)	// Testing$(13_10)/*$(13_10)		draw_set_alpha(1);$(13_10)		draw_set_color(c_red);$(13_10)		draw_rectangle(x-16, y-16, x+16, y+16, 0);$(13_10)		draw_set_alpha(1);$(13_10)		draw_set_color(c_white);$(13_10)*/		$(13_10)$(13_10)// if you scroll mouse over the icon, it should display a tooltip that tells us what the stat is$(13_10)$(13_10)$(13_10)if statslot = 0 {$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_sprite(spr_equip_stat_hp, 0, x, y);$(13_10)	draw_sprite(spr_equip_stat_tooltip, 0, x, y);$(13_10)	draw_text (x, y-50, "Health");$(13_10)}$(13_10)if statslot = 1 {$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_sprite(spr_equip_stat_mp, 0, x, y);$(13_10)	draw_sprite(spr_equip_stat_tooltip, 0, x, y);$(13_10)	draw_text (x, y-50, "Mana");$(13_10)}$(13_10)if statslot = 2 {$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_sprite(spr_equip_stat_atk, 0, x, y);$(13_10)	draw_sprite(spr_equip_stat_tooltip, 0, x, y);$(13_10)	draw_text (x-10, y-50, "Attack Power");$(13_10)}$(13_10)if statslot = 3 {$(13_10)	draw_set_font(fnt_normal);$(13_10)	draw_sprite(spr_equip_stat_def, 0, x, y);$(13_10)	draw_sprite(spr_equip_stat_tooltip, 0, x, y);$(13_10)	draw_text (x, y-50, "Defense");$(13_10)}$(13_10)$(13_10)}"
/// @description Execute Code

depth = -3;

// HP, MP, ATK , DEF

if showInv == true {

	// Draw the gold that the player has
	
	draw_set_color(c_black);
	draw_text(camera_get_view_x(view_camera)+75, camera_get_view_y(view_camera)+370, "x");
	draw_set_color(c_white);
	draw_set_font(global.fnt_cartoon);
	draw_sprite(spr_coin_inventory, 0, camera_get_view_x(view_camera)+43, camera_get_view_y(view_camera)+365)
	
	draw_text_ext_transformed_colour(camera_get_view_x(view_camera)+90,camera_get_view_y(view_camera)+365, string_thousands(o_player_stats.gold), 100, 3000, 0.2, 0.2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_set_font(fnt_normal);
	
	
	if statslot = 0 {
		
	draw_sprite(spr_equip_stat_hp, 0, x, y);
	draw_text(x+25,y-8,string(round(o_player_stats.stats[? "health"])) + "/" + string(round(o_player_stats.stats[? "maxhealth"])));

	}
	if statslot = 1 {
		
		draw_sprite(spr_equip_stat_mp, 0, x, y);
		draw_text(x+25,y-8,string(round(o_player_stats.stats[? "mana"])) + "/" + string(round(o_player_stats.stats[? "maxmana"])));
			
	}
	if statslot = 2 {
		
		draw_sprite(spr_equip_stat_atk, 0, x, y);
		draw_text(x+25,y-8,string(round(o_player_stats.min_dmg)) +"-"+ string(round(o_player_stats.max_dmg)));
		
	}
	if statslot = 3 {
		
		draw_sprite(spr_equip_stat_def, 0, x, y);
		draw_text(x+25,y-8,string(o_player_stats.stats[? "defense"]+scr_calc_equip_defense()));
			
	}
}


if (abs(mouse_x - x) < 19) && (abs(mouse_y - y) < 19) && showInv == true {
	// Testing
/*
		draw_set_alpha(1);
		draw_set_color(c_red);
		draw_rectangle(x-16, y-16, x+16, y+16, 0);
		draw_set_alpha(1);
		draw_set_color(c_white);
*/		

// if you scroll mouse over the icon, it should display a tooltip that tells us what the stat is


if statslot = 0 {
	draw_set_font(fnt_normal);
	draw_sprite(spr_equip_stat_hp, 0, x, y);
	draw_sprite(spr_equip_stat_tooltip, 0, x, y);
	draw_text (x, y-50, "Health");
}
if statslot = 1 {
	draw_set_font(fnt_normal);
	draw_sprite(spr_equip_stat_mp, 0, x, y);
	draw_sprite(spr_equip_stat_tooltip, 0, x, y);
	draw_text (x, y-50, "Mana");
}
if statslot = 2 {
	draw_set_font(fnt_normal);
	draw_sprite(spr_equip_stat_atk, 0, x, y);
	draw_sprite(spr_equip_stat_tooltip, 0, x, y);
	draw_text (x-10, y-50, "Attack Power");
}
if statslot = 3 {
	draw_set_font(fnt_normal);
	draw_sprite(spr_equip_stat_def, 0, x, y);
	draw_sprite(spr_equip_stat_tooltip, 0, x, y);
	draw_text (x, y-50, "Defense");
}

}/**/