/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45CFABD5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)if (!instance_exists(o_dialog) && keyboard_check_pressed(vk_up)){$(13_10)	instance_create_depth(x,y,0,o_dialog);$(13_10)	$(13_10)	o_dialog.text[0] = "I don't have much to say.";$(13_10)	o_dialog.text[1] = "Other than this game sucks.";$(13_10)	audio_play_sound(snd_pop, 9, false);$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y,o_player) && !instance_exists (o_up_arrow)){$(13_10)	instance_create_depth(o_npctest.x,o_npctest.y-40,-9999, o_up_arrow)$(13_10)} else{$(13_10)$(13_10)}"
/// @description Execute Code


if (!instance_exists(o_dialog) && keyboard_check_pressed(vk_up)){
	instance_create_depth(x,y,0,o_dialog);
	
	o_dialog.text[0] = "I don't have much to say.";
	o_dialog.text[1] = "Other than this game sucks.";
	audio_play_sound(snd_pop, 9, false);
}

if (place_meeting(x,y,o_player) && !instance_exists (o_up_arrow)){
	instance_create_depth(o_npctest.x,o_npctest.y-40,-9999, o_up_arrow)
} else{

}