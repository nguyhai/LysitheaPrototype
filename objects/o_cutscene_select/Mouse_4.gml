/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45CD8E14
/// @DnDArgument : "code" "if o_new_game_btn.start_fading = false {$(13_10)	audio_play_sound(snd_new_game,9,false);$(13_10)	image_index = 1$(13_10)	clicked = true;$(13_10)	o_room_select.clicked = false;$(13_10)	o_room_select.image_index = 0;$(13_10)}"
if o_new_game_btn.start_fading = false {
	audio_play_sound(snd_new_game,9,false);
	image_index = 1
	clicked = true;
	o_room_select.clicked = false;
	o_room_select.image_index = 0;
}