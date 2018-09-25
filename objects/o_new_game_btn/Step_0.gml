/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48D947B5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if start_fading = true {$(13_10)	fade_alpha += 0.01;$(13_10)	audio_sound_gain(o_music.menu, 0, 3000);$(13_10)} $(13_10)$(13_10)if fade_alpha >= 1 {$(13_10)	start_fading = false;$(13_10)}$(13_10)/// To Start The game$(13_10)/*$(13_10)var start = mouse_check_button(mb_left);$(13_10)$(13_10)if (start == true && room = rm_menu) {$(13_10)	room_goto(rm_one);$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
if start_fading = true {
	fade_alpha += 0.01;
	audio_sound_gain(o_music.menu, 0, 3000);
} 

if fade_alpha >= 1 {
	start_fading = false;
}
/// To Start The game
/*
var start = mouse_check_button(mb_left);

if (start == true && room = rm_menu) {
	room_goto(rm_one);
}

/**/