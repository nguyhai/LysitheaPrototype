/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06996F1A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Draw event is triggered every frame$(13_10)$(13_10)// The item is equal to the button's item in that slot$(13_10)// When an item is in the inventory, it will have a sprite index assigned to a slot$(13_10)var item = global.inventory[slot];// What this does is check that slot, and look at the sprite index$(13_10)var shift  = keyboard_check(vk_shift);$(13_10)$(13_10)// Need a timer so you cant click too fast in inventory$(13_10)if o_inventory.left_click_timer = 10{$(13_10)	var click = mouse_check_button_pressed(mb_left);$(13_10)} else{$(13_10)	var click = noone;$(13_10)}$(13_10)$(13_10)if o_inventory.right_click_timer = 10{$(13_10)	var rightclick = mouse_check_button_pressed(mb_right);$(13_10)} else{$(13_10)	var rightclick = noone;$(13_10)}$(13_10)$(13_10)$(13_10)// Add a depth here so that the tooltip floats on top of inventory instead of underneath$(13_10)depth = -2;$(13_10)$(13_10)// Draw the count value for stackable items when on the mouse$(13_10)if (mouseItem != -1) and o_mouseitem.stackcount > 0 {$(13_10)	stacks = o_mouseitem.stackcount;$(13_10)	draw_set_font(fnt_stacktext);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(o_mouse_pointer.x-4,o_mouse_pointer.y+14,string(stacks));$(13_10)	draw_set_font(fnt_normal);$(13_10)		$(13_10)}$(13_10)$(13_10)// Checking the difference between the x coordinate of the mouse$(13_10)// If we're within 16 pixels of the origin of the button object$(13_10)// This will tell us if the mouse is hovering over the invbutton$(13_10)// I set it to 15 so that there is a tiny space of pixel between boxes, this way alpha resets$(13_10)$(13_10)if (abs(mouse_x - x) < 19) && (abs(mouse_y - y) < 19) && showInv == true {$(13_10)$(13_10)// Define the price here$(13_10)$(13_10)	price = script_execute(scr_inventory_prices);$(13_10)	sellprice = price * 0.20;	$(13_10)$(13_10)$(13_10)	inside_box = true;$(13_10)	// On hover, if mouseItem is empty over weapon slot, change the type to weapon so that $(13_10)	// you can click the slot to remove the item$(13_10)	if mouseItem =-1 and slot = 62{$(13_10)		o_mouseitem.type = "Weapon";$(13_10)	}	$(13_10)	if mouseItem =-1 and slot = 63{$(13_10)		o_mouseitem.type = "Chest Armor";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 64{$(13_10)		o_mouseitem.type = "Offhand";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 65{$(13_10)		o_mouseitem.type = "Hat";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 66{$(13_10)		o_mouseitem.type = "Pants";$(13_10)	}	$(13_10)	if mouseItem =-1 and slot = 67{$(13_10)		o_mouseitem.type = "Gloves";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 68{$(13_10)		o_mouseitem.type = "Boots";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 69{$(13_10)		o_mouseitem.type = "Artifact";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 70{$(13_10)		o_mouseitem.type = "Amulet";$(13_10)	}	$(13_10)	if mouseItem =-1 and slot = 71{$(13_10)		o_mouseitem.type = "Bracelet";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 72{$(13_10)		o_mouseitem.type = "Ring";$(13_10)	}$(13_10)	if mouseItem =-1 and slot = 73{$(13_10)		o_mouseitem.type = "Earring";$(13_10)	}$(13_10)$(13_10)	// Need to draw a red square if the item is not supposed to go into the slot - Green square if it is legit$(13_10)	$(13_10)	if mouseItem !=-1 and slot = 62 and o_mouseitem.type != "Weapon"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 62 and o_mouseitem.type = "Weapon"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 63 and o_mouseitem.type != "Chest Armor"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 63 and o_mouseitem.type = "Chest Armor"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 64 and o_mouseitem.type != "Offhand"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 64 and o_mouseitem.type = "Offhand"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 65 and o_mouseitem.type != "Hat"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 65 and o_mouseitem.type = "Hat"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 66 and o_mouseitem.type != "Pants"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 66 and o_mouseitem.type = "Pants"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 67 and o_mouseitem.type != "Gloves"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 67 and o_mouseitem.type = "Gloves"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 68 and o_mouseitem.type != "Boots"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 68 and o_mouseitem.type = "Boots"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 69 and o_mouseitem.type != "Artifact"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 69 and o_mouseitem.type = "Artifact"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)$(13_10)	if mouseItem !=-1 and slot = 70 and o_mouseitem.type != "Amulet"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 70 and o_mouseitem.type = "Amulet"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}	$(13_10)	$(13_10)	if mouseItem !=-1 and slot = 71 and o_mouseitem.type != "Bracelet"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 71 and o_mouseitem.type = "Bracelet"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}$(13_10)	$(13_10)	if mouseItem !=-1 and slot = 72 and o_mouseitem.type != "Ring"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 72 and o_mouseitem.type = "Ring"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}	$(13_10)	if mouseItem !=-1 and slot = 73 and o_mouseitem.type != "Earring"{$(13_10)		script_execute(scr_draw_red);$(13_10)	} else if mouseItem !=-1 and slot = 73 and o_mouseitem.type = "Earring"{$(13_10)		script_execute(scr_draw_green);$(13_10)	}	$(13_10)		$(13_10)	// If inside box, then mouse pointer = true$(13_10)	o_mouse_pointer.inside_box = true;$(13_10)	$(13_10)	// For slots 1-60, draw white box$(13_10)	if slot <= 60 {$(13_10)		// Define variables$(13_10)		script_execute(scr_tooltip_variables);$(13_10)$(13_10)		if rarity == 10 {$(13_10)			draw_set_alpha(alpha);$(13_10)			draw_set_color(c_white);$(13_10)			//draw_rectangle(x-16, y-16, x+16, y+16, 0);$(13_10)			draw_sprite(spr_item_hover_gold,0,x,y);$(13_10)			draw_set_alpha(1);$(13_10)			draw_set_color(c_white);$(13_10)			$(13_10)		} else {$(13_10)			draw_set_alpha(alpha);$(13_10)			draw_set_color(c_white);$(13_10)			//draw_rectangle(x-16, y-16, x+16, y+16, 0);$(13_10)			draw_sprite(spr_item_hover_white,0,x,y);$(13_10)			draw_set_alpha(1);$(13_10)			draw_set_color(c_white);$(13_10)		}$(13_10)	}$(13_10)	//Draw the tooltip thing for slots 60 and under$(13_10)	if (item !=-1) and (slot <= 60) {$(13_10)	$(13_10)	// If it is a stackable and you're in sell mode, display tooltip for selling$(13_10)	if stackcount > 0 and o_mouse_pointer.sellmode = true {$(13_10)		instance_create_depth(x-250,y-100,0,o_shop_message_sell_tooltip);$(13_10)	}$(13_10)$(13_10)	depth = -4;$(13_10)	$(13_10)	// Initialize tooltip variables$(13_10)	script_execute(scr_tooltip_variables);$(13_10)	// Initialize variable for boot speed$(13_10)	var speedbonus = 0;$(13_10)			$(13_10)		draw_sprite(spr_tooltip,0,x,y-20);	// Tooltip$(13_10)		$(13_10)		// Display the prices$(13_10)		if showInv = true {$(13_10)			draw_set_font(fnt_shop);$(13_10)			draw_text_color(x+25,y+65,+"Sell Price:  "+ string(string_thousands(sellprice)) +" Gold",c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)			draw_set_font(fnt_normal);$(13_10)		}$(13_10)			$(13_10)		if type!= "Crafting" {$(13_10)			if type!= "Potion" {$(13_10)			// Stat Comparison------------------------------------------------$(13_10)			draw_sprite(spr_compare,0,x+320,y-20);$(13_10)			$(13_10)			// Set font for stat compare tooltip$(13_10)			draw_set_font(fnt_tooltip);$(13_10)			$(13_10)			// STATS IF EQUIPPED$(13_10)			draw_text(x+290, y-298, "Stats if Equipped")$(13_10)			// Draw the icons$(13_10)			$(13_10)			draw_set_color(c_yellow);$(13_10)$(13_10)			draw_text(x+285,y-260, "Max ATK")$(13_10)			draw_text(x+285,y-240, "Min ATK")$(13_10)			draw_text(x+285,y-220, "DEF")$(13_10)			draw_text(x+285,y-200, "STR")$(13_10)			draw_text(x+285,y-180, "DEX")$(13_10)			draw_text(x+285,y-160, "INT")$(13_10)			draw_text(x+285,y-140, "VIT")$(13_10)$(13_10)			draw_set_color(c_white);$(13_10)			// If there is no item in the weapon slot$(13_10)			//draw_set_color(c_white)$(13_10)			//draw_set_color(c_lime)$(13_10)			//draw_set_color(c_red)$(13_10)			$(13_10)			if global.inventory[62] = -1 and type = "Weapon" {$(13_10)				// Add the stats to the total stats and display the new one. Add green arrow or red arrow depending.$(13_10)				var tooltipmindmgstr = round(scr_calc_min_dmg_display_str(mindamage, strbonus))-1;$(13_10)				var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str(maxdamage, strbonus))-1;	$(13_10)									   $(13_10)				var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex(mindamage, dexbonus))-1;$(13_10)				var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex(maxdamage, dexbonus))-1;	$(13_10)									   $(13_10)				var tooltipmindmgint = round(scr_calc_min_dmg_display_int(mindamage, intelbonus))-1;$(13_10)				var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int(maxdamage, intelbonus))-1;	$(13_10)				draw_set_color(c_lime)$(13_10)				$(13_10)				if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {$(13_10)				// Min DMG$(13_10)				draw_text(x+360,y-240, string(round(tooltipmindmgstr)))$(13_10)				// Max DMG$(13_10)				draw_text(x+360,y-260, string(round(tooltipmaxdmgstr)))$(13_10)				$(13_10)				}$(13_10)				if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {$(13_10)				// Min DMG$(13_10)				draw_text(x+360,y-240, string(round(tooltipmindmgdex)))$(13_10)				// Max DMG$(13_10)				draw_text(x+360,y-260, string(round(tooltipmaxdmgdex)))$(13_10)				$(13_10)				}$(13_10)				if subweapon = "Wand" or subweapon = "Staff" {$(13_10)				// Min DMG$(13_10)				draw_text(x+360,y-240, string(round(tooltipmindmgint)))$(13_10)				// Max DMG$(13_10)				draw_text(x+360,y-260, string(round(tooltipmaxdmgint)))$(13_10)				$(13_10)				}$(13_10)				draw_set_color(c_white)$(13_10)				draw_sprite(spr_up_arrow, 0, x+275,y-260) // Max DMG$(13_10)				draw_sprite(spr_up_arrow, 0, x+275,y-240) // MIN DMG$(13_10)				$(13_10)			}$(13_10)			$(13_10)			// If the slot has a wep and the item we have hovered is a weapon$(13_10)			if global.inventory[62] != -1 and type = "Weapon" {$(13_10)			if mindamage < 0 { mindamage = 0}$(13_10)			if maxdamage < 0 { maxdamage = 0}$(13_10)			$(13_10)			if strbonus < 0 { strbonus = 0}$(13_10)			if dexbonus < 0 { dexbonus = 0}$(13_10)			if intelbonus < 0 { intelbonus = 0}$(13_10)			if vitbonus < 0 { vitbonus = 0}$(13_10)								$(13_10)			var tooltipmindmgstr = round(scr_calc_min_dmg_display_str(mindamage, strbonus))-1;$(13_10)			var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str(maxdamage, strbonus))-1;	$(13_10)								   $(13_10)			var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex(mindamage, dexbonus))-1;$(13_10)			var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex(maxdamage, dexbonus))-1;	$(13_10)								   $(13_10)			var tooltipmindmgint = round(scr_calc_min_dmg_display_int(mindamage, intelbonus))-1;$(13_10)			var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int(maxdamage, intelbonus))-1;	$(13_10)			$(13_10)			var subweapontype = global.inventory[63, 23];$(13_10)	$(13_10)			if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {$(13_10)			$(13_10)				if o_player_stats.min_dmg > tooltipmindmgstr {draw_set_color(c_red); draw_text(x+360,y-240, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, x+275,y-240);  draw_set_color(c_white);}  $(13_10)				if o_player_stats.min_dmg < tooltipmindmgstr {draw_set_color(c_lime); draw_text(x+360,y-240, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ) ; draw_set_color(c_white);}$(13_10)				if o_player_stats.min_dmg = tooltipmindmgstr {draw_text(x+360,y-240, string(tooltipmindmgstr)); draw_set_color(c_white);}$(13_10)$(13_10)				// Max Damage$(13_10)				if o_player_stats.max_dmg > tooltipmaxdmgstr {draw_set_color(c_red); draw_text(x+360,y-260, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);}  $(13_10)				if o_player_stats.max_dmg < tooltipmaxdmgstr {draw_set_color(c_lime); draw_text(x+360,y-260, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, x+275,y-260);   draw_set_color(c_white);}$(13_10)				if o_player_stats.max_dmg = tooltipmaxdmgstr {draw_text(x+360,y-260, string(tooltipmaxdmgstr)); draw_set_color(c_white);}$(13_10)	$(13_10)			}$(13_10)$(13_10)			if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {$(13_10)$(13_10)				if o_player_stats.min_dmg > tooltipmindmgdex {draw_set_color(c_red); draw_text(x+360,y-240, string(tooltipmindmgdex));  draw_sprite(spr_down_arrow, 0, x+275,y-240); draw_set_color(c_white); }  $(13_10)				if o_player_stats.min_dmg < tooltipmindmgdex {draw_set_color(c_lime); draw_text(x+360,y-240, string(tooltipmindmgdex)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ) ; draw_set_color(c_white); }$(13_10)				if o_player_stats.min_dmg = tooltipmindmgdex {draw_text(x+360,y-240, string(tooltipmindmgdex)); draw_set_color(c_white); }$(13_10)				$(13_10)				// Max Damage$(13_10)				if o_player_stats.max_dmg > tooltipmaxdmgdex {draw_set_color(c_red); draw_text(x+360,y-260, string(tooltipmaxdmgdex)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);}  $(13_10)				if o_player_stats.max_dmg < tooltipmaxdmgdex {draw_set_color(c_lime); draw_text(x+360,y-260, string(tooltipmaxdmgdex)); draw_sprite(spr_up_arrow, 0, x+275,y-260)  ; draw_set_color(c_white);}$(13_10)				if o_player_stats.max_dmg = tooltipmaxdmgdex {draw_text(x+360,y-260, string(tooltipmaxdmgdex)); draw_set_color(c_white);}$(13_10)	$(13_10)			}			$(13_10)			$(13_10)			if subweapon = "Wand" or subweapon = "Staff" {$(13_10)$(13_10)				if o_player_stats.min_dmg > tooltipmindmgint {draw_set_color(c_red); draw_text(x+360,y-240, string(tooltipmindmgint));  draw_sprite(spr_down_arrow, 0, x+275,y-240); draw_set_color(c_white);}  $(13_10)				if o_player_stats.min_dmg < tooltipmindmgint {draw_set_color(c_lime); draw_text(x+360,y-240, string(tooltipmindmgint)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ) ; draw_set_color(c_white);}$(13_10)				if o_player_stats.min_dmg = tooltipmindmgint {draw_text(x+360,y-240, string(tooltipmindmgint)); draw_set_color(c_white);}$(13_10)$(13_10)				// Max Damage$(13_10)				if o_player_stats.max_dmg > tooltipmaxdmgint {draw_set_color(c_red); draw_text(x+360,y-260, string(tooltipmaxdmgint)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);}  $(13_10)				if o_player_stats.max_dmg < tooltipmaxdmgint {draw_set_color(c_lime); draw_text(x+360,y-260, string(tooltipmaxdmgint)); draw_sprite(spr_up_arrow, 0, x+275,y-260)  ; draw_set_color(c_white);}$(13_10)				if o_player_stats.max_dmg = tooltipmaxdmgint {draw_text(x+360,y-260, string(tooltipmaxdmgint)); draw_set_color(c_white);}$(13_10)	$(13_10)			}$(13_10)			}$(13_10)					$(13_10)			if defense < 0 { defense = 0}$(13_10)			if strbonus < 0 { strbonus = 0}$(13_10)			if dexbonus < 0 { dexbonus = 0}$(13_10)			if intelbonus < 0 { intelbonus = 0}$(13_10)			if vitbonus < 0 { vitbonus = 0}$(13_10)			$(13_10)			var totaldefense = o_player_stats.stats[? "defense"]+scr_calc_equip_defense();$(13_10)			var tooltipdefense = round(scr_def_compare())$(13_10)			$(13_10)			var tooltipattack = round(scr_def_compare())$(13_10)						$(13_10)			var totalstr = o_player_stats.stats[? "strength"]+scr_calc_equip_str();$(13_10)			var tooltipstr = round(scr_str_compare());$(13_10)$(13_10)			var totaldex = o_player_stats.stats[? "dexterity"]+scr_calc_equip_dex();$(13_10)			var tooltipdex = round(scr_dex_compare());$(13_10)			$(13_10)			var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();$(13_10)			var tooltipintcompare = round(scr_int_compare());$(13_10)			$(13_10)			var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();$(13_10)			var tooltipvitcompare = round(scr_vit_compare());					$(13_10)			$(13_10)			var minatkhover = round(scr_calc_min_dmg_all(tooltipstr,tooltipdex,tooltipintcompare,tooltipvitcompare, mindamage))-1;$(13_10)			var maxatkhover = round(scr_calc_max_dmg_all(tooltipstr,tooltipdex,tooltipintcompare,tooltipvitcompare, maxdamage))-1;$(13_10)$(13_10)		// If i HOVER over ANY item, it should display the NEW DAMAGE calculations$(13_10)$(13_10)			if type != "Weapon" {$(13_10)$(13_10)				if minatkhover > o_player_stats.min_dmg {draw_set_color(c_lime); draw_text(x+360,y-240, string(minatkhover)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ); draw_set_color(c_white);}$(13_10)				if minatkhover < o_player_stats.min_dmg {draw_set_color(c_red); draw_text(x+360,y-240, string(minatkhover)); draw_sprite(spr_down_arrow, 0, x+275,y-240) ; draw_set_color(c_white);}  $(13_10)				if minatkhover = o_player_stats.min_dmg {draw_text(x+360,y-240, string(minatkhover)); ; draw_set_color(c_white);}  $(13_10)				$(13_10)				if maxatkhover > o_player_stats.max_dmg {draw_set_color(c_lime); draw_text(x+360,y-260, string(maxatkhover));draw_sprite(spr_up_arrow, 0, x+275,y-260 ) ; draw_set_color(c_white);}$(13_10)				if maxatkhover < o_player_stats.max_dmg {draw_set_color(c_red); draw_text(x+360,y-260, string(maxatkhover)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);} $(13_10)				if maxatkhover = o_player_stats.max_dmg {draw_text(x+360,y-260, string(maxatkhover));  draw_set_color(c_white);} $(13_10)				$(13_10)			}	$(13_10)$(13_10)			// DEFENSE and STATS can be in one group, because damage does not need to be calculated here. $(13_10)				$(13_10)				// Defense$(13_10)$(13_10)				if totaldefense > tooltipdefense {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(x+360,y-220, string(round(tooltipdefense)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, x+275,y-220)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				// If your equipped wep is weaker than ur inventory wep$(13_10)				if totaldefense < tooltipdefense {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(x+360,y-220, string(round(tooltipdefense)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, x+275,y-220)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				$(13_10)				if totaldefense = tooltipdefense{$(13_10)					draw_text(x+360,y-220, string(round(tooltipdefense)));$(13_10)				}$(13_10)				$(13_10)				// STATS - STR DEX INT VIT$(13_10)$(13_10)				if totalstr > tooltipstr {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(x+360,y-200, string(round(tooltipstr)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, x+275,y-200)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				if totalstr < tooltipstr {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(x+360,y-200, string(round(tooltipstr)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, x+275,y-200)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				$(13_10)				if totalstr = tooltipstr {$(13_10)					draw_text(x+360,y-200, string(round(tooltipstr)));$(13_10)				}	$(13_10)$(13_10)				if totaldex > tooltipdex {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(x+360,y-180, string(round(tooltipdex)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, x+275,y-180)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				if totaldex < tooltipdex {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(x+360,y-180, string(round(tooltipdex)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, x+275,y-180)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				$(13_10)				if totaldex = tooltipdex {$(13_10)					draw_text(x+360,y-180, string(round(tooltipdex)));$(13_10)				}$(13_10)$(13_10)				if totalint > tooltipintcompare {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(x+360,y-160,string(round(tooltipintcompare)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, x+275,y-160)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				 $(13_10)				if totalint < tooltipintcompare {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(x+360,y-160,string(round(tooltipintcompare)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, x+275,y-160)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				$(13_10)				if totalint = tooltipintcompare {$(13_10)					draw_text(x+360,y-160, string(round(tooltipintcompare)))$(13_10)					$(13_10)				}$(13_10)				$(13_10)				if totalvit > tooltipvitcompare {$(13_10)					draw_set_color(c_red);$(13_10)					draw_text(x+360,y-140,string(round(tooltipvitcompare)));$(13_10)					// Draw red down arrow$(13_10)					draw_sprite(spr_down_arrow, 0, x+275,y-140)$(13_10)					draw_set_color(c_white);$(13_10)				}  $(13_10)				$(13_10)				if totalvit < tooltipvitcompare {$(13_10)					draw_set_color(c_lime);$(13_10)					draw_text(x+360,y-140,string(round(tooltipvitcompare)));$(13_10)					// Draw up green arrow$(13_10)					draw_sprite(spr_up_arrow, 0, x+275,y-140)$(13_10)					draw_set_color(c_white);$(13_10)				} $(13_10)				$(13_10)				if totalvit = tooltipvitcompare {$(13_10)					draw_text(x+360,y-140,string(round(tooltipvitcompare)));$(13_10)				}$(13_10)$(13_10)			draw_set_font(fnt_normal);$(13_10)$(13_10)	}$(13_10)}$(13_10)	//---------------------------------------------------------------------	$(13_10)	$(13_10)			// Defining colors and stats based on rarity$(13_10)			if (rarity == 1){rarity = c_white; speedbonus = 10;}$(13_10)			if (rarity == 5){rarity = c_lime; speedbonus = 20;}$(13_10)			if (rarity == 10){rarity = make_color_rgb(255,140,0); speedbonus = 30;}$(13_10)			$(13_10)			if (upgradelevel > 0){$(13_10)				draw_text_color(x+31,y-299, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text_color(x+30,y-300, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);$(13_10)				$(13_10)			} else {$(13_10)				draw_text_color(x+31,y-299, string(name),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text_color(x+30,y-300, string(name),rarity,rarity,rarity,rarity,1);$(13_10)				$(13_10)			}$(13_10)		$(13_10)			draw_text_color(x+26,y-259,"Type"+":"+string(type),c_black,c_black,c_black,c_black,1);$(13_10)			draw_text      (x+25,y-260,"Type"+":"+string(type));$(13_10)			$(13_10)			$(13_10)			draw_text_color(x+26,y-239,"LvL Req"+":"+string(levelreq),c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (x+25,y-240,"LvL Req"+":"+string(levelreq));$(13_10)			$(13_10)			// ADD SPECIALIZED STATS FOR EQUIPMENT - Add under armor stat (x+39,y-199)$(13_10)			// Boots need bonus speed drawn based on rarity$(13_10)		$(13_10)			if type = "Boots" {$(13_10)				// Boots get a speed bonus based on rarity$(13_10)				draw_text_color(x+26,y-199,"SPD+ " +""+string(speedbonus) +string("%"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-199,"SPD+ "+""+string(speedbonus)+string("%"));$(13_10)			}$(13_10)			$(13_10)			if type = "Amulet" {$(13_10)				draw_text_color(x+26,y-219,"Regen"+": "+string(healamount),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Regen"+": "+string(healamount));$(13_10)			} $(13_10)			if type = "Bracelet" {$(13_10)				draw_text_color(x+26,y-219,"Crit Rate"+": "+string(critical),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Crit Rate"+": "+string(critical));$(13_10)			} $(13_10)			if type = "Ring" {$(13_10)				draw_text_color(x+26,y-219,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));$(13_10)			} $(13_10)			if type = "Earring" {$(13_10)				draw_text_color(x+26,y-219,"Evasion"+":"+string(evasion),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Evasion"+":"+string(evasion));$(13_10)			} $(13_10)			if type = "Artifact" {$(13_10)				draw_text_color(x+26,y-219,"STR"+": +"+string(strbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"STR"+": +"+string(strbonus));$(13_10)				$(13_10)				draw_text_color(x+26,y-199,"DEX"+": +"+string(dexbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-200,"DEX"+": +"+string(dexbonus));$(13_10)				$(13_10)				draw_text_color(x+26,y-179,"INT"+": +"+string(intelbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-180,"INT"+": +"+string(intelbonus));$(13_10)				$(13_10)				draw_text_color(x+26,y-159,"VIT"+": +"+string(vitbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-160,"VIT"+": +"+string(vitbonus));$(13_10)			} $(13_10)			$(13_10)			// For Weapons$(13_10)			if mindamage > 0 and type = "Weapon" {$(13_10)				draw_text_color(x+26,y-219,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));$(13_10)			}$(13_10)			$(13_10)			// For Armors - Tooltip needs to show the 1 or 2 stats on it (or 3 in the future)$(13_10)			if (type = "Chest Armor" or  type = "Hat" or  type = "Pants" or type = "Boots" or type = "Gloves") {$(13_10)				// Draw their defense stat$(13_10)				draw_text_color(x+26,y-219,"Armor"+": "+string(defense),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Armor"+": "+string(defense));$(13_10)$(13_10)				// If there is stat bonuses, draw them$(13_10)				if statbonuses = 1 {$(13_10)					draw_text_color(x+26,y-179,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y-180,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)				}$(13_10)				if statbonuses = 2 {$(13_10)					draw_text_color(x+26,y-179,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y-180,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)					$(13_10)					draw_text_color(x+26,y-159,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y-160,string(statbonus2[0]) +": "+string(statbonus2[1]));$(13_10)					$(13_10)				}$(13_10)				if statbonuses = 3 {$(13_10)					draw_text_color(x+26,y-179,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y-180,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)					draw_text_color(x+26,y-159,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y-160,string(statbonus2[0]) +": "+string(statbonus2[1]));$(13_10)					draw_text_color(x+26,y-139,string(statbonus3[0])+": "+string(statbonus3[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y-140,string(statbonus3[0]) +": "+string(statbonus3[1]));$(13_10)				}$(13_10)				$(13_10)			}$(13_10)			$(13_10)			// Draw tooltip for potions$(13_10)			if name == "Health Potion"{$(13_10)				draw_text_color(x+26,y-219,"Heals"+" "+string(healamount)+" "+ string("HP"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Heals"+" "+string(healamount)+" "+ string("HP"));$(13_10)			}$(13_10)			if name == "Mana Potion"{$(13_10)				draw_text_color(x+26,y-219,"Restores"+" "+string(healamount)+" "+ string("MP"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y-220,"Restores"+" "+string(healamount)+" "+ string("MP"));$(13_10)			}$(13_10)			$(13_10)			draw_text_color(x+26,y-99,"Description:",c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (x+25,y-100,"Description:");$(13_10)			$(13_10)			draw_text_ext_color(x+26,y-79,string(description),20, 235,c_black,c_black,c_black,c_black,1);$(13_10)			draw_text_ext_color(x+25,y-80,string(description),20, 235,c_white,c_white,c_white,c_white,1);$(13_10)$(13_10)	}$(13_10)	$(13_10)	// Draw tooltip for items in the equipment slots (60 and up) --------------------------$(13_10)	if (item !=-1) and (slot > 60) and (slot < 73){$(13_10)$(13_10)	// Initialize tooltip variables$(13_10)	$(13_10)	script_execute(scr_tooltip_variables);$(13_10)	$(13_10)		var speedbonus = 0;$(13_10)		$(13_10)		// Display the sell price$(13_10)$(13_10)		draw_sprite(spr_tooltip1,0,x,y+15);	$(13_10)		$(13_10)		if showInv = true {$(13_10)			draw_set_font(fnt_shop);$(13_10)			draw_text_color(x+25,y+295,+"Sell Price:  "+ string(string_thousands(sellprice)) +" Gold",c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)			draw_set_font(fnt_normal);$(13_10)		}$(13_10)$(13_10)			if (rarity == 1){rarity = c_white; speedbonus = 10;}$(13_10)			if (rarity == 5){rarity = c_lime; speedbonus = 20;}$(13_10)			if (rarity == 10){rarity = make_color_rgb(255,140,0); speedbonus = 30;}$(13_10)			//depth = -2;$(13_10)			if (upgradelevel > 0){$(13_10)				draw_text_color(x+24,y-71, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text_color(x+25,y-70, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);$(13_10)				$(13_10)			} else{$(13_10)				draw_text_color(x+24,y-71, string(name),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text_color(x+25,y-70, string(name),rarity,rarity,rarity,rarity,1);$(13_10)			}$(13_10)				$(13_10)			draw_text_color(x+24,y-31,"Type"+":"+string(type),c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (x+25,y-30,"Type"+":"+string(type));$(13_10)			$(13_10)			draw_text_color(x+24,y-11,"LvL Req"+":"+string(levelreq),c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (x+25,y-10,"LvL Req"+":"+string(levelreq));$(13_10)			$(13_10)			// Add boots speedbonus$(13_10)			$(13_10)			if type = "Boots" {$(13_10)$(13_10)				draw_text_color(x+24,y+31,"SPD+ " +""+string(speedbonus) +string("%"),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+30,"SPD+ "+""+string(speedbonus)+string("%"));$(13_10)			}$(13_10)			$(13_10)			// Accessories$(13_10)			if type = "Amulet" {$(13_10)				draw_text_color(x+24,y+11,"Regen"+": "+string(healamount),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"Regen"+": "+string(healamount));$(13_10)			} $(13_10)			$(13_10)			if type = "Bracelet" {$(13_10)				draw_text_color(x+24,y+11,"Crit Rate"+": "+string(critical),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"Crit Rate"+": "+string(critical));$(13_10)			} $(13_10)			$(13_10)			if type = "Ring" {$(13_10)				draw_text_color(x+24,y+11,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));$(13_10)			} $(13_10)			$(13_10)			if type = "Earring" {$(13_10)				draw_text_color(x+24,y+11,"Evasion"+":"+string(evasion),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"Evasion"+":"+string(evasion));$(13_10)			} $(13_10)			$(13_10)			if type = "Artifact" {$(13_10)				draw_text_color(x+24,y+11,"STR"+": +"+string(strbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"STR"+": +"+string(strbonus));$(13_10)				$(13_10)				draw_text_color(x+24,y+31,"DEX"+": +"+string(dexbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+30,"DEX"+": +"+string(dexbonus));$(13_10)				$(13_10)				draw_text_color(x+24,y+51,"INT"+": +"+string(intelbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+50,"INT"+": +"+string(intelbonus));$(13_10)				$(13_10)				draw_text_color(x+24,y+71,"VIT"+": +"+string(vitbonus),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+70,"VIT"+": +"+string(vitbonus));$(13_10)				$(13_10)			} $(13_10)			$(13_10)			// Draw weapon stats$(13_10)			if mindamage > 0 and type == "Weapon" {$(13_10)				draw_text_color(x+24,y+11,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));$(13_10)			}$(13_10)			// Draw armor stats$(13_10)			if (type = "Chest Armor" or  type = "Hat" or  type = "Pants" or type = "Boots" or type = "Gloves") {$(13_10)				// Draw Defense$(13_10)				draw_text_color(x+24,y+11,"Armor"+": "+string(defense),c_black,c_black,c_black,c_black,1);$(13_10)				draw_text	   (x+25,y+10,"Armor"+": "+string(defense));$(13_10)				$(13_10)				// If there is stat bonuses, draw them$(13_10)				if statbonuses = 1 {$(13_10)					draw_text_color(x+24,y+51,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y+50,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)				}$(13_10)				if statbonuses = 2 {$(13_10)					draw_text_color(x+24,y+51,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y+50,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)					$(13_10)					draw_text_color(x+24,y+71,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y+70,string(statbonus2[0]) +": "+string(statbonus2[1]));$(13_10)					$(13_10)				}$(13_10)				if statbonuses = 3 {$(13_10)					draw_text_color(x+24,y+51,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y+50,string(statbonus1[0]) +": "+string(statbonus1[1]))$(13_10)					$(13_10)					draw_text_color(x+24,y+71,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y+70,string(statbonus2[0]) +": "+string(statbonus2[1]));$(13_10)					$(13_10)					draw_text_color(x+24,y+91,string(statbonus3[0])+": "+string(statbonus3[1]),c_black,c_black,c_black,c_black,1);$(13_10)					draw_text	   (x+25,y+90,string(statbonus3[0]) +": "+string(statbonus3[1]));$(13_10)				}	$(13_10)			}		$(13_10)$(13_10)			draw_text_color(x+24,y+131,"Description:",c_black,c_black,c_black,c_black,1);$(13_10)			draw_text	   (x+25,y+130,"Description:");$(13_10)			$(13_10)			draw_text_ext_color(x+24,y+151,string(description),20, 235,c_black,c_black,c_black,c_black,1);$(13_10)			draw_text_ext_color(x+25,y+150,string(description),20, 235,c_white,c_white,c_white,c_white,1);$(13_10)			$(13_10)	}$(13_10)	//Click events$(13_10)	//Slots 60 and below are the inventory slots$(13_10)	$(13_10)	if (click)and !rightclick and (slot <= 60) {$(13_10)	o_inventory.left_click_timer = 0;$(13_10)	$(13_10)	$(13_10)		// If you have a stackable item and you click on another stackable item with the same name$(13_10)		if (item !=-1) and (mouseItem != -1) and global.inventory[slot+1,8] > 0 and global.inventory[slot+1,9] < 100 and o_mouseitem.name == global.inventory[slot+1, 5] {$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Move the mouse stackcount to temp var$(13_10)			o_mouseitem.tempstackcount = o_mouseitem.stackcount;$(13_10)			// Move the stats from slot into the mousestats$(13_10)			script_execute(scr_array_to_mousestats);$(13_10)			// Add stackcount and tempstackcount together for final stack count$(13_10)			o_mouseitem.stackcount = o_mouseitem.stackcount + o_mouseitem.tempstackcount;$(13_10)			$(13_10)$(13_10)			// We will need to get a remainder if it is over 100$(13_10)			if o_mouseitem.stackcount > 100 {$(13_10)				o_mouseitem.remainder = o_mouseitem.stackcount-100;$(13_10)				o_mouseitem.stackcount = 100;$(13_10)				$(13_10)			} else {$(13_10)				o_mouseitem.remainder = -1;$(13_10)			}$(13_10)			$(13_10)			// Drop the slot that we're clicking on. The IF statement below this one should dump the mousestats stats back into the slot$(13_10)			scr_itemdrop_slot(slot);$(13_10)$(13_10)			item =-1;$(13_10)$(13_10)		}$(13_10)		$(13_10)		// If slot is not empty and if there is an item on the mouse...$(13_10)		// Switch the items in slot and mouse$(13_10)		if (item !=-1) and (mouseItem != -1) {$(13_10)				$(13_10)			//Throw all the slot stat items into the temp stats$(13_10)			script_execute(scr_array_to_mousetemp);$(13_10)$(13_10)			// Move the mouse stats into the array$(13_10)			script_execute(scr_mousestats_to_array);$(13_10)$(13_10)			// Alarm will trigger the mouse stats to equal the temp stats$(13_10)			o_mouseitem.alarm[0] = 1;$(13_10)			$(13_10)		}$(13_10)		// If item slot has an item and the mouse doesn't have an item$(13_10)		if (item !=-1){$(13_10)			// If we are in sellmode, destroy the item after getting the price. This is for selling normal items and not stackables.$(13_10)			if o_mouse_pointer.sellmode = true and stackcount < 1{$(13_10)				var buybackcheck;$(13_10)				$(13_10)				buybackcheck = script_execute(scr_buyback_check);$(13_10)				$(13_10)				// Check to see if there is an open slot$(13_10)				if buybackcheck = 1 { // Open slot, add the item to the slot$(13_10)$(13_10)					scr_buyback_add(slot);$(13_10)					o_player_stats.gold = o_player_stats.gold + sellprice;$(13_10)					$(13_10)					// Display Sell Amount$(13_10)					script_execute(scr_sell_gold_displayer);	$(13_10)					o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;$(13_10)					$(13_10)					$(13_10)					scr_itemdrop_slot(slot);$(13_10)					mouseItem = -1;$(13_10)					audio_play_sound(snd_sell_item,9,false);					$(13_10)	$(13_10)				}$(13_10)				$(13_10)				if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36$(13_10)				$(13_10)				script_execute(scr_buyback_delete_last);$(13_10)				script_execute(scr_buyback_move_up);$(13_10)				script_execute(scr_buyback_delete_first);$(13_10)				// SLot 21 should pull from slot 20, which is always all -1s - basically deleted$(13_10)				scr_buyback_add(slot);$(13_10)				o_player_stats.gold = o_player_stats.gold + sellprice;$(13_10)				$(13_10)				// Display Sell Amount$(13_10)				script_execute(scr_sell_gold_displayer);	$(13_10)				o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;	$(13_10)							$(13_10)				scr_itemdrop_slot(slot);$(13_10)				mouseItem = -1;$(13_10)				audio_play_sound(snd_sell_item,9,false);				$(13_10)$(13_10)				}$(13_10)			$(13_10)			}  $(13_10)			$(13_10)		if o_mouse_pointer.sellmode = false { $(13_10)$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);	$(13_10)			$(13_10)			//We need to put the properties on the mouse item$(13_10)			//Access the array, and throw all the variables into the mouseitem stats$(13_10)			script_execute(scr_array_to_mousestats);$(13_10)$(13_10)			// Empty the slot$(13_10)			// We still have the var item that has the item stored$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		// If we have an item on our mouse$(13_10)		if (mouseItem != -1) and o_mouse_pointer.sellmode = false {$(13_10)			$(13_10)			// Set the tempmouseitem variable to be mouseItem$(13_10)			o_mouseitem.tempmouseitem = mouseItem;$(13_10)			// Add the item from our mouse to that slot$(13_10)			scr_item_pickup_slot(mouseItem, slot);$(13_10)			//If clicked back onto inventory, throw all properties from mouseitem stats$(13_10)			//Into the empty slot that was clicked$(13_10)			script_execute(scr_mousestats_to_array);$(13_10)$(13_10)		}$(13_10)		$(13_10)		// If there is an item in the slot, it swaps it to our mouse item$(13_10)		// mouseItem = item means that mouseItem is the item in the slot$(13_10)		if o_mouse_pointer.sellmode = false {$(13_10)			mouseItem = item;$(13_10)		}$(13_10)		$(13_10)		// If there is a remainder , then you gotta create a new mouseitem using that remainder as the stackcount$(13_10)		if o_mouseitem.remainder > 0 {$(13_10)$(13_10)			o_mouseitem.stackcount = o_mouseitem.remainder;$(13_10)			mouseItem = o_mouseitem.tempmouseitem;$(13_10)			o_mouseitem.remainder = -1;$(13_10)		}$(13_10)		$(13_10)		$(13_10)	}$(13_10)$(13_10)// Stacked Items Sell code ---------------------$(13_10)if (click) and (slot <= 60) and stackcount > 0  and o_mouse_pointer.sellmode = true{$(13_10)o_inventory.left_click_timer = 0;$(13_10)$(13_10)	if !shift {$(13_10)	/*$(13_10)		global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;$(13_10)		audio_play_sound(snd_sell_item,9,false);$(13_10)		o_player_stats.gold = o_player_stats.gold + sellprice;$(13_10)		$(13_10)		if global.inventory[slot+1,9] < 1 {$(13_10)			scr_itemdrop_slot(slot);$(13_10)			mouseItem = -1;$(13_10)			item = -1;$(13_10)$(13_10)		}$(13_10)	*/		$(13_10)		var itemssold = global.inventory[slot+1,9];$(13_10)		var buybackcheck;$(13_10)				$(13_10)		buybackcheck = script_execute(scr_buyback_check);$(13_10)		$(13_10)		// Check to see if there is an open slot in the buyback inventory$(13_10)		if buybackcheck = 1 { // Open slot, add the item to the slot$(13_10)$(13_10)			scr_buyback_add_one(slot);$(13_10)			global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;$(13_10)			o_player_stats.gold = o_player_stats.gold + (sellprice);$(13_10)			$(13_10)			// Display Sell Amount$(13_10)			script_execute(scr_sell_gold_displayer);	$(13_10)			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;			$(13_10)				$(13_10)			audio_play_sound(snd_sell_item,9,false);	$(13_10)			$(13_10)		if global.inventory[slot+1,9] < 1 {$(13_10)			scr_itemdrop_slot(slot);$(13_10)			mouseItem = -1;$(13_10)			item = -1;$(13_10)	$(13_10)		}$(13_10)				$(13_10)	$(13_10)		}$(13_10)		$(13_10)		if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36$(13_10)		$(13_10)			script_execute(scr_buyback_delete_last);$(13_10)			script_execute(scr_buyback_move_up);$(13_10)			script_execute(scr_buyback_delete_first);$(13_10)			// SLot 21 should pull from slot 20, which is always all -1s - basically deleted$(13_10)			scr_buyback_add_one(slot);$(13_10)			global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;$(13_10)			o_player_stats.gold = o_player_stats.gold + (sellprice);$(13_10)			$(13_10)			// Display Sell Amount$(13_10)			script_execute(scr_sell_gold_displayer);	$(13_10)			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;				$(13_10)			$(13_10)			audio_play_sound(snd_sell_item,9,false);	$(13_10)			$(13_10)			if global.inventory[slot+1,9] < 1 {$(13_10)				scr_itemdrop_slot(slot);$(13_10)				mouseItem = -1;$(13_10)				item = -1;$(13_10)			$(13_10)			}		$(13_10)		}		$(13_10)	}	$(13_10)	$(13_10)	if shift { // Holding down shift and left click sells everything$(13_10)		$(13_10)		var itemssold = global.inventory[slot+1,9];$(13_10)		var buybackcheck;$(13_10)				$(13_10)		buybackcheck = script_execute(scr_buyback_check);$(13_10)		$(13_10)		// Check to see if there is an open slot in the buyback inventory$(13_10)		if buybackcheck = 1 { // Open slot, add the item to the slot$(13_10)$(13_10)			scr_buyback_add(slot);$(13_10)			o_player_stats.gold = o_player_stats.gold + (sellprice*itemssold);$(13_10)$(13_10)			// Display Sell Amount$(13_10)			script_execute(scr_sell_gold_displayer);	$(13_10)			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + (sellprice*itemssold);				$(13_10)			$(13_10)			scr_itemdrop_slot(slot);$(13_10)			mouseItem = -1;$(13_10)			audio_play_sound(snd_sell_item,9,false);					$(13_10)	$(13_10)		}$(13_10)		$(13_10)		if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36$(13_10)		$(13_10)		script_execute(scr_buyback_delete_last);$(13_10)		script_execute(scr_buyback_move_up);$(13_10)		script_execute(scr_buyback_delete_first);$(13_10)		// SLot 21 should pull from slot 20, which is always all -1s - basically deleted$(13_10)		scr_buyback_add(slot);$(13_10)		o_player_stats.gold = o_player_stats.gold + (sellprice*itemssold);$(13_10)		$(13_10)		// Display Sell Amount$(13_10)		script_execute(scr_sell_gold_displayer);	$(13_10)		o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + (sellprice*itemssold);		$(13_10)		$(13_10)		scr_itemdrop_slot(slot);$(13_10)		mouseItem = -1;$(13_10)		item = -1;$(13_10)		audio_play_sound(snd_sell_item,9,false);				$(13_10)$(13_10)		}$(13_10)		$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)//-------------------------------------------------------------$(13_10)	// SHIFT + RIGHT CLICK events for STACKABLE ITEMS$(13_10)	$(13_10)if keyboard_check(vk_shift) and (rightclick)and !click and slot <= 60 and global.inventory[slot+1,9] > 1 {$(13_10)$(13_10)o_inventory.right_click_timer = 0; // Reset timer for clicking to be active$(13_10)$(13_10)	if o_mouse_pointer.sellmode = false {$(13_10)$(13_10)		if mouseItem = -1 {$(13_10)			script_execute(scr_array_to_mousestats);$(13_10)			global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;$(13_10)			o_mouseitem.stackcount = 1;$(13_10)			mouseItem = item;$(13_10)			script_execute(scr_equipsound_click);$(13_10)		} else{$(13_10)		$(13_10)			if o_mouseitem.index = item {$(13_10)				global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;$(13_10)				o_mouseitem.stackcount ++;$(13_10)				script_execute(scr_equipsound_click);$(13_10)				$(13_10)			}$(13_10)$(13_10)			if global.inventory[slot+1,9] < 1 {$(13_10)				scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)// Make quickdiv false again$(13_10)if !mouse_check_button(mb_right) {$(13_10)	o_inventory.quickdiv = false;$(13_10)$(13_10)$(13_10)} $(13_10)$(13_10)// Holding down shift and right button to divide$(13_10)if keyboard_check(vk_shift) and mouse_check_button(mb_right) and !click and slot <= 60 and global.inventory[slot+1,9] > 1 {$(13_10)	$(13_10)	// If mouse is held down for 1/2 second$(13_10)	if mouse_check_button(mb_right) {$(13_10)		o_inventory.quickdiv = true;$(13_10)		o_inventory.quickdivstart += 1;$(13_10)	$(13_10)	} $(13_10)$(13_10)	if mouse_check_button_released(mb_right){$(13_10)		o_inventory.quickdiv = false;$(13_10)		o_inventory.quickadd = false;$(13_10)		o_inventory.quickdivtimer = 0;$(13_10)		o_inventory.quickdivstart = 0;$(13_10)	}	$(13_10)	$(13_10)		$(13_10)	if o_inventory.quickadd = true {$(13_10)		global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;$(13_10)		o_mouseitem.stackcount ++;$(13_10)		o_inventory.quickdivtimer = 0;$(13_10)	}$(13_10)$(13_10)$(13_10)	if global.inventory[slot+1,9] < 1 {$(13_10)		scr_itemdrop_slot(slot);$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)// Right click events for using items---------------------------------------------$(13_10)	if !click and rightclick and !shift {$(13_10)		// Use the item$(13_10)		scr_use_item_keypress_inventory(slot);$(13_10)	}$(13_10)$(13_10)$(13_10)$(13_10)//-------------------------------------------------------------$(13_10)	// Right click events for equipment$(13_10)	// NOTE: BUTTON SLOT 41 IS THE WEAPON SLOT$(13_10)	// AND ARRAY SLOT 42 IS THE WEP ARRAY. SLOTS DOES NOT EQUAL ARRAY NUM. ARAY NUM IS +1 TO THE SLOT. $(13_10)	$(13_10)	if (rightclick)and slot <= 60 and mouseItem = -1 and o_mouse_pointer.sellmode = false{$(13_10)	o_inventory.right_click_timer = 0;	$(13_10)	$(13_10)		// Play sound on click$(13_10)		script_execute(scr_equipsound_click);$(13_10)	$(13_10)		// If the slot is not empty and item type is a weapon   $(13_10)		if (item !=-1) and type = "Weapon"{$(13_10)			$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[63,0] = "Weapon"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[62];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(63);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(62);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 62);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(63);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 62);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(63);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if (item !=-1) and type = "Chest Armor"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[64,0] = "Chest Armor"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[63];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(64);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(63);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 63);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(64);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 63);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(64);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if (item !=-1) and type = "Offhand"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[65,0] = "Offhand"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[64];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(65);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(64);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 64);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(65);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 64);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(64);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}		$(13_10)		$(13_10)		if (item !=-1) and type = "Hat"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[66,0] = "Hat"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[65];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(66);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(65);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 65);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(66);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 65);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(66);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}				$(13_10)		$(13_10)		if (item !=-1) and type = "Pants"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[67,0] = "Pants"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[66];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(67);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(66);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 66);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(67);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 66);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(67);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}			$(13_10)$(13_10)		if (item !=-1) and type = "Gloves"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[68,0] = "Gloves"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[67];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(68);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(67);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 67);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(68);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 67);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(68);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}		$(13_10)$(13_10)		if (item !=-1) and type = "Boots"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[69,0] = "Boots"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[68];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(69);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(68);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 68);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(69);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 68);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(69);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}	$(13_10)$(13_10)		if (item !=-1) and type = "Artifact"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[70,0] = "Artifact"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[69];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(70);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(69);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 69);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(70);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 69);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(70);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}	$(13_10)$(13_10)		if (item !=-1) and type = "Amulet"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[71,0] = "Amulet"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[70];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(71);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(70);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 70);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(71);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 70);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(71);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}	$(13_10)$(13_10)		if (item !=-1) and type = "Bracelet"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[72,0] = "Bracelet"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[71];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(72);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(71);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 71);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(72);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 71);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(72);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}	$(13_10)$(13_10)		if (item !=-1) and type = "Ring"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[73,0] = "Ring"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[72];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(73);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(72);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 72);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(73);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 72);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(73);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}	$(13_10)		$(13_10)		if (item !=-1) and type = "Earring"{$(13_10)		$(13_10)			// If you right click an inventory weapon and there is already a weapon in the slot$(13_10)			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot $(13_10)			if global.inventory[74,0] = "Earring"{$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item$(13_10)			o_mouseitem.index = global.inventory[73];$(13_10)			$(13_10)			// Transfer equip slot stats stats to mouse item$(13_10)			scr_equipslot_to_mouseitem(74);$(13_10)	$(13_10)			// Then drop the item in equipment slot $(13_10)			scr_itemdrop_slot(73);	$(13_10)$(13_10)			// Move the wep from inventory over to the equip slot$(13_10)			scr_item_pickup_slot(item, 73);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(74);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)$(13_10)			// We do this by using the stats from mouseitem, which we transferred above$(13_10)			// Use the stats from the mouseitem to create the item back in the inventory.$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)$(13_10)			} else{$(13_10)			$(13_10)			// Weapon slot sprite same as item that was clicked$(13_10)			scr_item_pickup_slot(item, 73);$(13_10)			$(13_10)			// Transfer stats over to the weapon equipment array 42 which holds wep equip data$(13_10)			scr_array_to_equipslot(74);$(13_10)$(13_10)			// Empty the slot that was right clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		$(13_10)	}$(13_10)	$(13_10)	$(13_10)//Right Cicking on the Equip Slots puts it back into the inventory ------------------------------$(13_10)$(13_10)// If right clicking weapon on equip slot, it should put it back into the inventory$(13_10)if o_mouse_pointer.sellmode = false {$(13_10)$(13_10)	if (rightclick)and slot == 62 and mouseItem = -1 {$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[62];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(63);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if (rightclick)and slot == 63 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1{$(13_10)		$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[63];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(64);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 64 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1{$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[64];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(65);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 65 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1{$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[65];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(66);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 66 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1{$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[66];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(67);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 67 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1{$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[67];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(68);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 68 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[68];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(69);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 69 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[69];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(70);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if (rightclick)and slot == 70 and mouseItem = -1{$(13_10)	$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[70];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(71);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if (rightclick)and slot == 71 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[71];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(72);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (rightclick)and slot == 72 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[72];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(73);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if (rightclick)and slot == 73 and mouseItem = -1{$(13_10)$(13_10)		// If there is an item there$(13_10)		if (item !=-1) and scr_check_inventory_full() = 1 {$(13_10)			$(13_10)			// Play sound on click$(13_10)			script_execute(scr_equipsound_click);$(13_10)			$(13_10)			// Transfer the sprite index of 42 to the mouseitem first$(13_10)			o_mouseitem.index = global.inventory[73];$(13_10)			$(13_10)			// Transfer item stats into mouse item stats$(13_10)			scr_equipslot_to_mouseitem(74);$(13_10)$(13_10)			// And empty the slot that was clicked$(13_10)			scr_itemdrop_slot(slot);$(13_10)			$(13_10)			// Then put that item back into our inventory$(13_10)			script_execute(scr_pickup_mouseitem_to_inventory);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)	$(13_10)//-------Click Events for Equipment Slots-------------------------------------------------------$(13_10)$(13_10)if  o_mouse_pointer.sellmode = true and (click) and slot >= 62 and slot <=73 { // SELLING ITEMS IN THE EQUIP SLOTS$(13_10)$(13_10)	if (item !=-1){$(13_10)		// If we are in sellmode, destroy the item after getting the price$(13_10)$(13_10)		var buybackcheck;$(13_10)		$(13_10)		buybackcheck = script_execute(scr_buyback_check);$(13_10)		$(13_10)		// Check to see if there is an open slot$(13_10)		if buybackcheck = 1 { // Open slot, add the item to the slot$(13_10)$(13_10)			scr_buyback_add(slot);$(13_10)			o_player_stats.gold = o_player_stats.gold + sellprice;$(13_10)			$(13_10)			// Display Sell Amount$(13_10)			script_execute(scr_sell_gold_displayer);	$(13_10)			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;		$(13_10)					$(13_10)			scr_itemdrop_slot(slot);$(13_10)			mouseItem = -1;$(13_10)			audio_play_sound(snd_sell_item,9,false);					$(13_10)	$(13_10)		}$(13_10)		$(13_10)		if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36$(13_10)		$(13_10)			script_execute(scr_buyback_delete_last);$(13_10)			script_execute(scr_buyback_move_up);$(13_10)			script_execute(scr_buyback_delete_first);$(13_10)			// SLot 21 should pull from slot 20, which is always all -1s - basically deleted$(13_10)			scr_buyback_add(slot);$(13_10)			o_player_stats.gold = o_player_stats.gold + sellprice;$(13_10)			$(13_10)			// Display Sell Amount$(13_10)			script_execute(scr_sell_gold_displayer);	$(13_10)			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;	$(13_10)						$(13_10)			scr_itemdrop_slot(slot);$(13_10)			mouseItem = -1;$(13_10)			audio_play_sound(snd_sell_item,9,false);				$(13_10)$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)//---------------------------------------------------------------$(13_10)if  o_mouse_pointer.sellmode = false { //  If not in SELLMODE, do things like normal$(13_10)$(13_10)if (click)and slot = 62 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);$(13_10)	//Call script that has the click events for equip slots$(13_10)	//script_execute(scr_click_equip_slot);$(13_10)	if o_mouseitem.type = "Weapon"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	$(13_10)	}$(13_10)$(13_10)}	$(13_10)	$(13_10)if (click)and slot = 63 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Chest Armor"{$(13_10)		script_execute(scr_click_equip_slot);}$(13_10)}	$(13_10)		$(13_10)if (click)and slot = 64 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Offhand"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}	$(13_10)		$(13_10)if (click)and slot = 65 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Hat"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}	$(13_10)	$(13_10)if (click)and slot = 66 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Pants"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}	$(13_10)	$(13_10)if (click)and slot = 67 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Gloves"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}	$(13_10)}$(13_10)$(13_10)if (click)and slot = 68 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Boots"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}	$(13_10)$(13_10)if (click)and slot = 69 {$(13_10) $(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Artifact"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}$(13_10)		$(13_10)if (click)and slot = 70 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Amulet"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}$(13_10)$(13_10)if (click)and slot = 71 {$(13_10)$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Bracelet"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}$(13_10)	$(13_10)if (click)and slot = 72 {$(13_10)	$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Ring"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}	$(13_10)	$(13_10)if (click)and slot = 73 {$(13_10)	$(13_10)	// Play sound on click$(13_10)	script_execute(scr_equipsound_click_equipslot);	$(13_10)	$(13_10)	//Call script that has the click events for equip slots$(13_10)	if o_mouseitem.type = "Earring"{$(13_10)		script_execute(scr_click_equip_slot);$(13_10)	}$(13_10)}	$(13_10)	$(13_10)	$(13_10)	$(13_10)} else {$(13_10)	// If not within 15 pixels of the center of the item boxes, inside_box is false$(13_10)	inside_box = false;$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Draw event is triggered every frame

