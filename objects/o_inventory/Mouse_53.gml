/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55F2C434
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (mouseItem != -1) and o_mouse_pointer.inside_box == false {$(13_10)$(13_10)	instance_create_depth(o_player.x, o_player.y, 0, o_item_drop)$(13_10)	$(13_10)	mouseItem = -1$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)/*$(13_10)//inv_button has like 40 of them , need to find different way to show that I am not in grid$(13_10)$(13_10)if (mouseItem != -1) and (showInv == true) and o_mouse_pointer.inside_box == false {$(13_10)$(13_10)	instance_create_depth(o_player.x, o_player.y, 0, o_item_drop)$(13_10)	$(13_10)	mouseItem = -1$(13_10)	$(13_10)	$(13_10)}"
/// @description Execute Code

if (mouseItem != -1) and o_mouse_pointer.inside_box == false {

	instance_create_depth(o_player.x, o_player.y, 0, o_item_drop)
	
	mouseItem = -1
	
	
}




/*
//inv_button has like 40 of them , need to find different way to show that I am not in grid

if (mouseItem != -1) and (showInv == true) and o_mouse_pointer.inside_box == false {

	instance_create_depth(o_player.x, o_player.y, 0, o_item_drop)
	
	mouseItem = -1
	
	
}/**/