/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 138DAC7E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)depth = -1;$(13_10)$(13_10)if showChar = true{$(13_10)$(13_10)	if (abs(mouse_x - x) < 49) && (abs(mouse_y - y) < 11) && showChar == true {$(13_10)	$(13_10)	// MAX HP$(13_10)	if slot = 0 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "The max amount of health you have." );$(13_10)		draw_text(x-200, y-80, "MAX HP Scales with the VIT stat. " );$(13_10)		draw_text(x-200, y-60, "Better safe than sorry!" );$(13_10)$(13_10)	}$(13_10)	// Crit Rate$(13_10)	if slot = 1 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Critical hit rate determines how" );$(13_10)		draw_text(x-200, y-80, "often you land a critical hit. This" );$(13_10)		draw_text(x-200, y-60, "stat scales with DEX. " );$(13_10)	}$(13_10)	// Crit Bonus$(13_10)	if slot = 2 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Critical Hit Bonus determines how" );$(13_10)		draw_text(x-200, y-80, "much damage your critical hits do.  " );$(13_10)		draw_text(x-200, y-60, "This stat scales with STR. " );$(13_10)	}$(13_10)	// Evasion$(13_10)	if slot = 3 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Evasion determines how often you can" );$(13_10)		draw_text(x-200, y-80, "avoid enemy attacks. Like CRIT RATE," );$(13_10)		draw_text(x-200, y-60, "this stat scales with DEX." );$(13_10)	}$(13_10)	$(13_10)	// HP REGEN$(13_10)	if slot = 4 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "HP Regen is how much health you can" );$(13_10)		draw_text(x-200, y-80, "heal back over time. Like HP, this" );$(13_10)		draw_text(x-200, y-60, "stat scales with VIT." );$(13_10)	}$(13_10)	$(13_10)	// MP REGEN$(13_10)	if slot = 5 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "MP Regen is how much mana you can" );$(13_10)		draw_text(x-200, y-80, "regenerate over time. Necessary if" );$(13_10)		draw_text(x-200, y-60, "if you like using spells. Scales with INT. " );$(13_10)	}		$(13_10)	$(13_10)	// PHYS%$(13_10)	if slot = 6 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Physical Damage bonus applies extra" );$(13_10)		draw_text(x-200, y-80, "damage to your physical attack skills." );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	$(13_10)	// Fire%$(13_10)	if slot = 7 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Fire Damage bonus applies extra" );$(13_10)		draw_text(x-200, y-80, "damage to your fire attack skills." );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	$(13_10)	// ICE%$(13_10)	if slot = 8 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Ice Damage bonus applies extra" );$(13_10)		draw_text(x-200, y-80, "damage to your ice attack skills." );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	$(13_10)	// LIGHTNING%$(13_10)	if slot = 9 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Lightning Damage bonus applies extra" );$(13_10)		draw_text(x-200, y-80, "damage to your Lightning attack skills." );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	$(13_10)	// LIGHT%$(13_10)	if slot = 10 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Light Damage bonus applies extra" );$(13_10)		draw_text(x-200, y-80, "damage to your Light attack skills." );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}$(13_10)	// SHADOW%$(13_10)	if slot = 11 {$(13_10)		draw_sprite(spr_info_tooltip,0, x,y);$(13_10)		draw_text(x-200, y-100, "Shadow Damage bonus applies extra" );$(13_10)		draw_text(x-200, y-80, "damage to your Shadow attack skills." );$(13_10)		draw_text(x-200, y-60, " " );$(13_10)	}		$(13_10)	}$(13_10)$(13_10)}"
/// @description Execute Code
depth = -1;

if showChar = true{

	if (abs(mouse_x - x) < 49) && (abs(mouse_y - y) < 11) && showChar == true {
	
	// MAX HP
	if slot = 0 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "The max amount of health you have." );
		draw_text(x-200, y-80, "MAX HP Scales with the VIT stat. " );
		draw_text(x-200, y-60, "Better safe than sorry!" );

	}
	// Crit Rate
	if slot = 1 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Critical hit rate determines how" );
		draw_text(x-200, y-80, "often you land a critical hit. This" );
		draw_text(x-200, y-60, "stat scales with DEX. " );
	}
	// Crit Bonus
	if slot = 2 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Critical Hit Bonus determines how" );
		draw_text(x-200, y-80, "much damage your critical hits do.  " );
		draw_text(x-200, y-60, "This stat scales with STR. " );
	}
	// Evasion
	if slot = 3 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Evasion determines how often you can" );
		draw_text(x-200, y-80, "avoid enemy attacks. Like CRIT RATE," );
		draw_text(x-200, y-60, "this stat scales with DEX." );
	}
	
	// HP REGEN
	if slot = 4 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "HP Regen is how much health you can" );
		draw_text(x-200, y-80, "heal back over time. Like HP, this" );
		draw_text(x-200, y-60, "stat scales with VIT." );
	}
	
	// MP REGEN
	if slot = 5 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "MP Regen is how much mana you can" );
		draw_text(x-200, y-80, "regenerate over time. Necessary if" );
		draw_text(x-200, y-60, "if you like using spells. Scales with INT. " );
	}		
	
	// PHYS%
	if slot = 6 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Physical Damage bonus applies extra" );
		draw_text(x-200, y-80, "damage to your physical attack skills." );
		draw_text(x-200, y-60, " " );
	}
	
	// Fire%
	if slot = 7 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Fire Damage bonus applies extra" );
		draw_text(x-200, y-80, "damage to your fire attack skills." );
		draw_text(x-200, y-60, " " );
	}
	
	// ICE%
	if slot = 8 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Ice Damage bonus applies extra" );
		draw_text(x-200, y-80, "damage to your ice attack skills." );
		draw_text(x-200, y-60, " " );
	}
	
	// LIGHTNING%
	if slot = 9 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Lightning Damage bonus applies extra" );
		draw_text(x-200, y-80, "damage to your Lightning attack skills." );
		draw_text(x-200, y-60, " " );
	}
	
	// LIGHT%
	if slot = 10 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Light Damage bonus applies extra" );
		draw_text(x-200, y-80, "damage to your Light attack skills." );
		draw_text(x-200, y-60, " " );
	}
	// SHADOW%
	if slot = 11 {
		draw_sprite(spr_info_tooltip,0, x,y);
		draw_text(x-200, y-100, "Shadow Damage bonus applies extra" );
		draw_text(x-200, y-80, "damage to your Shadow attack skills." );
		draw_text(x-200, y-60, " " );
	}		
	}

}