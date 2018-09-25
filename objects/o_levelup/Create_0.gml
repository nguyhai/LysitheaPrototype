/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B2B2E4E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)num = 25;$(13_10)image_speed = .2;$(13_10)y = o_player.y - 20;$(13_10)image_xscale = 1.5;$(13_10)image_yscale = 1.5$(13_10)audio_play_sound(snd_level_up1, 5, false);$(13_10)audio_play_sound(snd_level_up, 9, false);$(13_10)instance_create_depth(o_player.x, o_player.y, 10,o_levelup_aura);$(13_10)instance_create_depth(o_player.x, o_player.y, 10,o_levelup_aura1);"
/// @description Execute Code
num = 25;
image_speed = .2;
y = o_player.y - 20;
image_xscale = 1.5;
image_yscale = 1.5
audio_play_sound(snd_level_up1, 5, false);
audio_play_sound(snd_level_up, 9, false);
instance_create_depth(o_player.x, o_player.y, 10,o_levelup_aura);
instance_create_depth(o_player.x, o_player.y, 10,o_levelup_aura1);