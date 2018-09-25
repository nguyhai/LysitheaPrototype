/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 159AA17E
/// @DnDArgument : "code" "if instance_exists(o_player) and o_player.cutscene = false {$(13_10)$(13_10)	depth = -1;$(13_10)	$(13_10)	var x1, y1$(13_10)	$(13_10)	x1 = camera_get_view_x(view_camera)+500;$(13_10)	y1 = camera_get_view_y(view_camera)+614;$(13_10)$(13_10)	yy = 1;$(13_10)	xx = 1;$(13_10)	$(13_10)	var orange = make_color_rgb(255,140,50)$(13_10)	$(13_10)	for (i = 0; i <8; i ++) {$(13_10)	$(13_10)	draw_sprite(spr_skill_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes$(13_10)	// Draw the spacing$(13_10)	coordx[i] = x1+space+(xx*space);$(13_10)	coordy[i] = y1+space+(yy*space);$(13_10)	// Draw the invis buttons X and Y coordinates$(13_10)	button[i].x = x1+space+(xx*space);$(13_10)	button[i].y = y1+space+(yy*space);$(13_10)	$(13_10)	// Here is where we can use the columns and rows to help us draw$(13_10)	if(xx < columns){$(13_10)		xx +=1;$(13_10)	} else {$(13_10)		xx=1;$(13_10)		yy+=1;$(13_10)	}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)$(13_10)}"
if instance_exists(o_player) and o_player.cutscene = false {

	depth = -1;
	
	var x1, y1
	
	x1 = camera_get_view_x(view_camera)+500;
	y1 = camera_get_view_y(view_camera)+614;

	yy = 1;
	xx = 1;
	
	var orange = make_color_rgb(255,140,50)
	
	for (i = 0; i <8; i ++) {
	
	draw_sprite(spr_skill_border, 0, x1+space+(xx*space), y1+space+(yy*space)) //draws empty boxes
	// Draw the spacing
	coordx[i] = x1+space+(xx*space);
	coordy[i] = y1+space+(yy*space);
	// Draw the invis buttons X and Y coordinates
	button[i].x = x1+space+(xx*space);
	button[i].y = y1+space+(yy*space);
	
	// Here is where we can use the columns and rows to help us draw
	if(xx < columns){
		xx +=1;
	} else {
		xx=1;
		yy+=1;
	}
	}
	
	
	
	
	

}