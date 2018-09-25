/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45CFABD5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)o_shop_inventory.shoptype = shoptype;$(13_10)$(13_10)if keyboard_check_pressed(vk_up){$(13_10)	audio_play_sound(snd_open_shop,9,false);$(13_10)	script_execute(scr_tooltip_shop_stat_reset);$(13_10)	showShop = true;$(13_10)	showInv = true;$(13_10)	instance_create_depth(x,y,-99,o_invitempanel);$(13_10)	if o_shop_inventory.shop == false {$(13_10)		o_shop_inventory.shop = true;$(13_10)		o_shop_inventory.buyback = false;$(13_10)	}	$(13_10)}$(13_10)		$(13_10)$(13_10)$(13_10)	//instance_create_depth(camera_get_view_x(view_camera),camera_get_view_x(view_camera),-99,o_equip_wep);$(13_10)$(13_10)$(13_10)/* Dialogue code below$(13_10)$(13_10)if (!instance_exists(o_dialog) && keyboard_check_pressed(vk_up)){$(13_10)	instance_create_depth(x,y,0,o_dialog);$(13_10)	$(13_10)	o_dialog.text[0] = "I'm 72x72 pixel resolution.";$(13_10)	o_dialog.text[1] = "You need to change your resolution to 1024x576";$(13_10)	o_dialog.text[2] = "or else your game is gonna look like crap";$(13_10)	audio_play_sound(snd_pop, 9, false);$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y,o_player) && !instance_exists (o_up_arrow)){$(13_10)	instance_create_depth(o_npctest2.x,o_npctest2.y-40,-9999, o_up_arrow)$(13_10)} else{$(13_10)$(13_10)}"
/// @description Execute Code
o_shop_inventory.shoptype = shoptype;

if keyboard_check_pressed(vk_up){
	audio_play_sound(snd_open_shop,9,false);
	script_execute(scr_tooltip_shop_stat_reset);
	showShop = true;
	showInv = true;
	instance_create_depth(x,y,-99,o_invitempanel);
	if o_shop_inventory.shop == false {
		o_shop_inventory.shop = true;
		o_shop_inventory.buyback = false;
	}	
}
		


	//instance_create_depth(camera_get_view_x(view_camera),camera_get_view_x(view_camera),-99,o_equip_wep);


/* Dialogue code below

if (!instance_exists(o_dialog) && keyboard_check_pressed(vk_up)){
	instance_create_depth(x,y,0,o_dialog);
	
	o_dialog.text[0] = "I'm 72x72 pixel resolution.";
	o_dialog.text[1] = "You need to change your resolution to 1024x576";
	o_dialog.text[2] = "or else your game is gonna look like crap";
	audio_play_sound(snd_pop, 9, false);
}

if (place_meeting(x,y,o_player) && !instance_exists (o_up_arrow)){
	instance_create_depth(o_npctest2.x,o_npctest2.y-40,-9999, o_up_arrow)
} else{

}/**/