// The item is equal to the button's item in that slot
// When an item is in the inventory, it will have a sprite index assigned to a slot
var item = global.inventory[slot];// What this does is check that slot, and look at the sprite index
var shift  = keyboard_check(vk_shift);

// Need a timer so you cant click too fast in inventory
if o_inventory.left_click_timer = 10{
	var click = mouse_check_button_pressed(mb_left);
} else{
	var click = noone;
}

if o_inventory.right_click_timer = 10{
	var rightclick = mouse_check_button_pressed(mb_right);
} else{
	var rightclick = noone;
}


// Add a depth here so that the tooltip floats on top of inventory instead of underneath
depth = -2;

// Draw the count value for stackable items when on the mouse
if (mouseItem != -1) and o_mouseitem.stackcount > 0 {
	stacks = o_mouseitem.stackcount;
	draw_set_font(fnt_stacktext);
	draw_set_color(c_white);
	draw_text(o_mouse_pointer.x-4,o_mouse_pointer.y+14,string(stacks));
	draw_set_font(fnt_normal);
		
}

// Checking the difference between the x coordinate of the mouse
// If we're within 16 pixels of the origin of the button object
// This will tell us if the mouse is hovering over the invbutton
// I set it to 15 so that there is a tiny space of pixel between boxes, this way alpha resets

