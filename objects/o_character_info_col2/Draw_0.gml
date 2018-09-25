/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 138DAC7E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)depth = -1;$(13_10)$(13_10)if showChar = true{$(13_10)$(13_10)	if (abs(mouse_x - x) < 49) && (abs(mouse_y - y) < 11) && showChar == true {$(13_10)	$(13_10)	// MAX MP$(13_10)	if slot = 0 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "The max amount of mana you have." );$(13_10)		draw_text(x-200, y-80, "MAX MP Scales with the INT stat. " );$(13_10)		draw_text(x-200, y-60, "Very important stat for casters!" );$(13_10)	}$(13_10)	// Average ATK$(13_10)	if slot = 1 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Average attack damage that you do. " );$(13_10)		draw_text(x-200, y-80, "Scaling goes by: MELEE - STR, " );$(13_10)		draw_text(x-200, y-60, "RANGED - DEX , MAGIC - INT." );$(13_10)	}$(13_10)	// Defense$(13_10)	if slot = 2 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "The amount of defense you have against" );$(13_10)		draw_text(x-200, y-80, "normal enemy attacks. defense can be" );$(13_10)		draw_text(x-200, y-60, "incrased by wearing better armors.  " );$(13_10)	}$(13_10)	// Move Speed$(13_10)	if slot = 3 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Move Speed determines how fast you" );$(13_10)		draw_text(x-200, y-80, "can walk around. This stat only be" );$(13_10)		draw_text(x-200, y-60, "increased by wearing boots." );$(13_10)	}$(13_10)	// Spell Bonus$(13_10)	if slot = 4 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Spell bonus amplifies your elemental" );$(13_10)		draw_text(x-200, y-80, "spell attacks. All elemental skills are " );$(13_10)		draw_text(x-200, y-60, "affected. This stat scales with INT." );$(13_10)	}$(13_10)	// EX Duration$(13_10)	if slot = 5 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "EX Duration is how long you can stay" );$(13_10)		draw_text(x-200, y-80, "in EX mode. This duration can be" );$(13_10)		draw_text(x-200, y-60, "increased by having more VIT." );$(13_10)	}		$(13_10)	// Phys Def$(13_10)	if slot = 6 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Physical Def is the amount of physical" );$(13_10)		draw_text(x-200, y-80, "resistance that you have.  " );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	// Fire Def$(13_10)	if slot = 7 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Fire Def is the amount of fire" );$(13_10)		draw_text(x-200, y-80, "resistance that you have.  " );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	// Ice Def$(13_10)	if slot = 8 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Ice Def is the amount of ice" );$(13_10)		draw_text(x-200, y-80, "resistance that you have.  " );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	// Lightning Def$(13_10)	if slot = 9 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Lightning Def is the amount of" );$(13_10)		draw_text(x-200, y-80, "lightning resistance that you have.  " );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	// Light Def$(13_10)	if slot = 10 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Light Def is the amount of light" );$(13_10)		draw_text(x-200, y-80, "resistance that you have.  " );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	// Shadow Def$(13_10)	if slot = 11 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Shadow Def is the amount of shadow" );$(13_10)		draw_text(x-200, y-80, "resistance that you have.  " );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}	$(13_10)$(13_10)	}$(13_10)$(13_10)}"
/// @description Execute Code
depth = -1;

if showChar = true{

	if (abs(mouse_x - x) < 49) && (abs(mouse_y - y) < 11) && showChar == true {
	
	// MAX MP
	if slot = 0 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "The max amount of mana you have." );
		draw_text(x-200, y-80, "MAX MP Scales with the INT stat. " );
		draw_text(x-200, y-60, "Very important stat for casters!" );
	}
	// Average ATK
	if slot = 1 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Average attack damage that you do. " );
		draw_text(x-200, y-80, "Scaling goes by: MELEE - STR, " );
		draw_text(x-200, y-60, "RANGED - DEX , MAGIC - INT." );
	}
	// Defense
	if slot = 2 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "The amount of defense you have against" );
		draw_text(x-200, y-80, "normal enemy attacks. defense can be" );
		draw_text(x-200, y-60, "incrased by wearing better armors.  " );
	}
	// Move Speed
	if slot = 3 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Move Speed determines how fast you" );
		draw_text(x-200, y-80, "can walk around. This stat only be" );
		draw_text(x-200, y-60, "increased by wearing boots." );
	}
	// Spell Bonus
	if slot = 4 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Spell bonus amplifies your elemental" );
		draw_text(x-200, y-80, "spell attacks. All elemental skills are " );
		draw_text(x-200, y-60, "affected. This stat scales with INT." );
	}
	// EX Duration
	if slot = 5 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "EX Duration is how long you can stay" );
		draw_text(x-200, y-80, "in EX mode. This duration can be" );
		draw_text(x-200, y-60, "increased by having more VIT." );
	}		
	// Phys Def
	if slot = 6 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Physical Def is the amount of physical" );
		draw_text(x-200, y-80, "resistance that you have.  " );
		draw_text(x-200, y-60, " " );
	}
	// Fire Def
	if slot = 7 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Fire Def is the amount of fire" );
		draw_text(x-200, y-80, "resistance that you have.  " );
		draw_text(x-200, y-60, " " );
	}
	// Ice Def
	if slot = 8 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Ice Def is the amount of ice" );
		draw_text(x-200, y-80, "resistance that you have.  " );
		draw_text(x-200, y-60, " " );
	}
	// Lightning Def
	if slot = 9 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Lightning Def is the amount of" );
		draw_text(x-200, y-80, "lightning resistance that you have.  " );
		draw_text(x-200, y-60, " " );
	}
	// Light Def
	if slot = 10 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Light Def is the amount of light" );
		draw_text(x-200, y-80, "resistance that you have.  " );
		draw_text(x-200, y-60, " " );
	}
	// Shadow Def
	if slot = 11 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Shadow Def is the amount of shadow" );
		draw_text(x-200, y-80, "resistance that you have.  " );
		draw_text(x-200, y-60, " " );
	}	

	}

}