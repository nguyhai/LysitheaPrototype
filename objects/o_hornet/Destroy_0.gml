/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CAF0CDD
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)event_inherited();$(13_10)$(13_10)// Play snake death sound$(13_10)audio_play_sound(snd_bat, 4, false);$(13_10)$(13_10)for (i = 0; i < coins; i++)  {$(13_10)	instance_create_depth(x,y-10,0,o_coin);$(13_10)}$(13_10)$(13_10)instance_create_depth(x,y-10,0,o_item_drop_enemy);"
/// @description Execute Code\n
event_inherited();

// Play snake death sound
audio_play_sound(snd_bat, 4, false);

for (i = 0; i < coins; i++)  {
	instance_create_depth(x,y-10,0,o_coin);
}

instance_create_depth(x,y-10,0,o_item_drop_enemy);