if (abs(mouse_x - x) < 19) && (abs(mouse_y - y) < 19) && showInv == true {

// Define the price here

	price = script_execute(scr_inventory_prices);
	sellprice = price * 0.20;	


	inside_box = true;
	// On hover, if mouseItem is empty over weapon slot, change the type to weapon so that 
	// you can click the slot to remove the item
	if mouseItem =-1 and slot = 62{
		o_mouseitem.type = "Weapon";
	}	
	if mouseItem =-1 and slot = 63{
		o_mouseitem.type = "Chest Armor";
	}
	if mouseItem =-1 and slot = 64{
		o_mouseitem.type = "Offhand";
	}
	if mouseItem =-1 and slot = 65{
		o_mouseitem.type = "Hat";
	}
	if mouseItem =-1 and slot = 66{
		o_mouseitem.type = "Pants";
	}	
	if mouseItem =-1 and slot = 67{
		o_mouseitem.type = "Gloves";
	}
	if mouseItem =-1 and slot = 68{
		o_mouseitem.type = "Boots";
	}
	if mouseItem =-1 and slot = 69{
		o_mouseitem.type = "Artifact";
	}
	if mouseItem =-1 and slot = 70{
		o_mouseitem.type = "Amulet";
	}	
	if mouseItem =-1 and slot = 71{
		o_mouseitem.type = "Bracelet";
	}
	if mouseItem =-1 and slot = 72{
		o_mouseitem.type = "Ring";
	}
	if mouseItem =-1 and slot = 73{
		o_mouseitem.type = "Earring";
	}

	// Need to draw a red square if the item is not supposed to go into the slot - Green square if it is legit
	
	if mouseItem !=-1 and slot = 62 and o_mouseitem.type != "Weapon"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 62 and o_mouseitem.type = "Weapon"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 63 and o_mouseitem.type != "Chest Armor"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 63 and o_mouseitem.type = "Chest Armor"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 64 and o_mouseitem.type != "Offhand"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 64 and o_mouseitem.type = "Offhand"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 65 and o_mouseitem.type != "Hat"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 65 and o_mouseitem.type = "Hat"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 66 and o_mouseitem.type != "Pants"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 66 and o_mouseitem.type = "Pants"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 67 and o_mouseitem.type != "Gloves"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 67 and o_mouseitem.type = "Gloves"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 68 and o_mouseitem.type != "Boots"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 68 and o_mouseitem.type = "Boots"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 69 and o_mouseitem.type != "Artifact"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 69 and o_mouseitem.type = "Artifact"{
		script_execute(scr_draw_green);
	}

	if mouseItem !=-1 and slot = 70 and o_mouseitem.type != "Amulet"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 70 and o_mouseitem.type = "Amulet"{
		script_execute(scr_draw_green);
	}	
	
	if mouseItem !=-1 and slot = 71 and o_mouseitem.type != "Bracelet"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 71 and o_mouseitem.type = "Bracelet"{
		script_execute(scr_draw_green);
	}
	
	if mouseItem !=-1 and slot = 72 and o_mouseitem.type != "Ring"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 72 and o_mouseitem.type = "Ring"{
		script_execute(scr_draw_green);
	}	
	if mouseItem !=-1 and slot = 73 and o_mouseitem.type != "Earring"{
		script_execute(scr_draw_red);
	} else if mouseItem !=-1 and slot = 73 and o_mouseitem.type = "Earring"{
		script_execute(scr_draw_green);
	}	
		
	// If inside box, then mouse pointer = true
	o_mouse_pointer.inside_box = true;
	
	// For slots 1-60, draw white box
	if slot <= 60 {
		// Define variables
		script_execute(scr_tooltip_variables);

		if rarity == 10 {
			draw_set_alpha(alpha);
			draw_set_color(c_white);
			//draw_rectangle(x-16, y-16, x+16, y+16, 0);
			draw_sprite(spr_item_hover_gold,0,x,y);
			draw_set_alpha(1);
			draw_set_color(c_white);
			
		} else {
			draw_set_alpha(alpha);
			draw_set_color(c_white);
			//draw_rectangle(x-16, y-16, x+16, y+16, 0);
			draw_sprite(spr_item_hover_white,0,x,y);
			draw_set_alpha(1);
			draw_set_color(c_white);
		}
	}
	//Draw the tooltip thing for slots 60 and under
	if (item !=-1) and (slot <= 60) {
	
	// If it is a stackable and you're in sell mode, display tooltip for selling
	if stackcount > 0 and o_mouse_pointer.sellmode = true {
		instance_create_depth(x-250,y-100,0,o_shop_message_sell_tooltip);
	}

	depth = -4;
	
	// Initialize tooltip variables
	script_execute(scr_tooltip_variables);
	// Initialize variable for boot speed
	var speedbonus = 0;
			
		draw_sprite(spr_tooltip,0,x,y-20);	// Tooltip
		
		// Display the prices
		if showInv = true {
			draw_set_font(fnt_shop);
			draw_text_color(x+25,y+65,+"Sell Price:  "+ string(string_thousands(sellprice)) +" Gold",c_yellow,c_yellow,c_yellow,c_yellow,1);
			draw_set_font(fnt_normal);
		}
			
		if type!= "Crafting" {
			if type!= "Potion" {
			// Stat Comparison------------------------------------------------
			draw_sprite(spr_compare,0,x+320,y-20);
			
			// Set font for stat compare tooltip
			draw_set_font(fnt_tooltip);
			
			// STATS IF EQUIPPED
			draw_text(x+290, y-298, "Stats if Equipped")
			// Draw the icons
			
			draw_set_color(c_yellow);

			draw_text(x+285,y-260, "Max ATK")
			draw_text(x+285,y-240, "Min ATK")
			draw_text(x+285,y-220, "DEF")
			draw_text(x+285,y-200, "STR")
			draw_text(x+285,y-180, "DEX")
			draw_text(x+285,y-160, "INT")
			draw_text(x+285,y-140, "VIT")

			draw_set_color(c_white);
			// If there is no item in the weapon slot
			//draw_set_color(c_white)
			//draw_set_color(c_lime)
			//draw_set_color(c_red)
			
			if global.inventory[62] = -1 and type = "Weapon" {
				// Add the stats to the total stats and display the new one. Add green arrow or red arrow depending.
				var tooltipmindmgstr = round(scr_calc_min_dmg_display_str(mindamage, strbonus))-1;
				var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str(maxdamage, strbonus))-1;	
									   
				var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex(mindamage, dexbonus))-1;
				var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex(maxdamage, dexbonus))-1;	
									   
				var tooltipmindmgint = round(scr_calc_min_dmg_display_int(mindamage, intelbonus))-1;
				var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int(maxdamage, intelbonus))-1;	
				draw_set_color(c_lime)
				
				if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {
				// Min DMG
				draw_text(x+360,y-240, string(round(tooltipmindmgstr)))
				// Max DMG
				draw_text(x+360,y-260, string(round(tooltipmaxdmgstr)))
				
				}
				if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {
				// Min DMG
				draw_text(x+360,y-240, string(round(tooltipmindmgdex)))
				// Max DMG
				draw_text(x+360,y-260, string(round(tooltipmaxdmgdex)))
				
				}
				if subweapon = "Wand" or subweapon = "Staff" {
				// Min DMG
				draw_text(x+360,y-240, string(round(tooltipmindmgint)))
				// Max DMG
				draw_text(x+360,y-260, string(round(tooltipmaxdmgint)))
				
				}
				draw_set_color(c_white)
				draw_sprite(spr_up_arrow, 0, x+275,y-260) // Max DMG
				draw_sprite(spr_up_arrow, 0, x+275,y-240) // MIN DMG
				
			}
			
			// If the slot has a wep and the item we have hovered is a weapon
			if global.inventory[62] != -1 and type = "Weapon" {
			if mindamage < 0 { mindamage = 0}
			if maxdamage < 0 { maxdamage = 0}
			
			if strbonus < 0 { strbonus = 0}
			if dexbonus < 0 { dexbonus = 0}
			if intelbonus < 0 { intelbonus = 0}
			if vitbonus < 0 { vitbonus = 0}
								
			var tooltipmindmgstr = round(scr_calc_min_dmg_display_str(mindamage, strbonus))-1;
			var tooltipmaxdmgstr = round(scr_calc_max_dmg_display_str(maxdamage, strbonus))-1;	
								   
			var tooltipmindmgdex = round(scr_calc_min_dmg_display_dex(mindamage, dexbonus))-1;
			var tooltipmaxdmgdex = round(scr_calc_max_dmg_display_dex(maxdamage, dexbonus))-1;	
								   
			var tooltipmindmgint = round(scr_calc_min_dmg_display_int(mindamage, intelbonus))-1;
			var tooltipmaxdmgint = round(scr_calc_max_dmg_display_int(maxdamage, intelbonus))-1;	
			
			var subweapontype = global.inventory[63, 23];
	
			if subweapon = "Sword" or subweapon = "2H Sword" or subweapon = "Dagger" {
			
				if o_player_stats.min_dmg > tooltipmindmgstr {draw_set_color(c_red); draw_text(x+360,y-240, string(tooltipmindmgstr)); draw_sprite(spr_down_arrow, 0, x+275,y-240);  draw_set_color(c_white);}  
				if o_player_stats.min_dmg < tooltipmindmgstr {draw_set_color(c_lime); draw_text(x+360,y-240, string(tooltipmindmgstr)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ) ; draw_set_color(c_white);}
				if o_player_stats.min_dmg = tooltipmindmgstr {draw_text(x+360,y-240, string(tooltipmindmgstr)); draw_set_color(c_white);}

				// Max Damage
				if o_player_stats.max_dmg > tooltipmaxdmgstr {draw_set_color(c_red); draw_text(x+360,y-260, string(tooltipmaxdmgstr)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);}  
				if o_player_stats.max_dmg < tooltipmaxdmgstr {draw_set_color(c_lime); draw_text(x+360,y-260, string(tooltipmaxdmgstr)); draw_sprite(spr_up_arrow, 0, x+275,y-260);   draw_set_color(c_white);}
				if o_player_stats.max_dmg = tooltipmaxdmgstr {draw_text(x+360,y-260, string(tooltipmaxdmgstr)); draw_set_color(c_white);}
	
			}

			if subweapon = "Bow" or subweapon = "Rifle" or subweapon = "Bracer" {

				if o_player_stats.min_dmg > tooltipmindmgdex {draw_set_color(c_red); draw_text(x+360,y-240, string(tooltipmindmgdex));  draw_sprite(spr_down_arrow, 0, x+275,y-240); draw_set_color(c_white); }  
				if o_player_stats.min_dmg < tooltipmindmgdex {draw_set_color(c_lime); draw_text(x+360,y-240, string(tooltipmindmgdex)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ) ; draw_set_color(c_white); }
				if o_player_stats.min_dmg = tooltipmindmgdex {draw_text(x+360,y-240, string(tooltipmindmgdex)); draw_set_color(c_white); }
				
				// Max Damage
				if o_player_stats.max_dmg > tooltipmaxdmgdex {draw_set_color(c_red); draw_text(x+360,y-260, string(tooltipmaxdmgdex)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);}  
				if o_player_stats.max_dmg < tooltipmaxdmgdex {draw_set_color(c_lime); draw_text(x+360,y-260, string(tooltipmaxdmgdex)); draw_sprite(spr_up_arrow, 0, x+275,y-260)  ; draw_set_color(c_white);}
				if o_player_stats.max_dmg = tooltipmaxdmgdex {draw_text(x+360,y-260, string(tooltipmaxdmgdex)); draw_set_color(c_white);}
	
			}			
			
			if subweapon = "Wand" or subweapon = "Staff" {

				if o_player_stats.min_dmg > tooltipmindmgint {draw_set_color(c_red); draw_text(x+360,y-240, string(tooltipmindmgint));  draw_sprite(spr_down_arrow, 0, x+275,y-240); draw_set_color(c_white);}  
				if o_player_stats.min_dmg < tooltipmindmgint {draw_set_color(c_lime); draw_text(x+360,y-240, string(tooltipmindmgint)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ) ; draw_set_color(c_white);}
				if o_player_stats.min_dmg = tooltipmindmgint {draw_text(x+360,y-240, string(tooltipmindmgint)); draw_set_color(c_white);}

				// Max Damage
				if o_player_stats.max_dmg > tooltipmaxdmgint {draw_set_color(c_red); draw_text(x+360,y-260, string(tooltipmaxdmgint)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);}  
				if o_player_stats.max_dmg < tooltipmaxdmgint {draw_set_color(c_lime); draw_text(x+360,y-260, string(tooltipmaxdmgint)); draw_sprite(spr_up_arrow, 0, x+275,y-260)  ; draw_set_color(c_white);}
				if o_player_stats.max_dmg = tooltipmaxdmgint {draw_text(x+360,y-260, string(tooltipmaxdmgint)); draw_set_color(c_white);}
	
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

				if minatkhover > o_player_stats.min_dmg {draw_set_color(c_lime); draw_text(x+360,y-240, string(minatkhover)); draw_sprite(spr_up_arrow, 0, x+275,y-240 ); draw_set_color(c_white);}
				if minatkhover < o_player_stats.min_dmg {draw_set_color(c_red); draw_text(x+360,y-240, string(minatkhover)); draw_sprite(spr_down_arrow, 0, x+275,y-240) ; draw_set_color(c_white);}  
				if minatkhover = o_player_stats.min_dmg {draw_text(x+360,y-240, string(minatkhover)); ; draw_set_color(c_white);}  
				
				if maxatkhover > o_player_stats.max_dmg {draw_set_color(c_lime); draw_text(x+360,y-260, string(maxatkhover));draw_sprite(spr_up_arrow, 0, x+275,y-260 ) ; draw_set_color(c_white);}
				if maxatkhover < o_player_stats.max_dmg {draw_set_color(c_red); draw_text(x+360,y-260, string(maxatkhover)); draw_sprite(spr_down_arrow, 0, x+275,y-260); draw_set_color(c_white);} 
				if maxatkhover = o_player_stats.max_dmg {draw_text(x+360,y-260, string(maxatkhover));  draw_set_color(c_white);} 
				
			}	

			// DEFENSE and STATS can be in one group, because damage does not need to be calculated here. 
				
				// Defense

				if totaldefense > tooltipdefense {
					draw_set_color(c_red);
					draw_text(x+360,y-220, string(round(tooltipdefense)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, x+275,y-220)
					draw_set_color(c_white);
				}  
				// If your equipped wep is weaker than ur inventory wep
				if totaldefense < tooltipdefense {
					draw_set_color(c_lime);
					draw_text(x+360,y-220, string(round(tooltipdefense)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, x+275,y-220)
					draw_set_color(c_white);
				} 
				
				if totaldefense = tooltipdefense{
					draw_text(x+360,y-220, string(round(tooltipdefense)));
				}
				
				// STATS - STR DEX INT VIT

				if totalstr > tooltipstr {
					draw_set_color(c_red);
					draw_text(x+360,y-200, string(round(tooltipstr)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, x+275,y-200)
					draw_set_color(c_white);
				}  
				if totalstr < tooltipstr {
					draw_set_color(c_lime);
					draw_text(x+360,y-200, string(round(tooltipstr)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, x+275,y-200)
					draw_set_color(c_white);
				} 
				
				if totalstr = tooltipstr {
					draw_text(x+360,y-200, string(round(tooltipstr)));
				}	

				if totaldex > tooltipdex {
					draw_set_color(c_red);
					draw_text(x+360,y-180, string(round(tooltipdex)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, x+275,y-180)
					draw_set_color(c_white);
				}  
				if totaldex < tooltipdex {
					draw_set_color(c_lime);
					draw_text(x+360,y-180, string(round(tooltipdex)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, x+275,y-180)
					draw_set_color(c_white);
				} 
				
				if totaldex = tooltipdex {
					draw_text(x+360,y-180, string(round(tooltipdex)));
				}

				if totalint > tooltipintcompare {
					draw_set_color(c_red);
					draw_text(x+360,y-160,string(round(tooltipintcompare)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, x+275,y-160)
					draw_set_color(c_white);
				} 
				 
				if totalint < tooltipintcompare {
					draw_set_color(c_lime);
					draw_text(x+360,y-160,string(round(tooltipintcompare)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, x+275,y-160)
					draw_set_color(c_white);
				} 
				
				if totalint = tooltipintcompare {
					draw_text(x+360,y-160, string(round(tooltipintcompare)))
					
				}
				
				if totalvit > tooltipvitcompare {
					draw_set_color(c_red);
					draw_text(x+360,y-140,string(round(tooltipvitcompare)));
					// Draw red down arrow
					draw_sprite(spr_down_arrow, 0, x+275,y-140)
					draw_set_color(c_white);
				}  
				
				if totalvit < tooltipvitcompare {
					draw_set_color(c_lime);
					draw_text(x+360,y-140,string(round(tooltipvitcompare)));
					// Draw up green arrow
					draw_sprite(spr_up_arrow, 0, x+275,y-140)
					draw_set_color(c_white);
				} 
				
				if totalvit = tooltipvitcompare {
					draw_text(x+360,y-140,string(round(tooltipvitcompare)));
				}

			draw_set_font(fnt_normal);

	}
}
	//---------------------------------------------------------------------	
	
			// Defining colors and stats based on rarity
			if (rarity == 1){rarity = c_white; speedbonus = 10;}
			if (rarity == 5){rarity = c_lime; speedbonus = 20;}
			if (rarity == 10){rarity = make_color_rgb(255,140,0); speedbonus = 30;}
			
			if (upgradelevel > 0){
				draw_text_color(x+31,y-299, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);
				draw_text_color(x+30,y-300, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);
				
			} else {
				draw_text_color(x+31,y-299, string(name),c_black,c_black,c_black,c_black,1);
				draw_text_color(x+30,y-300, string(name),rarity,rarity,rarity,rarity,1);
				
			}
		
			draw_text_color(x+26,y-259,"Type"+":"+string(type),c_black,c_black,c_black,c_black,1);
			draw_text      (x+25,y-260,"Type"+":"+string(type));
			
			
			draw_text_color(x+26,y-239,"LvL Req"+":"+string(levelreq),c_black,c_black,c_black,c_black,1);
			draw_text	   (x+25,y-240,"LvL Req"+":"+string(levelreq));
			
			// ADD SPECIALIZED STATS FOR EQUIPMENT - Add under armor stat (x+39,y-199)
			// Boots need bonus speed drawn based on rarity
		
			if type = "Boots" {
				// Boots get a speed bonus based on rarity
				draw_text_color(x+26,y-199,"SPD+ " +""+string(speedbonus) +string("%"),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-199,"SPD+ "+""+string(speedbonus)+string("%"));
			}
			
			if type = "Amulet" {
				draw_text_color(x+26,y-219,"Regen"+": "+string(healamount),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Regen"+": "+string(healamount));
			} 
			if type = "Bracelet" {
				draw_text_color(x+26,y-219,"Crit Rate"+": "+string(critical),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Crit Rate"+": "+string(critical));
			} 
			if type = "Ring" {
				draw_text_color(x+26,y-219,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));
			} 
			if type = "Earring" {
				draw_text_color(x+26,y-219,"Evasion"+":"+string(evasion),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Evasion"+":"+string(evasion));
			} 
			if type = "Artifact" {
				draw_text_color(x+26,y-219,"STR"+": +"+string(strbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"STR"+": +"+string(strbonus));
				
				draw_text_color(x+26,y-199,"DEX"+": +"+string(dexbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-200,"DEX"+": +"+string(dexbonus));
				
				draw_text_color(x+26,y-179,"INT"+": +"+string(intelbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-180,"INT"+": +"+string(intelbonus));
				
				draw_text_color(x+26,y-159,"VIT"+": +"+string(vitbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-160,"VIT"+": +"+string(vitbonus));
			} 
			
			// For Weapons
			if mindamage > 0 and type = "Weapon" {
				draw_text_color(x+26,y-219,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));
			}
			
			// For Armors - Tooltip needs to show the 1 or 2 stats on it (or 3 in the future)
			if (type = "Chest Armor" or  type = "Hat" or  type = "Pants" or type = "Boots" or type = "Gloves") {
				// Draw their defense stat
				draw_text_color(x+26,y-219,"Armor"+": "+string(defense),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Armor"+": "+string(defense));

				// If there is stat bonuses, draw them
				if statbonuses = 1 {
					draw_text_color(x+26,y-179,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y-180,string(statbonus1[0]) +": "+string(statbonus1[1]))
				}
				if statbonuses = 2 {
					draw_text_color(x+26,y-179,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y-180,string(statbonus1[0]) +": "+string(statbonus1[1]))
					
					draw_text_color(x+26,y-159,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y-160,string(statbonus2[0]) +": "+string(statbonus2[1]));
					
				}
				if statbonuses = 3 {
					draw_text_color(x+26,y-179,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y-180,string(statbonus1[0]) +": "+string(statbonus1[1]))
					draw_text_color(x+26,y-159,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y-160,string(statbonus2[0]) +": "+string(statbonus2[1]));
					draw_text_color(x+26,y-139,string(statbonus3[0])+": "+string(statbonus3[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y-140,string(statbonus3[0]) +": "+string(statbonus3[1]));
				}
				
			}
			
			// Draw tooltip for potions
			if name == "Health Potion"{
				draw_text_color(x+26,y-219,"Heals"+" "+string(healamount)+" "+ string("HP"),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Heals"+" "+string(healamount)+" "+ string("HP"));
			}
			if name == "Mana Potion"{
				draw_text_color(x+26,y-219,"Restores"+" "+string(healamount)+" "+ string("MP"),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y-220,"Restores"+" "+string(healamount)+" "+ string("MP"));
			}
			
			draw_text_color(x+26,y-99,"Description:",c_black,c_black,c_black,c_black,1);
			draw_text	   (x+25,y-100,"Description:");
			
			draw_text_ext_color(x+26,y-79,string(description),20, 235,c_black,c_black,c_black,c_black,1);
			draw_text_ext_color(x+25,y-80,string(description),20, 235,c_white,c_white,c_white,c_white,1);

	}
	
	// Draw tooltip for items in the equipment slots (60 and up) --------------------------
	if (item !=-1) and (slot > 60) and (slot < 73){

	// Initialize tooltip variables
	
	script_execute(scr_tooltip_variables);
	
		var speedbonus = 0;
		
		// Display the sell price

		draw_sprite(spr_tooltip1,0,x,y+15);	
		
		if showInv = true {
			draw_set_font(fnt_shop);
			draw_text_color(x+25,y+295,+"Sell Price:  "+ string(string_thousands(sellprice)) +" Gold",c_yellow,c_yellow,c_yellow,c_yellow,1);
			draw_set_font(fnt_normal);
		}

			if (rarity == 1){rarity = c_white; speedbonus = 10;}
			if (rarity == 5){rarity = c_lime; speedbonus = 20;}
			if (rarity == 10){rarity = make_color_rgb(255,140,0); speedbonus = 30;}
			//depth = -2;
			if (upgradelevel > 0){
				draw_text_color(x+24,y-71, string(name)+" +"+string(upgradelevel),c_black,c_black,c_black,c_black,1);
				draw_text_color(x+25,y-70, string(name)+" +"+string(upgradelevel),rarity,rarity,rarity,rarity,1);
				
			} else{
				draw_text_color(x+24,y-71, string(name),c_black,c_black,c_black,c_black,1);
				draw_text_color(x+25,y-70, string(name),rarity,rarity,rarity,rarity,1);
			}
				
			draw_text_color(x+24,y-31,"Type"+":"+string(type),c_black,c_black,c_black,c_black,1);
			draw_text	   (x+25,y-30,"Type"+":"+string(type));
			
			draw_text_color(x+24,y-11,"LvL Req"+":"+string(levelreq),c_black,c_black,c_black,c_black,1);
			draw_text	   (x+25,y-10,"LvL Req"+":"+string(levelreq));
			
			// Add boots speedbonus
			
			if type = "Boots" {

				draw_text_color(x+24,y+31,"SPD+ " +""+string(speedbonus) +string("%"),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+30,"SPD+ "+""+string(speedbonus)+string("%"));
			}
			
			// Accessories
			if type = "Amulet" {
				draw_text_color(x+24,y+11,"Regen"+": "+string(healamount),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"Regen"+": "+string(healamount));
			} 
			
			if type = "Bracelet" {
				draw_text_color(x+24,y+11,"Crit Rate"+": "+string(critical),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"Crit Rate"+": "+string(critical));
			} 
			
			if type = "Ring" {
				draw_text_color(x+24,y+11,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));
			} 
			
			if type = "Earring" {
				draw_text_color(x+24,y+11,"Evasion"+":"+string(evasion),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"Evasion"+":"+string(evasion));
			} 
			
			if type = "Artifact" {
				draw_text_color(x+24,y+11,"STR"+": +"+string(strbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"STR"+": +"+string(strbonus));
				
				draw_text_color(x+24,y+31,"DEX"+": +"+string(dexbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+30,"DEX"+": +"+string(dexbonus));
				
				draw_text_color(x+24,y+51,"INT"+": +"+string(intelbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+50,"INT"+": +"+string(intelbonus));
				
				draw_text_color(x+24,y+71,"VIT"+": +"+string(vitbonus),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+70,"VIT"+": +"+string(vitbonus));
				
			} 
			
			// Draw weapon stats
			if mindamage > 0 and type == "Weapon" {
				draw_text_color(x+24,y+11,"Damage"+":"+string(mindamage)+"-"+string(maxdamage),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"Damage"+":"+string(mindamage)+"-"+string(maxdamage));
			}
			// Draw armor stats
			if (type = "Chest Armor" or  type = "Hat" or  type = "Pants" or type = "Boots" or type = "Gloves") {
				// Draw Defense
				draw_text_color(x+24,y+11,"Armor"+": "+string(defense),c_black,c_black,c_black,c_black,1);
				draw_text	   (x+25,y+10,"Armor"+": "+string(defense));
				
				// If there is stat bonuses, draw them
				if statbonuses = 1 {
					draw_text_color(x+24,y+51,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y+50,string(statbonus1[0]) +": "+string(statbonus1[1]))
				}
				if statbonuses = 2 {
					draw_text_color(x+24,y+51,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y+50,string(statbonus1[0]) +": "+string(statbonus1[1]))
					
					draw_text_color(x+24,y+71,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y+70,string(statbonus2[0]) +": "+string(statbonus2[1]));
					
				}
				if statbonuses = 3 {
					draw_text_color(x+24,y+51,string(statbonus1[0]) +": "+string(statbonus1[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y+50,string(statbonus1[0]) +": "+string(statbonus1[1]))
					
					draw_text_color(x+24,y+71,string(statbonus2[0])+": "+string(statbonus2[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y+70,string(statbonus2[0]) +": "+string(statbonus2[1]));
					
					draw_text_color(x+24,y+91,string(statbonus3[0])+": "+string(statbonus3[1]),c_black,c_black,c_black,c_black,1);
					draw_text	   (x+25,y+90,string(statbonus3[0]) +": "+string(statbonus3[1]));
				}	
			}		

			draw_text_color(x+24,y+131,"Description:",c_black,c_black,c_black,c_black,1);
			draw_text	   (x+25,y+130,"Description:");
			
			draw_text_ext_color(x+24,y+151,string(description),20, 235,c_black,c_black,c_black,c_black,1);
			draw_text_ext_color(x+25,y+150,string(description),20, 235,c_white,c_white,c_white,c_white,1);
			
	}
	//Click events
	//Slots 60 and below are the inventory slots
	
	if (click)and !rightclick and (slot <= 60) {
	o_inventory.left_click_timer = 0;
	
	
		// If you have a stackable item and you click on another stackable item with the same name
		if (item !=-1) and (mouseItem != -1) and global.inventory[slot+1,8] > 0 and global.inventory[slot+1,9] < 100 and o_mouseitem.name == global.inventory[slot+1, 5] {
			script_execute(scr_equipsound_click);
			
			// Move the mouse stackcount to temp var
			o_mouseitem.tempstackcount = o_mouseitem.stackcount;
			// Move the stats from slot into the mousestats
			script_execute(scr_array_to_mousestats);
			// Add stackcount and tempstackcount together for final stack count
			o_mouseitem.stackcount = o_mouseitem.stackcount + o_mouseitem.tempstackcount;
			

			// We will need to get a remainder if it is over 100
			if o_mouseitem.stackcount > 100 {
				o_mouseitem.remainder = o_mouseitem.stackcount-100;
				o_mouseitem.stackcount = 100;
				
			} else {
				o_mouseitem.remainder = -1;
			}
			
			// Drop the slot that we're clicking on. The IF statement below this one should dump the mousestats stats back into the slot
			scr_itemdrop_slot(slot);

			item =-1;

		}
		
		// If slot is not empty and if there is an item on the mouse...
		// Switch the items in slot and mouse
		if (item !=-1) and (mouseItem != -1) {
				
			//Throw all the slot stat items into the temp stats
			script_execute(scr_array_to_mousetemp);

			// Move the mouse stats into the array
			script_execute(scr_mousestats_to_array);

			// Alarm will trigger the mouse stats to equal the temp stats
			o_mouseitem.alarm[0] = 1;
			
		}
		// If item slot has an item and the mouse doesn't have an item
		if (item !=-1){
			// If we are in sellmode, destroy the item after getting the price. This is for selling normal items and not stackables.
			if o_mouse_pointer.sellmode = true and stackcount < 1{
				var buybackcheck;
				
				buybackcheck = script_execute(scr_buyback_check);
				
				// Check to see if there is an open slot
				if buybackcheck = 1 { // Open slot, add the item to the slot

					scr_buyback_add(slot);
					o_player_stats.gold = o_player_stats.gold + sellprice;
					
					// Display Sell Amount
					script_execute(scr_sell_gold_displayer);	
					o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;
					
					
					scr_itemdrop_slot(slot);
					mouseItem = -1;
					audio_play_sound(snd_sell_item,9,false);					
	
				}
				
				if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36
				
				script_execute(scr_buyback_delete_last);
				script_execute(scr_buyback_move_up);
				script_execute(scr_buyback_delete_first);
				// SLot 21 should pull from slot 20, which is always all -1s - basically deleted
				scr_buyback_add(slot);
				o_player_stats.gold = o_player_stats.gold + sellprice;
				
				// Display Sell Amount
				script_execute(scr_sell_gold_displayer);	
				o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;	
							
				scr_itemdrop_slot(slot);
				mouseItem = -1;
				audio_play_sound(snd_sell_item,9,false);				

				}
			
			}  
			
		if o_mouse_pointer.sellmode = false { 

			// Play sound on click
			script_execute(scr_equipsound_click);	
			
			//We need to put the properties on the mouse item
			//Access the array, and throw all the variables into the mouseitem stats
			script_execute(scr_array_to_mousestats);

			// Empty the slot
			// We still have the var item that has the item stored
			scr_itemdrop_slot(slot);
			
			}
		}
		
		// If we have an item on our mouse
		if (mouseItem != -1) and o_mouse_pointer.sellmode = false {
			
			// Set the tempmouseitem variable to be mouseItem
			o_mouseitem.tempmouseitem = mouseItem;
			// Add the item from our mouse to that slot
			scr_item_pickup_slot(mouseItem, slot);
			//If clicked back onto inventory, throw all properties from mouseitem stats
			//Into the empty slot that was clicked
			script_execute(scr_mousestats_to_array);

		}
		
		// If there is an item in the slot, it swaps it to our mouse item
		// mouseItem = item means that mouseItem is the item in the slot
		if o_mouse_pointer.sellmode = false {
			mouseItem = item;
		}
		
		// If there is a remainder , then you gotta create a new mouseitem using that remainder as the stackcount
		if o_mouseitem.remainder > 0 {

			o_mouseitem.stackcount = o_mouseitem.remainder;
			mouseItem = o_mouseitem.tempmouseitem;
			o_mouseitem.remainder = -1;
		}
		
		
	}

// Stacked Items Sell code ---------------------
if (click) and (slot <= 60) and stackcount > 0  and o_mouse_pointer.sellmode = true{
o_inventory.left_click_timer = 0;

	if !shift {
	/*
		global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;
		audio_play_sound(snd_sell_item,9,false);
		o_player_stats.gold = o_player_stats.gold + sellprice;
		
		if global.inventory[slot+1,9] < 1 {
			scr_itemdrop_slot(slot);
			mouseItem = -1;
			item = -1;

		}
	*/		
		var itemssold = global.inventory[slot+1,9];
		var buybackcheck;
				
		buybackcheck = script_execute(scr_buyback_check);
		
		// Check to see if there is an open slot in the buyback inventory
		if buybackcheck = 1 { // Open slot, add the item to the slot

			scr_buyback_add_one(slot);
			global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;
			o_player_stats.gold = o_player_stats.gold + (sellprice);
			
			// Display Sell Amount
			script_execute(scr_sell_gold_displayer);	
			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;			
				
			audio_play_sound(snd_sell_item,9,false);	
			
		if global.inventory[slot+1,9] < 1 {
			scr_itemdrop_slot(slot);
			mouseItem = -1;
			item = -1;
	
		}
				
	
		}
		
		if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36
		
			script_execute(scr_buyback_delete_last);
			script_execute(scr_buyback_move_up);
			script_execute(scr_buyback_delete_first);
			// SLot 21 should pull from slot 20, which is always all -1s - basically deleted
			scr_buyback_add_one(slot);
			global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;
			o_player_stats.gold = o_player_stats.gold + (sellprice);
			
			// Display Sell Amount
			script_execute(scr_sell_gold_displayer);	
			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;				
			
			audio_play_sound(snd_sell_item,9,false);	
			
			if global.inventory[slot+1,9] < 1 {
				scr_itemdrop_slot(slot);
				mouseItem = -1;
				item = -1;
			
			}		
		}		
	}	
	
	if shift { // Holding down shift and left click sells everything
		
		var itemssold = global.inventory[slot+1,9];
		var buybackcheck;
				
		buybackcheck = script_execute(scr_buyback_check);
		
		// Check to see if there is an open slot in the buyback inventory
		if buybackcheck = 1 { // Open slot, add the item to the slot

			scr_buyback_add(slot);
			o_player_stats.gold = o_player_stats.gold + (sellprice*itemssold);

			// Display Sell Amount
			script_execute(scr_sell_gold_displayer);	
			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + (sellprice*itemssold);				
			
			scr_itemdrop_slot(slot);
			mouseItem = -1;
			audio_play_sound(snd_sell_item,9,false);					
	
		}
		
		if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36
		
		script_execute(scr_buyback_delete_last);
		script_execute(scr_buyback_move_up);
		script_execute(scr_buyback_delete_first);
		// SLot 21 should pull from slot 20, which is always all -1s - basically deleted
		scr_buyback_add(slot);
		o_player_stats.gold = o_player_stats.gold + (sellprice*itemssold);
		
		// Display Sell Amount
		script_execute(scr_sell_gold_displayer);	
		o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + (sellprice*itemssold);		
		
		scr_itemdrop_slot(slot);
		mouseItem = -1;
		item = -1;
		audio_play_sound(snd_sell_item,9,false);				

		}
		
	}

}

//-------------------------------------------------------------
	// SHIFT + RIGHT CLICK events for STACKABLE ITEMS
	
if keyboard_check(vk_shift) and (rightclick)and !click and slot <= 60 and global.inventory[slot+1,9] > 1 {

o_inventory.right_click_timer = 0; // Reset timer for clicking to be active

	if o_mouse_pointer.sellmode = false {

		if mouseItem = -1 {
			script_execute(scr_array_to_mousestats);
			global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;
			o_mouseitem.stackcount = 1;
			mouseItem = item;
			script_execute(scr_equipsound_click);
		} else{
		
			if o_mouseitem.index = item {
				global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;
				o_mouseitem.stackcount ++;
				script_execute(scr_equipsound_click);
				
			}

			if global.inventory[slot+1,9] < 1 {
				scr_itemdrop_slot(slot);
			}
		}
	}

	
	
	
	
}

// Make quickdiv false again
if !mouse_check_button(mb_right) {
	o_inventory.quickdiv = false;


} 

// Holding down shift and right button to divide
if keyboard_check(vk_shift) and mouse_check_button(mb_right) and !click and slot <= 60 and global.inventory[slot+1,9] > 1 {
	
	// If mouse is held down for 1/2 second
	if mouse_check_button(mb_right) {
		o_inventory.quickdiv = true;
		o_inventory.quickdivstart += 1;
	
	} 

	if mouse_check_button_released(mb_right){
		o_inventory.quickdiv = false;
		o_inventory.quickadd = false;
		o_inventory.quickdivtimer = 0;
		o_inventory.quickdivstart = 0;
	}	
	
		
	if o_inventory.quickadd = true {
		global.inventory[slot+1,9] = global.inventory[slot+1,9] - 1;
		o_mouseitem.stackcount ++;
		o_inventory.quickdivtimer = 0;
	}


	if global.inventory[slot+1,9] < 1 {
		scr_itemdrop_slot(slot);
	}

}


// Right click events for using items---------------------------------------------
	if !click and rightclick and !shift {
		// Use the item
		scr_use_item_keypress_inventory(slot);
	}



//-------------------------------------------------------------
	// Right click events for equipment
	// NOTE: BUTTON SLOT 41 IS THE WEAPON SLOT
	// AND ARRAY SLOT 42 IS THE WEP ARRAY. SLOTS DOES NOT EQUAL ARRAY NUM. ARAY NUM IS +1 TO THE SLOT. 
	
	if (rightclick)and slot <= 60 and mouseItem = -1 and o_mouse_pointer.sellmode = false{
	o_inventory.right_click_timer = 0;	
	
		// Play sound on click
		script_execute(scr_equipsound_click);
	
		// If the slot is not empty and item type is a weapon   
		if (item !=-1) and type = "Weapon"{
			
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[63,0] = "Weapon"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[62];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(63);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(62);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 62);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(63);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 62);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(63);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}
		
		if (item !=-1) and type = "Chest Armor"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[64,0] = "Chest Armor"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[63];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(64);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(63);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 63);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(64);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 63);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(64);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}
		
		if (item !=-1) and type = "Offhand"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[65,0] = "Offhand"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[64];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(65);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(64);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 64);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(65);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 64);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(64);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}		
		
		if (item !=-1) and type = "Hat"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[66,0] = "Hat"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[65];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(66);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(65);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 65);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(66);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 65);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(66);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}				
		
		if (item !=-1) and type = "Pants"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[67,0] = "Pants"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[66];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(67);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(66);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 66);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(67);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 66);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(67);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}			

		if (item !=-1) and type = "Gloves"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[68,0] = "Gloves"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[67];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(68);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(67);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 67);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(68);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 67);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(68);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}		

		if (item !=-1) and type = "Boots"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[69,0] = "Boots"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[68];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(69);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(68);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 68);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(69);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 68);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(69);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}	

		if (item !=-1) and type = "Artifact"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[70,0] = "Artifact"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[69];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(70);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(69);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 69);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(70);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 69);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(70);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}	

		if (item !=-1) and type = "Amulet"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[71,0] = "Amulet"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[70];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(71);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(70);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 70);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(71);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 70);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(71);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}	

		if (item !=-1) and type = "Bracelet"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[72,0] = "Bracelet"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[71];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(72);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(71);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 71);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(72);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 71);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(72);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}	

		if (item !=-1) and type = "Ring"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[73,0] = "Ring"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[72];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(73);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(72);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 72);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(73);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 72);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(73);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}	
		
		if (item !=-1) and type = "Earring"{
		
			// If you right click an inventory weapon and there is already a weapon in the slot
			// Then weapon in the slot goes back into inventory, and wep you clicked on takes that spot 
			if global.inventory[74,0] = "Earring"{

			// Transfer the sprite index of 42 to the mouseitem,  Transfer stats to mouse item
			o_mouseitem.index = global.inventory[73];
			
			// Transfer equip slot stats stats to mouse item
			scr_equipslot_to_mouseitem(74);
	
			// Then drop the item in equipment slot 
			scr_itemdrop_slot(73);	

			// Move the wep from inventory over to the equip slot
			scr_item_pickup_slot(item, 73);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(74);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			
			// Put the wep from the slot back into inventory (we could move it to the same position as the click later)
			// We do this by using the stats from mouseitem, which we transferred above
			// Use the stats from the mouseitem to create the item back in the inventory.
			script_execute(scr_pickup_mouseitem_to_inventory);

			} else{
			
			// Weapon slot sprite same as item that was clicked
			scr_item_pickup_slot(item, 73);
			
			// Transfer stats over to the weapon equipment array 42 which holds wep equip data
			scr_array_to_equipslot(74);

			// Empty the slot that was right clicked
			scr_itemdrop_slot(slot);
			}
		}
		
		
	}
	
	
