/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 482E524F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if o_new_game_btn.start_fading = false {$(13_10)	image_index = 1;$(13_10)	audio_play_sound(snd_menu_hover,8,false)$(13_10)}"
/// @description Execute Code
if o_new_game_btn.start_fading = false {
	image_index = 1;
	audio_play_sound(snd_menu_hover,8,false)
}