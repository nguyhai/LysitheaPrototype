/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49F9CEDA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)display_set_gui_size(1280, 720);$(13_10)if draw_message = true {$(13_10)	draw_sprite(spr_tooltip_message,0,x,y)$(13_10)	draw_set_color(c_yellow);$(13_10)	draw_text(x-100,y-20,"Click: Sell one item")$(13_10)	draw_text(x-100,y+0,"Shift+Click: Sell all items.")$(13_10)	draw_set_color(c_white);$(13_10)}"
/// @description Execute Code

display_set_gui_size(1280, 720);
if draw_message = true {
	draw_sprite(spr_tooltip_message,0,x,y)
	draw_set_color(c_yellow);
	draw_text(x-100,y-20,"Click: Sell one item")
	draw_text(x-100,y+0,"Shift+Click: Sell all items.")
	draw_set_color(c_white);
}