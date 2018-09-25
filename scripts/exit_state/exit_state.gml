/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F025339
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)audio_play_sound(snd_exit, 4, false);$(13_10)$(13_10)state = move_state;$(13_10)/*$(13_10)if (image_alpha > 0) {$(13_10)	image_alpha -=.25;$(13_10)	$(13_10)} else {$(13_10)	if (room != room_last){$(13_10)	$(13_10)		//room_goto_next();$(13_10)		$(13_10)	} else{$(13_10)		/*$(13_10)		//Calculate the score$(13_10)		//o_player_stats.score = o_player_stats.sapphires;$(13_10)		// Open the Highscores$(13_10)		ini_open ("Settings.ini");$(13_10)		o_player_stats.highscore = ini_read_real("Score", "Highscore", 0);$(13_10)		$(13_10)		// A new highscrore case$(13_10)		if (o_player_stats.score > o_player_stats.highscore) {$(13_10)			o_player_stats.highscore = o_player_stats.score;$(13_10)			ini_write_real ("Score", "Highscore", o_player_stats.highscore);		$(13_10)		}$(13_10)		$(13_10)		// Close the ini file$(13_10)		ini_close();$(13_10)		$(13_10)		room_goto(rm_highscore);$(13_10)		$(13_10)	}$(13_10)$(13_10)	$(13_10)}$(13_10)	*/"
/// @description Execute Code\n
audio_play_sound(snd_exit, 4, false);

state = move_state;
/*
if (image_alpha > 0) {
	image_alpha -=.25;
	
} else {
	if (room != room_last){
	
		//room_goto_next();
		
	} else{
		/*
		//Calculate the score
		//o_player_stats.score = o_player_stats.sapphires;
		// Open the Highscores
		ini_open ("Settings.ini");
		o_player_stats.highscore = ini_read_real("Score", "Highscore", 0);
		
		// A new highscrore case
		if (o_player_stats.score > o_player_stats.highscore) {
			o_player_stats.highscore = o_player_stats.score;
			ini_write_real ("Score", "Highscore", o_player_stats.highscore);		
		}
		
		// Close the ini file
		ini_close();
		
		room_goto(rm_highscore);
		
	}

	
}
	*//**/