//Right Cicking on the Equip Slots puts it back into the inventory ------------------------------

// If right clicking weapon on equip slot, it should put it back into the inventory
if o_mouse_pointer.sellmode = false {

	if (rightclick)and slot == 62 and mouseItem = -1 {

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);

			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[62];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(63);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}

	if (rightclick)and slot == 63 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1{
		
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[63];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(64);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 64 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1{
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[64];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(65);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 65 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1{
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[65];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(66);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 66 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1{
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[66];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(67);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 67 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1{
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[67];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(68);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 68 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[68];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(69);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 69 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[69];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(70);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}

	if (rightclick)and slot == 70 and mouseItem = -1{
	
		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[70];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(71);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}

	if (rightclick)and slot == 71 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[71];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(72);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
	if (rightclick)and slot == 72 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[72];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(73);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}

	if (rightclick)and slot == 73 and mouseItem = -1{

		// If there is an item there
		if (item !=-1) and scr_check_inventory_full() = 1 {
			
			// Play sound on click
			script_execute(scr_equipsound_click);
			
			// Transfer the sprite index of 42 to the mouseitem first
			o_mouseitem.index = global.inventory[73];
			
			// Transfer item stats into mouse item stats
			scr_equipslot_to_mouseitem(74);

			// And empty the slot that was clicked
			scr_itemdrop_slot(slot);
			
			// Then put that item back into our inventory
			script_execute(scr_pickup_mouseitem_to_inventory);
		}
	}
	
}
	
//-------Click Events for Equipment Slots-------------------------------------------------------

if  o_mouse_pointer.sellmode = true and (click) and slot >= 62 and slot <=73 { // SELLING ITEMS IN THE EQUIP SLOTS

	if (item !=-1){
		// If we are in sellmode, destroy the item after getting the price

		var buybackcheck;
		
		buybackcheck = script_execute(scr_buyback_check);
		
		// Check to see if there is an open slot
		if buybackcheck = 1 { // Open slot, add the item to the slot

			scr_buyback_add(slot);
			o_player_stats.gold = o_player_stats.gold + sellprice;
			
			// Display Sell Amount
			script_execute(scr_sell_gold_displayer);	
			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;		
					
			scr_itemdrop_slot(slot);
			mouseItem = -1;
			audio_play_sound(snd_sell_item,9,false);					
	
		}
		
		if buybackcheck = 0 { // No Open slots, need to loop through and delete slot 36
		
			script_execute(scr_buyback_delete_last);
			script_execute(scr_buyback_move_up);
			script_execute(scr_buyback_delete_first);
			// SLot 21 should pull from slot 20, which is always all -1s - basically deleted
			scr_buyback_add(slot);
			o_player_stats.gold = o_player_stats.gold + sellprice;
			
			// Display Sell Amount
			script_execute(scr_sell_gold_displayer);	
			o_item_sold_gold_amt.sellamount = o_item_sold_gold_amt.sellamount + sellprice;	
						
			scr_itemdrop_slot(slot);
			mouseItem = -1;
			audio_play_sound(snd_sell_item,9,false);				

		}
	}
	
}

//---------------------------------------------------------------
if  o_mouse_pointer.sellmode = false { //  If not in SELLMODE, do things like normal

if (click)and slot = 62 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);
	//Call script that has the click events for equip slots
	//script_execute(scr_click_equip_slot);
	if o_mouseitem.type = "Weapon"{
		script_execute(scr_click_equip_slot);
	
	}

}	
	
if (click)and slot = 63 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Chest Armor"{
		script_execute(scr_click_equip_slot);}
}	
		
