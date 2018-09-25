/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45CFABD5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// If quest hasnt been accepted yet$(13_10)if (!instance_exists(o_dialog) and keyboard_check_pressed(vk_up) and o_game_state.switches[? "quest_kill_snakes_started"] = false and o_game_state.switches[? "quest_kill_snakes_completed"] = false){$(13_10)	instance_create_depth(x,y,0,o_dialog);$(13_10)	$(13_10)	o_dialog.text[0] = "David: Giving out quests here. ";$(13_10)	o_dialog.text[1] = "Go kill me some 5 snakes yo.";$(13_10)	o_dialog.text[2] = "Press W if you wanna take on this quest. Also testing out this super long line of sentence.";$(13_10)	audio_play_sound(snd_pop, 9, false);$(13_10)}$(13_10)// If quest has been accepted$(13_10)if (!instance_exists(o_dialog) and keyboard_check_pressed(vk_up) and o_game_state.switches[? "quest_kill_snakes_started"] = true and o_game_state.switches[? "quest_kill_snakes_completed"] = false){$(13_10)	instance_create_depth(x,y,0,o_dialog);$(13_10)	$(13_10)	o_dialog.text[0] = "Hurry up man.";$(13_10)	audio_play_sound(snd_pop, 9, false);$(13_10)}$(13_10)$(13_10)// If quest is completed$(13_10)if (!instance_exists(o_dialog) and keyboard_check_pressed(vk_up) and o_game_state.switches[? "quest_kill_snakes_completed"] = true){$(13_10)	instance_create_depth(x,y,0,o_dialog);$(13_10)	$(13_10)	o_dialog.text[0] = "Got no more quests for you ";$(13_10)	o_dialog.text[1] = "Didn't give you exp gold or anything either";$(13_10)	o_dialog.text[2] = "You wasted your time killing 5 snakes";$(13_10)	$(13_10)	// This isn't gonna work if there are multiple completed quests on the screen$(13_10)	// Because it will destroy all the quest completed images on the map$(13_10)	// May need to make a few of them or re-code$(13_10)	// Easy way is to dupe it and just make 5, then have no more than 5 quests givers on a map$(13_10)	$(13_10)	if instance_exists(o_quest_completed){$(13_10)		instance_destroy(o_quest_completed);$(13_10)		audio_play_sound(snd_quest_accept, 9, false);$(13_10)	}$(13_10)	$(13_10)	audio_play_sound(snd_pop, 9, false);$(13_10)}$(13_10)// This is to create the up arrow$(13_10)if (place_meeting(x,y,o_player) and !instance_exists (o_up_arrow)){$(13_10)	instance_create_depth(o_npctest1.x,o_npctest1.y-70,-9999, o_up_arrow)$(13_10)} else{$(13_10)$(13_10)}$(13_10)// This is when you accept the quest, it switches it to "quest in progress" state$(13_10)if (place_meeting(x,y,o_player) and keyboard_check_pressed(ord("W")) and o_game_state.snakes_active == false and o_game_state.switches[? "quest_kill_snakes_completed"] = false){$(13_10)	o_game_state.switches[? "quest_kill_snakes_started"] = true;$(13_10)	instance_destroy(o_quest_available);$(13_10)	o_game_state.snakes_active = true$(13_10)	instance_create_depth(x+30,y -50, 0 , o_quest_inprogress);$(13_10)	audio_play_sound(snd_quest_accept, 9, false);$(13_10)} "
/// @description Execute Code

// If quest hasnt been accepted yet
if (!instance_exists(o_dialog) and keyboard_check_pressed(vk_up) and o_game_state.switches[? "quest_kill_snakes_started"] = false and o_game_state.switches[? "quest_kill_snakes_completed"] = false){
	instance_create_depth(x,y,0,o_dialog);
	
	o_dialog.text[0] = "David: Giving out quests here. ";
	o_dialog.text[1] = "Go kill me some 5 snakes yo.";
	o_dialog.text[2] = "Press W if you wanna take on this quest. Also testing out this super long line of sentence.";
	audio_play_sound(snd_pop, 9, false);
}
// If quest has been accepted
if (!instance_exists(o_dialog) and keyboard_check_pressed(vk_up) and o_game_state.switches[? "quest_kill_snakes_started"] = true and o_game_state.switches[? "quest_kill_snakes_completed"] = false){
	instance_create_depth(x,y,0,o_dialog);
	
	o_dialog.text[0] = "Hurry up man.";
	audio_play_sound(snd_pop, 9, false);
}

// If quest is completed
if (!instance_exists(o_dialog) and keyboard_check_pressed(vk_up) and o_game_state.switches[? "quest_kill_snakes_completed"] = true){
	instance_create_depth(x,y,0,o_dialog);
	
	o_dialog.text[0] = "Got no more quests for you ";
	o_dialog.text[1] = "Didn't give you exp gold or anything either";
	o_dialog.text[2] = "You wasted your time killing 5 snakes";
	
	// This isn't gonna work if there are multiple completed quests on the screen
	// Because it will destroy all the quest completed images on the map
	// May need to make a few of them or re-code
	// Easy way is to dupe it and just make 5, then have no more than 5 quests givers on a map
	
	if instance_exists(o_quest_completed){
		instance_destroy(o_quest_completed);
		audio_play_sound(snd_quest_accept, 9, false);
	}
	
	audio_play_sound(snd_pop, 9, false);
}
// This is to create the up arrow
if (place_meeting(x,y,o_player) and !instance_exists (o_up_arrow)){
	instance_create_depth(o_npctest1.x,o_npctest1.y-70,-9999, o_up_arrow)
} else{

}
// This is when you accept the quest, it switches it to "quest in progress" state
if (place_meeting(x,y,o_player) and keyboard_check_pressed(ord("W")) and o_game_state.snakes_active == false and o_game_state.switches[? "quest_kill_snakes_completed"] = false){
	o_game_state.switches[? "quest_kill_snakes_started"] = true;
	instance_destroy(o_quest_available);
	o_game_state.snakes_active = true
	instance_create_depth(x+30,y -50, 0 , o_quest_inprogress);
	audio_play_sound(snd_quest_accept, 9, false);
}