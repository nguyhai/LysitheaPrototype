/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20A5F428
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if showChar == false  and showShop = false {$(13_10)$(13_10)	showChar = true;$(13_10)	audio_play_sound(snd_open_screen,9,false);$(13_10)$(13_10)} else{$(13_10)	showChar = false;$(13_10)	audio_play_sound(snd_close_screen,9,false);$(13_10)}$(13_10)	"
/// @description Execute Code
if showChar == false  and showShop = false {

	showChar = true;
	audio_play_sound(snd_open_screen,9,false);

} else{
	showChar = false;
	audio_play_sound(snd_close_screen,9,false);
}