if (click)and slot = 64 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Offhand"{
		script_execute(scr_click_equip_slot);
	}
}	
		
if (click)and slot = 65 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Hat"{
		script_execute(scr_click_equip_slot);
	}
}	
	
if (click)and slot = 66 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Pants"{
		script_execute(scr_click_equip_slot);
	}
}	
	
if (click)and slot = 67 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Gloves"{
		script_execute(scr_click_equip_slot);
	}	
}

if (click)and slot = 68 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Boots"{
		script_execute(scr_click_equip_slot);
	}
}	

if (click)and slot = 69 {
 
	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Artifact"{
		script_execute(scr_click_equip_slot);
	}
}
		
if (click)and slot = 70 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Amulet"{
		script_execute(scr_click_equip_slot);
	}
}

if (click)and slot = 71 {

	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Bracelet"{
		script_execute(scr_click_equip_slot);
	}
}
	
if (click)and slot = 72 {
	
	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Ring"{
		script_execute(scr_click_equip_slot);
	}
}	
	
if (click)and slot = 73 {
	
	// Play sound on click
	script_execute(scr_equipsound_click_equipslot);	
	
	//Call script that has the click events for equip slots
	if o_mouseitem.type = "Earring"{
		script_execute(scr_click_equip_slot);
	}
}	
	
	
	
} else {
	// If not within 15 pixels of the center of the item boxes, inside_box is false
	inside_box = false;
}

}


/**/