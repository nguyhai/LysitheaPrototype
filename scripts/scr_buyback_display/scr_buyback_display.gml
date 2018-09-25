/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B89E503
/// @DnDArgument : "code" "var item = global.shop[slot];// What this does is check that slot, and look at the sprite index$(13_10)var click = mouse_check_button_pressed(mb_left);$(13_10)var rightclick = mouse_check_button_pressed(mb_right);$(13_10)var shift = keyboard_check(vk_shift);$(13_10)$(13_10)$(13_10)	if (abs(mouse_x - x) < 97) && (abs(mouse_y - y) < 22) {$(13_10)	$(13_10)	// Need tooltip for the slots - Tooltip may need to be at the bottom (drawn last)$(13_10)	if (item !=-1) and ((slot >20)){ // If slots are within 16$(13_10)$(13_10)		if play_tick = false {$(13_10)			audio_play_sound(snd_shop_tick,9,false);$(13_10)			play_tick = true;$(13_10)		}		$(13_10)		$(13_10)		// Highlight the item$(13_10)		draw_sprite(spr_shop_item_button_highlight,0,x,y)$(13_10)		$(13_10)		// Add brackets over the item$(13_10)		draw_sprite_ext(spr_shop_blue_highlight,0,x,y,1,1,0,c_white,current_image_alpha)$(13_10)	$(13_10)	$(13_10)		// Declare the variables for the tooltip and compare$(13_10)		script_execute(scr_tooltip_shop_variables);$(13_10)		var speedbonus = 0;$(13_10)		$(13_10)		tooltipx = camera_get_view_x(view_camera)+ 640;$(13_10)		tooltipy = camera_get_view_y(view_camera)+ 360;$(13_10)		$(13_10)		// Set to show tooltip and compare, then delay turn off if non hovered - use alarm for this effect$(13_10)		show_tooltip = true;$(13_10)		alarm[0] = 10;$(13_10)$(13_10)		tooltipx1 = camera_get_view_x(view_camera)+ 525;$(13_10)		tooltipy1 = camera_get_view_y(view_camera)+ 150;$(13_10)		$(13_10)		$(13_10)		// Defining colors and stats based on rarity$(13_10)			if (rarity == 1){rarity = c_white; speedbonus = 10;}$(13_10)			if (rarity == 5){rarity = c_lime; speedbonus = 20;}$(13_10)			if (rarity == 10){rarity = make_color_rgb(255,140,0); speedbonus = 30;}$(13_10)			$(13_10)			if (upgradelevel > 0){$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+1, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text_color(tooltipx1,tooltipy1, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);$(13_10)				$(13_10)			} else {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+1, string(name),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text_color(tooltipx1,tooltipy1, string(name),rarity,rarity,rarity,rarity,1);$(13_10)				$(13_10)			}$(13_10)		$(13_10)			draw_text_color(tooltipx1+1,tooltipy1+41,"Type"+":"+string(type),c_black,c_black,c_black,c_black,1);$(13_10)			draw_text      (tooltipx1,tooltipy1+40,"Type"+":"+string(type));$(13_10)			$(13_10)			$(13_10)			draw_text_color(tooltipx1+1,tooltipy1+61,"LvL Req"+":"+string(levelreq),c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (tooltipx1,tooltipy1+60,"LvL Req"+":"+string(levelreq));$(13_10)			$(13_10)			// ADD SPECIALIZED STATS FOR EQUIPMENT - Add under armor stat (x+39,y-199)$(13_10)			// Boots need bonus speed drawn based on rarity$(13_10)		$(13_10)			if type = "Boots" {$(13_10)				// Boots get a speed bonus based on rarity$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+101,"SPD+ " +""+string(speedbonus) +string("%"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+100,"SPD+ "+""+string(speedbonus)+string("%"));$(13_10)			}$(13_10)			$(13_10)			if type = "Amulet" {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Regen"+": "+string(healamount),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Regen"+": "+string(healamount));$(13_10)			} $(13_10)			if type = "Bracelet" {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Crit Rate"+": "+string(critical),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Crit Rate"+": "+string(critical));$(13_10)			} $(13_10)			if type = "Ring" {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));$(13_10)			} $(13_10)			if type = "Earring" {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Evasion"+":"+string(evasion),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Evasion"+":"+string(evasion));$(13_10)			} $(13_10)			if type = "Artifact" {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"STR"+": +"+string(strbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"STR"+": +"+string(strbonus));$(13_10)				$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+101,"DEX"+": +"+string(dexbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+100,"DEX"+": +"+string(dexbonus));$(13_10)				$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+121,"INT"+": +"+string(intelbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+120,"INT"+": +"+string(intelbonus));$(13_10)				$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+141,"VIT"+": +"+string(vitbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+140,"VIT"+": +"+string(vitbonus));$(13_10)			} $(13_10)			$(13_10)			// For Weapons$(13_10)			if mindamage > 0 and type = "Weapon" {$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));$(13_10)			}$(13_10)			$(13_10)			// For Armors - Tooltip needs to show the 1 or 2 stats on it (or 3 in the future)$(13_10)			if (type = "Chest Armor" or  type = "Hat" or  type = "Pants" or type = "Boots" or type = "Gloves") {$(13_10)				// Draw their defense stat$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Armor"+": "+string(defense),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Armor"+": "+string(defense));$(13_10)$(13_10)				// If there is stat bonuses, draw them$(13_10)				if statbonuses = 1 {$(13_10)					draw_text_color(tooltipx1+1,tooltipy1+121,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (tooltipx1,tooltipy1+120,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)				}$(13_10)				if statbonuses = 2 {$(13_10)					draw_text_color(tooltipx1+1,tooltipy1+121,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (tooltipx1,tooltipy1+120,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)					$(13_10)					draw_text_color(tooltipx1+1,tooltipy1+141,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (tooltipx1,tooltipy1+140,string(statbonus2[0]) +": "+string(statbonus2[1]));$(13_10)					$(13_10)				}$(13_10)				if statbonuses = 3 {$(13_10)					draw_text_color(tooltipx1+1,tooltipy1+121,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (tooltipx1,tooltipy1+120,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)					draw_text_color(tooltipx1+1,tooltipy1+141,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (tooltipx1,tooltipy1+140,string(statbonus2[0]) +": "+string(statbonus2[1]));$(13_10)					draw_text_color(tooltipx1+1,tooltipy1+161,string(statbonus3[0])+": "+string(statbonus3[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (tooltipx1,tooltipy1+160,string(statbonus3[0]) +": "+string(statbonus3[1]));$(13_10)				}$(13_10)				$(13_10)			}$(13_10)			$(13_10)			// Draw tooltip for potions$(13_10)			if name == "Health Potion"{$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Heals"+" "+string(healamount)+" "+ string("HP"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Heals"+" "+string(healamount)+" "+ string("HP"));$(13_10)			}$(13_10)			if name == "Mana Potion"{$(13_10)				draw_text_color(tooltipx1+1,tooltipy1+81,"Restores"+" "+string(healamount)+" "+ string("MP"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (tooltipx1,tooltipy1+80,"Restores"+" "+string(healamount)+" "+ string("MP"));$(13_10)			}$(13_10)			$(13_10)			// Draw the description$(13_10)			draw_text_color(tooltipx1+1,tooltipy1+201,"Description:",c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (tooltipx1,tooltipy1+200,"Description:");$(13_10)			$(13_10)			draw_text_ext_color(tooltipx1+1,tooltipy1+221,string(description),20, 235,c_black,c_black,c_black,c_black,1);$(13_10)			draw_text_ext_color(tooltipx1,tooltipy1+220,string(description),20, 235,c_white,c_white,c_white,c_white,1);$(13_10)	$(13_10)	// Draw the Stats Comparison for Shop Items  -------------------------------------------------------$(13_10)	$(13_10)		var comparex = camera_get_view_x(view_camera)+ 510;$(13_10)		var comparex2 = camera_get_view_x(view_camera)+ 670;$(13_10)		var comparey = camera_get_view_y(view_camera)+ 570;$(13_10)		var statx1 = comparex+60;$(13_10)		var statx2 = comparex2+55;$(13_10)		if type!= "Crafting" {$(13_10)			if type!= "Potion" {$(13_10)$(13_10)			$(13_10)			// Set font for tooltip compare$(13_10)			draw_set_font(fnt_tooltip);$(13_10)			$(13_10)			// STATS IF EQUIPPED$(13_10)			draw_text(comparex2-80, comparey-20, "Stats if Equipped")$(13_10)			// Draw the icons$(13_10)			$(13_10)			draw_set_color(c_yellow);$(13_10)$(13_10)			draw_text(comparex,comparey, "Max ATK")$(13_10)			draw_text(comparex2,comparey, "Min ATK")$(13_10)			$(13_10)			draw_text(comparex,comparey+15, "DEF")$(13_10)			draw_text(comparex,comparey+30, "STR")$(13_10)			draw_text(comparex,comparey+45, "DEX")$(13_10)			draw_text(comparex2,comparey+15, "INT")$(13_10)			draw_text(comparex2,comparey+30, "VIT")$(13_10)		$(13_10)			draw_set_color(c_white);$(13_10)			// If there is no item in the weapon slot$(13_10)			//draw_set_color(c_white)$(13_10)			//draw_set_color(c_lime)$(13_10)			//draw_set_color(c_red)$(13_10)			$(13_10)			// If no weapon equipped, and the type of item hovered is a weapon$(13_10)			if global.inventory[62] = -1 and type = "Weapon" {$(13_10)$(13_10)				// Add the stats to the total stats and display the new one. Add green arrow or red arrow depending.$(13_10)				var tooltipmindmgstr = round(scr_calc_min_dmg_display_str_shop(mindamage, strbonus))-1;$(13_10)				var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str_shop(maxdamage, strbonus))-1;	$(13_10)									   $(13_10)				var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex_shop(mindamage, dexbonus))-1;$(13_10)				var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex_shop(maxdamage, dexbonus))-1;	$(13_10)									   $(13_10)				var tooltipmindmgint = round(scr_calc_min_dmg_display_int_shop(mindamage, intelbonus))-1;$(13_10)				var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int_shop(maxdamage, intelbonus))-1;	$(13_10)				$(13_10)				draw_set_color(c_lime)$(13_10)				$(13_10)				if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {$(13_10)				// Min DMG$(13_10)				draw_text(statx2,comparey, string(round(tooltipmindmgstr)))$(13_10)				$(13_10)				// Max DMG$(13_10)				draw_text(statx1,comparey, string(round(tooltipmaxdmgstr)))$(13_10)				$(13_10)				}$(13_10)				if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {$(13_10)				// Min DMG$(13_10)				draw_text(statx2,comparey, string(round(tooltipmindmgdex)))$(13_10)				// Max DMG$(13_10)				draw_text(statx1,comparey, string(round(tooltipmaxdmgdex)))$(13_10)				$(13_10)				}$(13_10)				if subweapon = "Wand" or subweapon = "Staff" {$(13_10)				// Min DMG$(13_10)				draw_text(statx2,comparey, string(round(tooltipmindmgint)))$(13_10)				// Max DMG$(13_10)				draw_text(statx1,comparey, string(round(tooltipmaxdmgint)))$(13_10)				$(13_10)				}$(13_10)				draw_set_color(c_white)$(13_10)				$(13_10)				draw_sprite(spr_up_arrow, 0, comparex-10,comparey) // Max DMG$(13_10)				draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) // MIN DMG$(13_10)				$(13_10)			}$(13_10)			$(13_10)			// If the slot has a wep and the item we have hovered is a weapon$(13_10)			if global.inventory[62] != -1 and type = "Weapon" {$(13_10)			if mindamage < 0 { mindamage = 0}$(13_10)			if maxdamage < 0 { maxdamage = 0}$(13_10)			$(13_10)			if strbonus < 0 { strbonus = 0}$(13_10)			if dexbonus < 0 { dexbonus = 0}$(13_10)			if intelbonus < 0 { intelbonus = 0}$(13_10)			if vitbonus < 0 { vitbonus = 0}$(13_10)								$(13_10)			var tooltipmindmgstr = round(scr_calc_min_dmg_display_str_shop(mindamage, strbonus))-1;$(13_10)			var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str_shop(maxdamage, strbonus))-1;	$(13_10)								   $(13_10)			var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex_shop(mindamage, dexbonus))-1;$(13_10)			var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex_shop(maxdamage, dexbonus))-1;	$(13_10)								   $(13_10)			var tooltipmindmgint = round(scr_calc_min_dmg_display_int_shop(mindamage, intelbonus))-1;$(13_10)			var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int_shop(maxdamage, intelbonus))-1;	$(13_10)			$(13_10)			var subweapontype = global.inventory[63, 23];$(13_10)	$(13_10)			if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {$(13_10)			$(13_10)				//draw_text(statx2,comparey, string(tooltipmindmgstr)); $(13_10)				//draw_text(statx1,comparey, string(tooltipmaxdmgstr));$(13_10)	$(13_10)				if o_player_stats.min_dmg > tooltipmindmgstr {draw_set_color(c_red); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey);  draw_set_color(c_white);}  $(13_10)				if o_player_stats.min_dmg < tooltipmindmgstr {draw_set_color(c_lime); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);}$(13_10)				if o_player_stats.min_dmg = tooltipmindmgstr {draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_set_color(c_white);}$(13_10)				// Max Damage$(13_10)				if o_player_stats.max_dmg > tooltipmaxdmgstr {draw_set_color(c_red); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);}  $(13_10)				if o_player_stats.max_dmg < tooltipmaxdmgstr {draw_set_color(c_lime); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, comparex-10,comparey);   draw_set_color(c_white);}$(13_10)				if o_player_stats.max_dmg = tooltipmaxdmgstr {draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_set_color(c_white);}$(13_10)	$(13_10)			}$(13_10)$(13_10)			if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {$(13_10)$(13_10)				//draw_text(statx2,comparey, string(tooltipmindmgdex)); $(13_10)				//draw_text(statx1,comparey, string(tooltipmaxdmgdex));$(13_10)$(13_10)				if o_player_stats.min_dmg > tooltipmindmgdex {draw_set_color(c_red); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey);  draw_set_color(c_white);}  $(13_10)				if o_player_stats.min_dmg < tooltipmindmgdex {draw_set_color(c_lime); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);}$(13_10)				if o_player_stats.min_dmg = tooltipmindmgdex {draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_set_color(c_white);}$(13_10)				$(13_10)				// Max Damage$(13_10)				if o_player_stats.max_dmg > tooltipmaxdmgdex {draw_set_color(c_red); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);}  $(13_10)				if o_player_stats.max_dmg < tooltipmaxdmgdex {draw_set_color(c_lime); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, comparex-10,comparey);   draw_set_color(c_white);}$(13_10)				if o_player_stats.max_dmg = tooltipmaxdmgdex {draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_set_color(c_white);}$(13_10)	$(13_10)			}			$(13_10)			$(13_10)			if subweapon = "Wand" or subweapon = "Staff" {$(13_10)$(13_10)				//draw_text(statx2,comparey, string(tooltipmindmgint)); $(13_10)				//draw_text(statx1,comparey, string(tooltipmaxdmgint));$(13_10)$(13_10)				$(13_10)				if o_player_stats.min_dmg > tooltipmindmgint {draw_set_color(c_red); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey);  draw_set_color(c_white);}  $(13_10)				if o_player_stats.min_dmg < tooltipmindmgint {draw_set_color(c_lime); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);}$(13_10)				if o_player_stats.min_dmg = tooltipmindmgint {draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_set_color(c_white);}$(13_10)$(13_10)				// Max Damage$(13_10)				if o_player_stats.max_dmg > tooltipmaxdmgint {draw_set_color(c_red); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);}  $(13_10)				if o_player_stats.max_dmg < tooltipmaxdmgint {draw_set_color(c_lime); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, comparex-10,comparey);   draw_set_color(c_white);}$(13_10)				if o_player_stats.max_dmg = tooltipmaxdmgint {draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_set_color(c_white);}$(13_10)			}$(13_10)			}$(13_10)					$(13_10)			if defense < 0 { defense = 0}$(13_10)			if strbonus < 0 { strbonus = 0}$(13_10)			if dexbonus < 0 { dexbonus = 0}$(13_10)			if intelbonus < 0 { intelbonus = 0}$(13_10)			if vitbonus < 0 { vitbonus = 0}$(13_10)			$(13_10)			var totaldefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense();$(13_10)			var tooltipdefense = round(scr_def_compare())$(13_10)			$(13_10)			var tooltipattack = round(scr_def_compare())$(13_10)						$(13_10)			var totalstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str();$(13_10)			var tooltipstr = round(scr_str_compare());$(13_10)$(13_10)			var totaldex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex();$(13_10)			var tooltipdex = round(scr_dex_compare());$(13_10)			$(13_10)			var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();$(13_10)			var tooltipintcompare = round(scr_int_compare());$(13_10)			$(13_10)			var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();$(13_10)			var tooltipvitcompare = round(scr_vit_compare());					$(13_10)			$(13_10)			var minatkhover = round(scr_calc_min_dmg_all(tooltipstr,tooltipdex,tooltipintcompare,tooltipvitcompare, mindamage))-1;$(13_10)			var maxatkhover = round(scr_calc_max_dmg_all(tooltipstr,tooltipdex,tooltipintcompare,tooltipvitcompare, maxdamage))-1;$(13_10)$(13_10)		// If i HOVER over ANY item, it should display the NEW DAMAGE calculations$(13_10)$(13_10)$(13_10)			if type != "Weapon" {$(13_10)$(13_10)					$(13_10)					if minatkhover > o_player_stats.min_dmg {draw_set_color(c_lime); draw_text(statx2,comparey, string(minatkhover)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey ); draw_set_color(c_white);}$(13_10)					if minatkhover < o_player_stats.min_dmg {draw_set_color(c_red); draw_text(statx2,comparey, string(minatkhover)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);} $(13_10)					if minatkhover = o_player_stats.min_dmg { draw_text(statx2,comparey, string(minatkhover)); }   $(13_10)$(13_10)					if maxatkhover > o_player_stats.max_dmg {draw_set_color(c_lime); draw_text(statx1,comparey, string(maxatkhover));draw_sprite(spr_up_arrow, 0, comparex-10,comparey ) ; draw_set_color(c_white);}$(13_10)					if maxatkhover < o_player_stats.max_dmg {draw_set_color(c_red); draw_text(statx1,comparey, string(maxatkhover)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);} $(13_10)					if maxatkhover = o_player_stats.max_dmg {draw_text(statx1,comparey, string(maxatkhover)); } $(13_10)			}	$(13_10)$(13_10)			// DEFENSE and STATS can be in one group, because damage does not need to be calculated here. $(13_10)				$(13_10)				// Defense$(13_10)$(13_10)				if totaldefense > tooltipdefense {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(statx1,comparey+15, string(round(tooltipdefense)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, comparex-10,comparey+15)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				// If your equipped wep is weaker than ur inventory wep$(13_10)				if totaldefense < tooltipdefense {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(statx1,comparey+15, string(round(tooltipdefense)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, comparex-10,comparey+15)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				$(13_10)				if totaldefense = tooltipdefense  {$(13_10)					draw_text(statx1,comparey+15, string(round(tooltipdefense)));$(13_10)				}$(13_10)				$(13_10)				// STATS - STR DEX INT VIT$(13_10)$(13_10)				if totalstr > tooltipstr {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(statx1,comparey+30, string(round(tooltipstr)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, comparex-10,comparey+30)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				if totalstr < tooltipstr {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(statx1,comparey+30, string(round(tooltipstr)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, comparex-10,comparey+30)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				if totalstr = tooltipstr {$(13_10)					draw_text(statx1,comparey+30, string(round(tooltipstr)));$(13_10)				}	$(13_10)$(13_10)$(13_10)				if totaldex > tooltipdex {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(statx1,comparey+45, string(round(tooltipdex)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, comparex-10,comparey+45)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				if totaldex < tooltipdex {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(statx1,comparey+45, string(round(tooltipdex)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, comparex-10,comparey+45)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				if totaldex = tooltipdex {$(13_10)					draw_text(statx1,comparey+45, string(round(tooltipdex)));$(13_10)				}$(13_10)$(13_10)$(13_10)				if totalint > tooltipintcompare {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(statx2,comparey+15,string(round(tooltipintcompare)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, comparex2-10,comparey+15)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				if totalint < tooltipintcompare {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(statx2,comparey+15,string(round(tooltipintcompare)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, comparex2-10,comparey+15)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				if totalint = tooltipintcompare {$(13_10)					draw_text(statx2,comparey+15, string(round(tooltipintcompare)))$(13_10)					$(13_10)				}$(13_10)				$(13_10)				if totalvit > tooltipvitcompare {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(statx2,comparey+30,string(round(tooltipvitcompare)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, comparex2-10,comparey+30)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				if totalvit < tooltipvitcompare {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(statx2,comparey+30,string(round(tooltipvitcompare)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, comparex2-10,comparey+30)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				if totalvit = tooltipvitcompare {$(13_10)					draw_text(statx2,comparey+30,string(round(tooltipvitcompare)));$(13_10)				}$(13_10)$(13_10)			draw_set_font(fnt_normal);$(13_10)$(13_10)			}$(13_10)		}// End of if item is != crafting/potions$(13_10)$(13_10)	// Click Events for Buying an Item -----------------------------------------------------------------------$(13_10)	$(13_10)	if rightclick  and item != -1  and o_mouse_pointer.sellmode = false {$(13_10)			$(13_10)		// Check for empty slots and return remainder$(13_10)		var stackcheck;$(13_10)		stackcheck = scr_check_stackable_item(index);$(13_10)		$(13_10)		// Click Slots		$(13_10)		// Begin BUYBACK SLOTS$(13_10)$(13_10)		if slot >= 21 and slot <= 36{$(13_10)			script_execute(scr_buy_item_script_buyback);		$(13_10)		} $(13_10)		$(13_10)	}$(13_10)} // End of if slots less than 16$(13_10)$(13_10)	$(13_10)	} else {$(13_10)		play_tick = false;$(13_10)		$(13_10)	}"
var item = global.shop[slot];// What this does is check that slot, and look at the sprite index
var click = mouse_check_button_pressed(mb_left);
var rightclick = mouse_check_button_pressed(mb_right);
var shift = keyboard_check(vk_shift);


	if (abs(mouse_x - x) < 97) && (abs(mouse_y - y) < 22) {
	
	// Need tooltip for the slots - Tooltip may need to be at the bottom (drawn last)
	if (item !=-1) and ((slot >20)){ // If slots are within 16

		if play_tick = false {
			audio_play_sound(snd_shop_tick,9,false);
			play_tick = true;
		}		
		
		// Highlight the item
		draw_sprite(spr_shop_item_button_highlight,0,x,y)
		
		// Add brackets over the item
		draw_sprite_ext(spr_shop_blue_highlight,0,x,y,1,1,0,c_white,current_image_alpha)
	
	
		// Declare the variables for the tooltip and compare
		script_execute(scr_tooltip_shop_variables);
		var speedbonus = 0;
		
		tooltipx = camera_get_view_x(view_camera)+ 640;
		tooltipy = camera_get_view_y(view_camera)+ 360;
		
		// Set to show tooltip and compare, then delay turn off if non hovered - use alarm for this effect
		show_tooltip = true;
		alarm[0] = 10;

		tooltipx1 = camera_get_view_x(view_camera)+ 525;
		tooltipy1 = camera_get_view_y(view_camera)+ 150;
		
		
		// Defining colors and stats based on rarity
			if (rarity == 1){rarity = c_white; speedbonus = 10;}
			if (rarity == 5){rarity = c_lime; speedbonus = 20;}
			if (rarity == 10){rarity = make_color_rgb(255,140,0); speedbonus = 30;}
			
			if (upgradelevel > 0){
				draw_text_color(tooltipx1+1,tooltipy1+1, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);
				draw_text_color(tooltipx1,tooltipy1, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);
				
			} else {
				draw_text_color(tooltipx1+1,tooltipy1+1, string(name),c_black,c_black,c_black,c_black,1);
				draw_text_color(tooltipx1,tooltipy1, string(name),rarity,rarity,rarity,rarity,1);
				
			}
		
			draw_text_color(tooltipx1+1,tooltipy1+41,"Type"+":"+string(type),c_black,c_black,c_black,c_black,1);
			draw_text      (tooltipx1,tooltipy1+40,"Type"+":"+string(type));
			
			
			draw_text_color(tooltipx1+1,tooltipy1+61,"LvL Req"+":"+string(levelreq),c_black,c_black,c_black,c_black,1);
			draw_text	   (tooltipx1,tooltipy1+60,"LvL Req"+":"+string(levelreq));
			
			// ADD SPECIALIZED STATS FOR EQUIPMENT - Add under armor stat (x+39,y-199)
			// Boots need bonus speed drawn based on rarity
		
			if type = "Boots" {
				// Boots get a speed bonus based on rarity
				draw_text_color(tooltipx1+1,tooltipy1+101,"SPD+ " +""+string(speedbonus) +string("%"),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+100,"SPD+ "+""+string(speedbonus)+string("%"));
			}
			
			if type = "Amulet" {
				draw_text_color(tooltipx1+1,tooltipy1+81,"Regen"+": "+string(healamount),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Regen"+": "+string(healamount));
			} 
			if type = "Bracelet" {
				draw_text_color(tooltipx1+1,tooltipy1+81,"Crit Rate"+": "+string(critical),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Crit Rate"+": "+string(critical));
			} 
			if type = "Ring" {
				draw_text_color(tooltipx1+1,tooltipy1+81,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));
			} 
			if type = "Earring" {
				draw_text_color(tooltipx1+1,tooltipy1+81,"Evasion"+":"+string(evasion),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Evasion"+":"+string(evasion));
			} 
			if type = "Artifact" {
				draw_text_color(tooltipx1+1,tooltipy1+81,"STR"+": +"+string(strbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"STR"+": +"+string(strbonus));
				
				draw_text_color(tooltipx1+1,tooltipy1+101,"DEX"+": +"+string(dexbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+100,"DEX"+": +"+string(dexbonus));
				
				draw_text_color(tooltipx1+1,tooltipy1+121,"INT"+": +"+string(intelbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+120,"INT"+": +"+string(intelbonus));
				
				draw_text_color(tooltipx1+1,tooltipy1+141,"VIT"+": +"+string(vitbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+140,"VIT"+": +"+string(vitbonus));
			} 
			
			// For Weapons
			if mindamage > 0 and type = "Weapon" {
				draw_text_color(tooltipx1+1,tooltipy1+81,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));
			}
			
			// For Armors - Tooltip needs to show the 1 or 2 stats on it (or 3 in the future)
			if (type = "Chest Armor" or  type = "Hat" or  type = "Pants" or type = "Boots" or type = "Gloves") {
				// Draw their defense stat
				draw_text_color(tooltipx1+1,tooltipy1+81,"Armor"+": "+string(defense),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Armor"+": "+string(defense));

				// If there is stat bonuses, draw them
				if statbonuses = 1 {
					draw_text_color(tooltipx1+1,tooltipy1+121,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (tooltipx1,tooltipy1+120,string(statbonus1[0]) +": "+string(statbonus1[1]))
				}
				if statbonuses = 2 {
					draw_text_color(tooltipx1+1,tooltipy1+121,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (tooltipx1,tooltipy1+120,string(statbonus1[0]) +": "+string(statbonus1[1]))
					
					draw_text_color(tooltipx1+1,tooltipy1+141,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (tooltipx1,tooltipy1+140,string(statbonus2[0]) +": "+string(statbonus2[1]));
					
				}
				if statbonuses = 3 {
					draw_text_color(tooltipx1+1,tooltipy1+121,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (tooltipx1,tooltipy1+120,string(statbonus1[0]) +": "+string(statbonus1[1]))
					draw_text_color(tooltipx1+1,tooltipy1+141,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (tooltipx1,tooltipy1+140,string(statbonus2[0]) +": "+string(statbonus2[1]));
					draw_text_color(tooltipx1+1,tooltipy1+161,string(statbonus3[0])+": "+string(statbonus3[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (tooltipx1,tooltipy1+160,string(statbonus3[0]) +": "+string(statbonus3[1]));
				}
				
			}
			
			// Draw tooltip for potions
			if name == "Health Potion"{
				draw_text_color(tooltipx1+1,tooltipy1+81,"Heals"+" "+string(healamount)+" "+ string("HP"),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Heals"+" "+string(healamount)+" "+ string("HP"));
			}
			if name == "Mana Potion"{
				draw_text_color(tooltipx1+1,tooltipy1+81,"Restores"+" "+string(healamount)+" "+ string("MP"),c_black,c_black,c_black,c_black,1);
				draw_text	   (tooltipx1,tooltipy1+80,"Restores"+" "+string(healamount)+" "+ string("MP"));
			}
			
			// Draw the description
			draw_text_color(tooltipx1+1,tooltipy1+201,"Description:",c_black,c_black,c_black,c_black,1);
			draw_text	   (tooltipx1,tooltipy1+200,"Description:");
			
			draw_text_ext_color(tooltipx1+1,tooltipy1+221,string(description),20, 235,c_black,c_black,c_black,c_black,1);
			draw_text_ext_color(tooltipx1,tooltipy1+220,string(description),20, 235,c_white,c_white,c_white,c_white,1);
	
	// Draw the Stats Comparison for Shop Items  -------------------------------------------------------
	
		var comparex = camera_get_view_x(view_camera)+ 510;
		var comparex2 = camera_get_view_x(view_camera)+ 670;
		var comparey = camera_get_view_y(view_camera)+ 570;
		var statx1 = comparex+60;
		var statx2 = comparex2+55;
		if type!= "Crafting" {
			if type!= "Potion" {

			
			// Set font for tooltip compare
			draw_set_font(fnt_tooltip);
			
			// STATS IF EQUIPPED
			draw_text(comparex2-80, comparey-20, "Stats if Equipped")
			// Draw the icons
			
			draw_set_color(c_yellow);

			draw_text(comparex,comparey, "Max ATK")
			draw_text(comparex2,comparey, "Min ATK")
			
			draw_text(comparex,comparey+15, "DEF")
			draw_text(comparex,comparey+30, "STR")
			draw_text(comparex,comparey+45, "DEX")
			draw_text(comparex2,comparey+15, "INT")
			draw_text(comparex2,comparey+30, "VIT")
		
			draw_set_color(c_white);
			// If there is no item in the weapon slot
			//draw_set_color(c_white)
			//draw_set_color(c_lime)
			//draw_set_color(c_red)
			
			// If no weapon equipped, and the type of item hovered is a weapon
			if global.inventory[62] = -1 and type = "Weapon" {

				// Add the stats to the total stats and display the new one. Add green arrow or red arrow depending.
				var tooltipmindmgstr = round(scr_calc_min_dmg_display_str_shop(mindamage, strbonus))-1;
				var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str_shop(maxdamage, strbonus))-1;	
									   
				var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex_shop(mindamage, dexbonus))-1;
				var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex_shop(maxdamage, dexbonus))-1;	
									   
				var tooltipmindmgint = round(scr_calc_min_dmg_display_int_shop(mindamage, intelbonus))-1;
				var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int_shop(maxdamage, intelbonus))-1;	
				
				draw_set_color(c_lime)
				
				if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {
				// Min DMG
				draw_text(statx2,comparey, string(round(tooltipmindmgstr)))
				
				// Max DMG
				draw_text(statx1,comparey, string(round(tooltipmaxdmgstr)))
				
				}
				if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {
				// Min DMG
				draw_text(statx2,comparey, string(round(tooltipmindmgdex)))
				// Max DMG
				draw_text(statx1,comparey, string(round(tooltipmaxdmgdex)))
				
				}
				if subweapon = "Wand" or subweapon = "Staff" {
				// Min DMG
				draw_text(statx2,comparey, string(round(tooltipmindmgint)))
				// Max DMG
				draw_text(statx1,comparey, string(round(tooltipmaxdmgint)))
				
				}
				draw_set_color(c_white)
				
				draw_sprite(spr_up_arrow, 0, comparex-10,comparey) // Max DMG
				draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) // MIN DMG
				
			}
			
			// If the slot has a wep and the item we have hovered is a weapon
			if global.inventory[62] != -1 and type = "Weapon" {
			if mindamage < 0 { mindamage = 0}
			if maxdamage < 0 { maxdamage = 0}
			
			if strbonus < 0 { strbonus = 0}
			if dexbonus < 0 { dexbonus = 0}
			if intelbonus < 0 { intelbonus = 0}
			if vitbonus < 0 { vitbonus = 0}
								
			var tooltipmindmgstr = round(scr_calc_min_dmg_display_str_shop(mindamage, strbonus))-1;
			var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str_shop(maxdamage, strbonus))-1;	
								   
			var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex_shop(mindamage, dexbonus))-1;
			var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex_shop(maxdamage, dexbonus))-1;	
								   
			var tooltipmindmgint = round(scr_calc_min_dmg_display_int_shop(mindamage, intelbonus))-1;
			var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int_shop(maxdamage, intelbonus))-1;	
			
			var subweapontype = global.inventory[63, 23];
	
			if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {
			
				//draw_text(statx2,comparey, string(tooltipmindmgstr)); 
				//draw_text(statx1,comparey, string(tooltipmaxdmgstr));
	
				if o_player_stats.min_dmg > tooltipmindmgstr {draw_set_color(c_red); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey);  draw_set_color(c_white);}  
				if o_player_stats.min_dmg < tooltipmindmgstr {draw_set_color(c_lime); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);}
				if o_player_stats.min_dmg = tooltipmindmgstr {draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_set_color(c_white);}
				// Max Damage
				if o_player_stats.max_dmg > tooltipmaxdmgstr {draw_set_color(c_red); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);}  
				if o_player_stats.max_dmg < tooltipmaxdmgstr {draw_set_color(c_lime); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, comparex-10,comparey);   draw_set_color(c_white);}
				if o_player_stats.max_dmg = tooltipmaxdmgstr {draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_set_color(c_white);}
	
			}

			if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {

				//draw_text(statx2,comparey, string(tooltipmindmgdex)); 
				//draw_text(statx1,comparey, string(tooltipmaxdmgdex));

				if o_player_stats.min_dmg > tooltipmindmgdex {draw_set_color(c_red); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey);  draw_set_color(c_white);}  
				if o_player_stats.min_dmg < tooltipmindmgdex {draw_set_color(c_lime); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);}
				if o_player_stats.min_dmg = tooltipmindmgdex {draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_set_color(c_white);}
				
				// Max Damage
				if o_player_stats.max_dmg > tooltipmaxdmgdex {draw_set_color(c_red); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);}  
				if o_player_stats.max_dmg < tooltipmaxdmgdex {draw_set_color(c_lime); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, comparex-10,comparey);   draw_set_color(c_white);}
				if o_player_stats.max_dmg = tooltipmaxdmgdex {draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_set_color(c_white);}
	
			}			
			
			if subweapon = "Wand" or subweapon = "Staff" {

				//draw_text(statx2,comparey, string(tooltipmindmgint)); 
				//draw_text(statx1,comparey, string(tooltipmaxdmgint));

				
				if o_player_stats.min_dmg > tooltipmindmgint {draw_set_color(c_red); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey);  draw_set_color(c_white);}  
				if o_player_stats.min_dmg < tooltipmindmgint {draw_set_color(c_lime); draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);}
				if o_player_stats.min_dmg = tooltipmindmgint {draw_text(statx2,comparey, string(tooltipmindmgstr)); draw_set_color(c_white);}

				// Max Damage
				if o_player_stats.max_dmg > tooltipmaxdmgint {draw_set_color(c_red); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);}  
				if o_player_stats.max_dmg < tooltipmaxdmgint {draw_set_color(c_lime); draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, comparex-10,comparey);   draw_set_color(c_white);}
				if o_player_stats.max_dmg = tooltipmaxdmgint {draw_text(statx1,comparey, string(tooltipmaxdmgstr)); draw_set_color(c_white);}
			}
			}
					
			if defense < 0 { defense = 0}
			if strbonus < 0 { strbonus = 0}
			if dexbonus < 0 { dexbonus = 0}
			if intelbonus < 0 { intelbonus = 0}
			if vitbonus < 0 { vitbonus = 0}
			
			var totaldefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense();
			var tooltipdefense = round(scr_def_compare())
			
			var tooltipattack = round(scr_def_compare())
						
			var totalstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str();
			var tooltipstr = round(scr_str_compare());

			var totaldex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex();
			var tooltipdex = round(scr_dex_compare());
			
			var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();
			var tooltipintcompare = round(scr_int_compare());
			
			var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();
			var tooltipvitcompare = round(scr_vit_compare());					
			
			var minatkhover = round(scr_calc_min_dmg_all(tooltipstr,tooltipdex,tooltipintcompare,tooltipvitcompare, mindamage))-1;
			var maxatkhover = round(scr_calc_max_dmg_all(tooltipstr,tooltipdex,tooltipintcompare,tooltipvitcompare, maxdamage))-1;

		// If i HOVER over ANY item, it should display the NEW DAMAGE calculations


			if type != "Weapon" {

					
					if minatkhover > o_player_stats.min_dmg {draw_set_color(c_lime); draw_text(statx2,comparey, string(minatkhover)); draw_sprite(spr_up_arrow, 0, comparex2-10,comparey ); draw_set_color(c_white);}
					if minatkhover < o_player_stats.min_dmg {draw_set_color(c_red); draw_text(statx2,comparey, string(minatkhover)); draw_sprite(spr_down_arrow, 0, comparex2-10,comparey) ; draw_set_color(c_white);} 
					if minatkhover = o_player_stats.min_dmg { draw_text(statx2,comparey, string(minatkhover)); }   

					if maxatkhover > o_player_stats.max_dmg {draw_set_color(c_lime); draw_text(statx1,comparey, string(maxatkhover));draw_sprite(spr_up_arrow, 0, comparex-10,comparey ) ; draw_set_color(c_white);}
					if maxatkhover < o_player_stats.max_dmg {draw_set_color(c_red); draw_text(statx1,comparey, string(maxatkhover)); draw_sprite(spr_down_arrow, 0, comparex-10,comparey); draw_set_color(c_white);} 
					if maxatkhover = o_player_stats.max_dmg {draw_text(statx1,comparey, string(maxatkhover)); } 
			}	

			// DEFENSE and STATS can be in one group, because damage does not need to be calculated here. 
				
				// Defense

				if totaldefense > tooltipdefense {
					draw_set_color(c_red);
					draw_text(statx1,comparey+15, string(round(tooltipdefense)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, comparex-10,comparey+15)
					draw_set_color(c_white);
				}  
				// If your equipped wep is weaker than ur inventory wep
				if totaldefense < tooltipdefense {
					draw_set_color(c_lime);
					draw_text(statx1,comparey+15, string(round(tooltipdefense)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, comparex-10,comparey+15)
					draw_set_color(c_white);
				} 
				
				if totaldefense = tooltipdefense  {
					draw_text(statx1,comparey+15, string(round(tooltipdefense)));
				}
				
				// STATS - STR DEX INT VIT

				if totalstr > tooltipstr {
					draw_set_color(c_red);
					draw_text(statx1,comparey+30, string(round(tooltipstr)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, comparex-10,comparey+30)
					draw_set_color(c_white);
				}  
				if totalstr < tooltipstr {
					draw_set_color(c_lime);
					draw_text(statx1,comparey+30, string(round(tooltipstr)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, comparex-10,comparey+30)
					draw_set_color(c_white);
				} 
				if totalstr = tooltipstr {
					draw_text(statx1,comparey+30, string(round(tooltipstr)));
				}	


				if totaldex > tooltipdex {
					draw_set_color(c_red);
					draw_text(statx1,comparey+45, string(round(tooltipdex)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, comparex-10,comparey+45)
					draw_set_color(c_white);
				}  
				if totaldex < tooltipdex {
					draw_set_color(c_lime);
					draw_text(statx1,comparey+45, string(round(tooltipdex)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, comparex-10,comparey+45)
					draw_set_color(c_white);
				} 
				if totaldex = tooltipdex {
					draw_text(statx1,comparey+45, string(round(tooltipdex)));
				}


				if totalint > tooltipintcompare {
					draw_set_color(c_red);
					draw_text(statx2,comparey+15,string(round(tooltipintcompare)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, comparex2-10,comparey+15)
					draw_set_color(c_white);
				}  
				if totalint < tooltipintcompare {
					draw_set_color(c_lime);
					draw_text(statx2,comparey+15,string(round(tooltipintcompare)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, comparex2-10,comparey+15)
					draw_set_color(c_white);
				} 
				if totalint = tooltipintcompare {
					draw_text(statx2,comparey+15, string(round(tooltipintcompare)))
					
				}
				
				if totalvit > tooltipvitcompare {
					draw_set_color(c_red);
					draw_text(statx2,comparey+30,string(round(tooltipvitcompare)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, comparex2-10,comparey+30)
					draw_set_color(c_white);
				}  
				if totalvit < tooltipvitcompare {
					draw_set_color(c_lime);
					draw_text(statx2,comparey+30,string(round(tooltipvitcompare)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, comparex2-10,comparey+30)
					draw_set_color(c_white);
				} 
				if totalvit = tooltipvitcompare {
					draw_text(statx2,comparey+30,string(round(tooltipvitcompare)));
				}

			draw_set_font(fnt_normal);

			}
		}// End of if item is != crafting/potions

	// Click Events for Buying an Item -----------------------------------------------------------------------
	
	if rightclick  and item != -1  and o_mouse_pointer.sellmode = false {
			
		// Check for empty slots and return remainder
		var stackcheck;
		stackcheck = scr_check_stackable_item(index);
		
		// Click Slots		
		// Begin BUYBACK SLOTS

		if slot >= 21 and slot <= 36{
			script_execute(scr_buy_item_script_buyback);		
		} 
		
	}
} // End of if slots less than 16

	
	} else {
		play_tick = false;
		
	}