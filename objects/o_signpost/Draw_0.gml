/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26F7B9B3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self()$(13_10)$(13_10)if draw_sign = true {$(13_10)	draw_sprite(spr_sign_info,-1,x,y-20);$(13_10)	$(13_10)	//draw_text(x-100,y-120, "            DANGER! ")$(13_10)	draw_text(x-100,y-120, string(message));$(13_10)}"
/// @description Execute Code
draw_self()

if draw_sign = true {
	draw_sprite(spr_sign_info,-1,x,y-20);
	
	//draw_text(x-100,y-120, "            DANGER! ")
	draw_text(x-100,y-120, string(message));
}