/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D04E425
/// @DnDArgument : "code" "if !instance_exists(o_invisible_ui_bar) {$(13_10)	instance_create_depth(0,660,0,o_invisible_ui_bar);$(13_10)}$(13_10)$(13_10)if !instance_exists(o_item_cooldown) {$(13_10)	instance_create_depth(0,660,0,o_item_cooldown);$(13_10)}$(13_10)$(13_10)var one		= keyboard_check_pressed(ord("1"))$(13_10)var two		= keyboard_check_pressed(ord("2"))$(13_10)var three	= keyboard_check_pressed(ord("3"))$(13_10)var four	= keyboard_check_pressed(ord("4"))$(13_10)$(13_10)if one {$(13_10)	scr_use_item_keypress_itembar(0);	$(13_10)	slotpress0 = true;$(13_10)}$(13_10)$(13_10)if two {$(13_10)	scr_use_item_keypress_itembar(1);	$(13_10)	slotpress1 = true;$(13_10)}$(13_10)$(13_10)if three {$(13_10)	scr_use_item_keypress_itembar(2);	$(13_10)	slotpress2 = true;$(13_10)}$(13_10)$(13_10)if four {$(13_10)	scr_use_item_keypress_itembar(3);	$(13_10)	slotpress3 = true;$(13_10)}$(13_10)$(13_10)	"
if !instance_exists(o_invisible_ui_bar) {
	instance_create_depth(0,660,0,o_invisible_ui_bar);
}

if !instance_exists(o_item_cooldown) {
	instance_create_depth(0,660,0,o_item_cooldown);
}

var one		= keyboard_check_pressed(ord("1"))
var two		= keyboard_check_pressed(ord("2"))
var three	= keyboard_check_pressed(ord("3"))
var four	= keyboard_check_pressed(ord("4"))

if one {
	scr_use_item_keypress_itembar(0);	
	slotpress0 = true;
}

if two {
	scr_use_item_keypress_itembar(1);	
	slotpress1 = true;
}

if three {
	scr_use_item_keypress_itembar(2);	
	slotpress2 = true;
}

if four {
	scr_use_item_keypress_itembar(3);	
	slotpress3 = true;
}