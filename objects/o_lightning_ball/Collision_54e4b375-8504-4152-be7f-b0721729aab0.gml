/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 250B32BB
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)//if image_index > image_number - 1 instance_destroy()$(13_10)$(13_10)$(13_10)with (other) {$(13_10)		//instance_create_depth(x+3,y,0,o_damage);$(13_10)		hp -= o_lightning_ball.damage*3;$(13_10)		audio_play_sound(snd_cut, 6, false);$(13_10)		instance_create_depth(x, y-12, 0, o_lightning_strike);$(13_10)		instance_create_depth(x, y-12, 0, o_lightning_ball_pop);$(13_10)}$(13_10)$(13_10)alarm[0]=1;"
/// @description Execute Code\n

//if image_index > image_number - 1 instance_destroy()


with (other) {
		//instance_create_depth(x+3,y,0,o_damage);
		hp -= o_lightning_ball.damage*3;
		audio_play_sound(snd_cut, 6, false);
		instance_create_depth(x, y-12, 0, o_lightning_strike);
		instance_create_depth(x, y-12, 0, o_lightning_ball_pop);
}

alarm[0]=1;