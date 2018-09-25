/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 750B0608
/// @DnDArgument : "code" "if instance_exists(o_player) and o_player.cutscene = false {$(13_10)$(13_10)	depth = -2;	$(13_10)	$(13_10)	if slot = 0 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "Z");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}$(13_10)	$(13_10)	if slot = 1 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "X");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}$(13_10)	$(13_10)	if slot = 2 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "C");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}$(13_10)	$(13_10)	if slot = 3 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "V");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}	$(13_10)	$(13_10)	if slot = 4 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "A");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}$(13_10)	$(13_10)	if slot = 5 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "S");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}$(13_10)	$(13_10)	if slot = 6 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "D");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}$(13_10)	$(13_10)	if slot = 7 {$(13_10)		draw_set_font(fnt_stacktext)$(13_10)		draw_text(x-17, y-17, "F");$(13_10)		draw_set_font(fnt_normal)$(13_10)	}		$(13_10)	$(13_10)	$(13_10)}"
if instance_exists(o_player) and o_player.cutscene = false {

	depth = -2;	
	
	if slot = 0 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "Z");
		draw_set_font(fnt_normal)
	}
	
	if slot = 1 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "X");
		draw_set_font(fnt_normal)
	}
	
	if slot = 2 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "C");
		draw_set_font(fnt_normal)
	}
	
	if slot = 3 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "V");
		draw_set_font(fnt_normal)
	}	
	
	if slot = 4 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "A");
		draw_set_font(fnt_normal)
	}
	
	if slot = 5 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "S");
		draw_set_font(fnt_normal)
	}
	
	if slot = 6 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "D");
		draw_set_font(fnt_normal)
	}
	
	if slot = 7 {
		draw_set_font(fnt_stacktext)
		draw_text(x-17, y-17, "F");
		draw_set_font(fnt_normal)
	}		
	
	
}