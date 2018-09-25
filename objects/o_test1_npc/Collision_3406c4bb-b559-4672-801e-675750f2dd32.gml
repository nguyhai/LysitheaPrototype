/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CBBD7AE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)o_shop_inventory.shoptype = shoptype;$(13_10)$(13_10)if keyboard_check_pressed(vk_up){$(13_10)	//script_execute(scr_tooltip_shop_stat_reset);$(13_10)	showShop = true;$(13_10)	showInv = true; $(13_10)	instance_create_depth(x,y,-99,o_invitempanel);$(13_10)$(13_10)}"
/// @description Execute Code
o_shop_inventory.shoptype = shoptype;

if keyboard_check_pressed(vk_up){
	//script_execute(scr_tooltip_shop_stat_reset);
	showShop = true;
	showInv = true; 
	instance_create_depth(x,y,-99,o_invitempanel);

}