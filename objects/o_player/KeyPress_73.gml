/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2474462F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Ccre$(13_10)$(13_10)if showInv == false {$(13_10)	$(13_10)	audio_play_sound(snd_open_screen,9,false);$(13_10)	showInv = true;$(13_10)	instance_create_depth(x,y,-99,o_invitempanel);$(13_10)	//instance_create_depth(camera_get_view_x(view_camera),camera_get_view_x(view_camera),-99,o_equip_wep);$(13_10)$(13_10)} else {$(13_10)	showInv = false;$(13_10)	instance_destroy(o_invitempanel);$(13_10)	audio_play_sound(snd_close_screen,9,false);$(13_10)	//instance_destroy(o_equip_wep);$(13_10)	$(13_10)}$(13_10)	"
/// @description Execute Code
/// @description Execute Ccre

if showInv == false {
	
	audio_play_sound(snd_open_screen,9,false);
	showInv = true;
	instance_create_depth(x,y,-99,o_invitempanel);
	//instance_create_depth(camera_get_view_x(view_camera),camera_get_view_x(view_camera),-99,o_equip_wep);

} else {
	showInv = false;
	instance_destroy(o_invitempanel);
	audio_play_sound(snd_close_screen,9,false);
	//instance_destroy(o_equip_wep);
	
}