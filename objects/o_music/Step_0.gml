/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F91F476
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)switch (room) {$(13_10)$(13_10)	case rm_menu: $(13_10)$(13_10)	if !audio_is_playing(menu){$(13_10)		audio_stop_all();$(13_10)		audio_sound_gain(menu, 0, 0);$(13_10)		audio_sound_gain(menu, 1, 7000);$(13_10)		audio_play_sound(menu, 9, true);$(13_10)		$(13_10)	}$(13_10)$(13_10)$(13_10)	break;$(13_10)$(13_10)$(13_10)$(13_10)	case rm_one: $(13_10)	if (!audio_is_playing(bgm_footsteps)){$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(bgm_footsteps, 9, true);$(13_10)	} $(13_10)	$(13_10)	break;$(13_10)	$(13_10)	case rm_cutscene_1: $(13_10)	if (!audio_is_playing(bgm_voices_of_a_distant_star)){$(13_10)		audio_stop_all();$(13_10)		audio_sound_gain(bgm_voices_of_a_distant_star, 0, 0);$(13_10)		audio_sound_gain(bgm_voices_of_a_distant_star, 1, 7000);$(13_10)		audio_play_sound(bgm_voices_of_a_distant_star, 9, true);$(13_10)		$(13_10)	} $(13_10)	$(13_10)	break;	$(13_10)	$(13_10)	case rm_home: $(13_10)	if (!audio_is_playing(bgm_hope)){$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(bgm_hope, 9, true);$(13_10)	} $(13_10)	$(13_10)	break;$(13_10)	$(13_10)	case rm_town: $(13_10)	$(13_10)	$(13_10)	if (!audio_is_playing(bgm_hope)){$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(bgm_hope, 9, true);$(13_10)		$(13_10)	} $(13_10)	$(13_10)	if (audio_is_playing(bgm_rain_ambient)){$(13_10)		//audio_stop_all();$(13_10)		audio_stop_sound(bgm_rain_ambient)$(13_10)		//audio_play_sound(bgm_hope, 9, true);$(13_10)		$(13_10)	}	$(13_10)		$(13_10)	break;$(13_10)	$(13_10)	case rm_town2: $(13_10)	if (!audio_is_playing(bgm_rain_ambient)){$(13_10)		//audio_stop_all();$(13_10)		//audio_play_sound(bgm_hope, 9, true);$(13_10)		audio_play_sound(bgm_rain_ambient, 9, true);$(13_10)	} $(13_10)	break;$(13_10)$(13_10)	case rm_town3: $(13_10)	if (!audio_is_playing(bgm_rain_ambient)){$(13_10)		//audio_stop_all();$(13_10)		//audio_play_sound(bgm_hope, 9, true);$(13_10)		audio_play_sound(bgm_rain_ambient, 9, true);$(13_10)	} $(13_10)	break;$(13_10)$(13_10)$(13_10)	default: $(13_10)$(13_10)	break;$(13_10)	$(13_10)	$(13_10)$(13_10)	$(13_10)}"
/// @description Execute Code


switch (room) {

	case rm_menu: 

	if !audio_is_playing(menu){
		audio_stop_all();
		audio_sound_gain(menu, 0, 0);
		audio_sound_gain(menu, 1, 7000);
		audio_play_sound(menu, 9, true);
		
	}


	break;



	case rm_one: 
	if (!audio_is_playing(bgm_footsteps)){
		audio_stop_all();
		audio_play_sound(bgm_footsteps, 9, true);
	} 
	
	break;
	
	case rm_cutscene_1: 
	if (!audio_is_playing(bgm_voices_of_a_distant_star)){
		audio_stop_all();
		audio_sound_gain(bgm_voices_of_a_distant_star, 0, 0);
		audio_sound_gain(bgm_voices_of_a_distant_star, 1, 7000);
		audio_play_sound(bgm_voices_of_a_distant_star, 9, true);
		
	} 
	
	break;	
	
	case rm_home: 
	if (!audio_is_playing(bgm_hope)){
		audio_stop_all();
		audio_play_sound(bgm_hope, 9, true);
	} 
	
	break;
	
	case rm_town: 
	
	
	if (!audio_is_playing(bgm_hope)){
		audio_stop_all();
		audio_play_sound(bgm_hope, 9, true);
		
	} 
	
	if (audio_is_playing(bgm_rain_ambient)){
		//audio_stop_all();
		audio_stop_sound(bgm_rain_ambient)
		//audio_play_sound(bgm_hope, 9, true);
		
	}	
		
	break;
	
	case rm_town2: 
	if (!audio_is_playing(bgm_rain_ambient)){
		//audio_stop_all();
		//audio_play_sound(bgm_hope, 9, true);
		audio_play_sound(bgm_rain_ambient, 9, true);
	} 
	break;

	case rm_town3: 
	if (!audio_is_playing(bgm_rain_ambient)){
		//audio_stop_all();
		//audio_play_sound(bgm_hope, 9, true);
		audio_play_sound(bgm_rain_ambient, 9, true);
	} 
	break;


	default: 

	break;
	
	

	
}