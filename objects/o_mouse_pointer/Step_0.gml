/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7368126A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)var click = mouse_check_button_pressed(mb_left);$(13_10)var rightclick = mouse_check_button_pressed(mb_right);$(13_10)$(13_10)x = mouse_x;$(13_10)y = mouse_y;$(13_10)$(13_10)if place_meeting(x,y, o_invitempanel) or place_meeting(x,y, o_invisible_ui_bar){$(13_10)	inside_box = true;$(13_10)} else{$(13_10)	inside_box = false;$(13_10)}$(13_10)$(13_10)if sellmode = true {$(13_10)	sprite_index = spr_sell_dollar_icon;$(13_10)} else{$(13_10)	sprite_index = spr_cursor;$(13_10)}$(13_10)$(13_10)if !place_meeting(x,y,o_invitempanel) and sellmode = true and (click or rightclick) {$(13_10)	alarm[0] = 2;$(13_10)}$(13_10)$(13_10)if place_meeting(x,y,o_invitempanel) and sellmode = true and (rightclick) {$(13_10)	alarm[0] = 2;$(13_10)}$(13_10)/*$(13_10)if device_mouse_x_to_gui(0) != xprevious || device_mouse_y_to_gui(0) != yprevious {$(13_10)	visible = true;$(13_10)} else {$(13_10)	visible = false;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

var click = mouse_check_button_pressed(mb_left);
var rightclick = mouse_check_button_pressed(mb_right);

x = mouse_x;
y = mouse_y;

if place_meeting(x,y, o_invitempanel) or place_meeting(x,y, o_invisible_ui_bar){
	inside_box = true;
} else{
	inside_box = false;
}

if sellmode = true {
	sprite_index = spr_sell_dollar_icon;
} else{
	sprite_index = spr_cursor;
}

if !place_meeting(x,y,o_invitempanel) and sellmode = true and (click or rightclick) {
	alarm[0] = 2;
}

if place_meeting(x,y,o_invitempanel) and sellmode = true and (rightclick) {
	alarm[0] = 2;
}
/*
if device_mouse_x_to_gui(0) != xprevious || device_mouse_y_to_gui(0) != yprevious {
	visible = true;
} else {
	visible = false;
}



/**/