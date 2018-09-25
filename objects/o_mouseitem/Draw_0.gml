/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6BD0F1C9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)var item = mouseItem;$(13_10)$(13_10)if (item != -1){$(13_10)	x = mouse_x;$(13_10)	y = mouse_y;$(13_10)	draw_sprite(spr_items, item, x, y);$(13_10)	$(13_10)}"
/// @description Execute Code


var item = mouseItem;

if (item != -1){
	x = mouse_x;
	y = mouse_y;
	draw_sprite(spr_items, item, x, y);
	
}