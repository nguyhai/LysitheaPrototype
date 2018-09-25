/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B8270EF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)depth = -1;$(13_10)$(13_10)var click = mouse_check_button_pressed(mb_left);$(13_10)var shift = keyboard_check(vk_shift);$(13_10)var clicksound = snd_pop;$(13_10)var clicksound_remove = snd_bubble_blurb;$(13_10)// Need pool numbers, if button clicked and statpoints >0, adds to the pool. $(13_10)// If pool >0, the REMOVE button becomes active for that stat. $(13_10)// Need a flag that makes the pools zero if the showInv ever becomes false.$(13_10)$(13_10)$(13_10)if showChar == true {$(13_10)// Draw thhe add and remove stat buttons$(13_10)	draw_set_alpha(1);$(13_10)$(13_10)	// Draw the remove buttons on the left$(13_10)	if (slot = 0) { // FOR STR$(13_10)		if o_character_screen.str_pool = 0 {$(13_10)			draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		}  else  {$(13_10)			draw_sprite(spr_remove_stat,0,x,y); $(13_10)		}	$(13_10)	}$(13_10)	if (slot = 2) { // FOR DEX$(13_10)	$(13_10)		if o_character_screen.dex_pool = 0 {$(13_10)			draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		} else {$(13_10)			draw_sprite(spr_remove_stat,0,x,y); $(13_10)		}	$(13_10)	}$(13_10)	$(13_10)	if (slot = 4) {// FOR INT$(13_10)		if o_character_screen.int_pool = 0 {$(13_10)			draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		} else {$(13_10)			draw_sprite(spr_remove_stat,0,x,y); $(13_10)		}	$(13_10)	}$(13_10)	$(13_10)	if (slot = 6) {// FOR VIT$(13_10)		if o_character_screen.vit_pool = 0 {$(13_10)			draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		} else {$(13_10)			draw_sprite(spr_remove_stat,0,x,y); $(13_10)		}$(13_10)	}$(13_10)$(13_10)	// Draw the add buttons on the right$(13_10)	if (slot = 1) { // FOR STR$(13_10)$(13_10)		if (o_player_stats.stats[? "statpoints"] <= 0) {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		} else { $(13_10)			draw_sprite(spr_add_stat,0,x,y);$(13_10)		}			$(13_10)	}$(13_10)	if (slot = 3) { // FOR DEX$(13_10)$(13_10)		if (o_player_stats.stats[? "statpoints"] <= 0) {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		} else { $(13_10)			draw_sprite(spr_add_stat,0,x,y);$(13_10)		}			$(13_10)	}$(13_10)	if (slot = 5) { // FOR INT$(13_10)$(13_10)		if (o_player_stats.stats[? "statpoints"] <= 0) {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		} else { $(13_10)			draw_sprite(spr_add_stat,0,x,y);$(13_10)		}			$(13_10)	}$(13_10)	if (slot = 7) { // FOR VIT$(13_10)$(13_10)		if (o_player_stats.stats[? "statpoints"] <= 0) {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		} else { $(13_10)			draw_sprite(spr_add_stat,0,x,y);$(13_10)		}			$(13_10)	}$(13_10)}$(13_10)$(13_10)//------------------------------------------------------------------------------------------$(13_10)if (abs(mouse_x - x) < 11) && (abs(mouse_y - y) < 11) && showChar== true {$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_set_color(c_yellow);$(13_10)	draw_rectangle(x-11, y-11, x+10, y+10, 0);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)$(13_10)//------------------------------------------------------------------------------------------$(13_10)// DO THE SAME AS ABOVE BUT USE SHIFT + CLICK TO ADD/REMOVE 5 POINTS$(13_10)// NOTE THAT IT ADDS 6 (if you use 5) CAUSE THE DANG CLICK EVENTS BELOW ADDS 1 $(13_10)// SO YOU GOTTA USE NUMBER 4 TO MAKE UP FOR IT$(13_10)// 1,3,5,7$(13_10)$(13_10)if click and shift and o_player_stats.stats[? "statpoints"] >= 5 {$(13_10)	$(13_10)	// ADD EVENTS$(13_10)	if slot = 1 {$(13_10)		draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		o_character_screen.str_pool=o_character_screen.str_pool+4;$(13_10)		o_player_stats.stats[? "strength"]= o_player_stats.stats[? "strength"]+4;$(13_10)		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"]-4;$(13_10)		audio_play_sound(clicksound, 9, false);$(13_10)	}$(13_10)	if slot = 3 {$(13_10)		draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		o_character_screen.dex_pool=o_character_screen.dex_pool+4;$(13_10)		o_player_stats.stats[? "dexterity"]= o_player_stats.stats[? "dexterity"]+4;$(13_10)		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"]-4;$(13_10)		audio_play_sound(clicksound, 9, false);$(13_10)	}$(13_10)	if slot = 5 {$(13_10)		draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		o_character_screen.int_pool=o_character_screen.int_pool+4;$(13_10)		o_player_stats.stats[? "intelligence"]= o_player_stats.stats[? "intelligence"]+4;$(13_10)		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"]-4;$(13_10)		audio_play_sound(clicksound, 9, false);$(13_10)	}$(13_10)	if slot = 7 {$(13_10)		draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)		o_character_screen.vit_pool=o_character_screen.vit_pool + 4;$(13_10)		o_player_stats.stats[? "vitality"]= o_player_stats.stats[? "vitality"] + 4;$(13_10)		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"] - 4;$(13_10)		audio_play_sound(clicksound, 9, false);$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)// SHIFT AND CLICK REMOVAL 5 PTS slots (0,2,4,6)$(13_10)$(13_10)if click and shift {$(13_10)	$(13_10)	if slot = 0 and o_character_screen.str_pool >= 5{$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.str_pool=o_character_screen.str_pool - 4;$(13_10)		o_player_stats.stats[? "strength"]= o_player_stats.stats[? "strength"]-4;$(13_10)		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)	if slot = 2 and o_character_screen.dex_pool >= 5{$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.dex_pool=o_character_screen.dex_pool - 4;$(13_10)		o_player_stats.stats[? "dexterity"]= o_player_stats.stats[? "dexterity"]-4;$(13_10)		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)	if slot = 4 and o_character_screen.int_pool >= 5{$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.int_pool=o_character_screen.int_pool - 4;$(13_10)		o_player_stats.stats[? "intelligence"]= o_player_stats.stats[? "intelligence"]-4;$(13_10)		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)	if slot = 6 and o_character_screen.vit_pool >= 5{$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.vit_pool=o_character_screen.vit_pool - 4;$(13_10)		o_player_stats.stats[? "vitality"]= o_player_stats.stats[? "vitality"]-4;$(13_10)		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)// Add click events to add/remove stat points$(13_10)$(13_10)if click {$(13_10)$(13_10)	// For the ADD (1,3,5,7) slots, add a point if free stats are above zero, and subtract one stat point.$(13_10)	if o_player_stats.stats[? "statpoints"] > 0 {$(13_10)		if slot = 1 {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)			o_character_screen.str_pool++$(13_10)			o_player_stats.stats[? "strength"]++$(13_10)			o_player_stats.stats[? "statpoints"]--$(13_10)			audio_play_sound(clicksound, 9, false);$(13_10)$(13_10)		}$(13_10)	}$(13_10)	if o_player_stats.stats[? "statpoints"] > 0 {$(13_10)		if slot = 3 {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)			o_character_screen.dex_pool++$(13_10)			o_player_stats.stats[? "dexterity"]++$(13_10)			o_player_stats.stats[? "statpoints"]--$(13_10)			audio_play_sound(clicksound, 9, false);$(13_10)		}$(13_10)	}$(13_10)	if o_player_stats.stats[? "statpoints"] > 0 {$(13_10)		if slot = 5 {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)			o_character_screen.int_pool++$(13_10)			o_player_stats.stats[? "intelligence"]++$(13_10)			o_player_stats.stats[? "statpoints"]--$(13_10)			audio_play_sound(clicksound, 9, false);$(13_10)		}$(13_10)	}$(13_10)	if o_player_stats.stats[? "statpoints"] > 0 {$(13_10)		if slot = 7 {$(13_10)			draw_sprite(spr_add_stat_grey,0,x,y);$(13_10)			o_character_screen.vit_pool++$(13_10)			o_player_stats.stats[? "vitality"]++$(13_10)			o_player_stats.stats[? "statpoints"]--$(13_10)			audio_play_sound(clicksound, 9, false);$(13_10)		}$(13_10)	}$(13_10)	// For the REMOVE slots (0,2,4,6)$(13_10)	$(13_10)	if slot = 0 and o_character_screen.str_pool > 0{$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.str_pool--$(13_10)		o_player_stats.stats[? "strength"]--$(13_10)		o_player_stats.stats[? "statpoints"]++$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)	if slot = 2 and o_character_screen.dex_pool > 0{$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.dex_pool--$(13_10)		o_player_stats.stats[? "dexterity"]--$(13_10)		o_player_stats.stats[? "statpoints"]++$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)	if slot = 4 and o_character_screen.int_pool > 0 {$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.int_pool--$(13_10)		o_player_stats.stats[? "intelligence"]--$(13_10)		o_player_stats.stats[? "statpoints"]++$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)	if slot = 6 and o_character_screen.vit_pool > 0 {$(13_10)		draw_sprite(spr_remove_stat_grey,0,x,y); $(13_10)		o_character_screen.vit_pool--$(13_10)		o_player_stats.stats[? "vitality"]--$(13_10)		o_player_stats.stats[? "statpoints"]++$(13_10)		audio_play_sound(clicksound_remove, 9, false);$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)} else if showChar== false {$(13_10)$(13_10)o_character_screen.str_pool = 0;$(13_10)o_character_screen.dex_pool = 0;$(13_10)o_character_screen.int_pool = 0;$(13_10)o_character_screen.vit_pool = 0;$(13_10)$(13_10)$(13_10)$(13_10)}"
/// @description Execute Code
depth = -1;

var click = mouse_check_button_pressed(mb_left);
var shift = keyboard_check(vk_shift);
var clicksound = snd_pop;
var clicksound_remove = snd_bubble_blurb;
// Need pool numbers, if button clicked and statpoints >0, adds to the pool. 
// If pool >0, the REMOVE button becomes active for that stat. 
// Need a flag that makes the pools zero if the showInv ever becomes false.


if showChar == true {
// Draw thhe add and remove stat buttons
	draw_set_alpha(1);

	// Draw the remove buttons on the left
	if (slot = 0) { // FOR STR
		if o_character_screen.str_pool = 0 {
			draw_sprite(spr_remove_stat_grey,0,x,y); 
		}  else  {
			draw_sprite(spr_remove_stat,0,x,y); 
		}	
	}
	if (slot = 2) { // FOR DEX
	
		if o_character_screen.dex_pool = 0 {
			draw_sprite(spr_remove_stat_grey,0,x,y); 
		} else {
			draw_sprite(spr_remove_stat,0,x,y); 
		}	
	}
	
	if (slot = 4) {// FOR INT
		if o_character_screen.int_pool = 0 {
			draw_sprite(spr_remove_stat_grey,0,x,y); 
		} else {
			draw_sprite(spr_remove_stat,0,x,y); 
		}	
	}
	
	if (slot = 6) {// FOR VIT
		if o_character_screen.vit_pool = 0 {
			draw_sprite(spr_remove_stat_grey,0,x,y); 
		} else {
			draw_sprite(spr_remove_stat,0,x,y); 
		}
	}

	// Draw the add buttons on the right
	if (slot = 1) { // FOR STR

		if (o_player_stats.stats[? "statpoints"] <= 0) {
			draw_sprite(spr_add_stat_grey,0,x,y);
		} else { 
			draw_sprite(spr_add_stat,0,x,y);
		}			
	}
	if (slot = 3) { // FOR DEX

		if (o_player_stats.stats[? "statpoints"] <= 0) {
			draw_sprite(spr_add_stat_grey,0,x,y);
		} else { 
			draw_sprite(spr_add_stat,0,x,y);
		}			
	}
	if (slot = 5) { // FOR INT

		if (o_player_stats.stats[? "statpoints"] <= 0) {
			draw_sprite(spr_add_stat_grey,0,x,y);
		} else { 
			draw_sprite(spr_add_stat,0,x,y);
		}			
	}
	if (slot = 7) { // FOR VIT

		if (o_player_stats.stats[? "statpoints"] <= 0) {
			draw_sprite(spr_add_stat_grey,0,x,y);
		} else { 
			draw_sprite(spr_add_stat,0,x,y);
		}			
	}
}

//------------------------------------------------------------------------------------------
if (abs(mouse_x - x) < 11) && (abs(mouse_y - y) < 11) && showChar== true {
	draw_set_alpha(0.5);
	draw_set_color(c_yellow);
	draw_rectangle(x-11, y-11, x+10, y+10, 0);
	draw_set_alpha(1);
	draw_set_color(c_white);

//------------------------------------------------------------------------------------------
// DO THE SAME AS ABOVE BUT USE SHIFT + CLICK TO ADD/REMOVE 5 POINTS
// NOTE THAT IT ADDS 6 (if you use 5) CAUSE THE DANG CLICK EVENTS BELOW ADDS 1 
// SO YOU GOTTA USE NUMBER 4 TO MAKE UP FOR IT
// 1,3,5,7

if click and shift and o_player_stats.stats[? "statpoints"] >= 5 {
	
	// ADD EVENTS
	if slot = 1 {
		draw_sprite(spr_add_stat_grey,0,x,y);
		o_character_screen.str_pool=o_character_screen.str_pool+4;
		o_player_stats.stats[? "strength"]= o_player_stats.stats[? "strength"]+4;
		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"]-4;
		audio_play_sound(clicksound, 9, false);
	}
	if slot = 3 {
		draw_sprite(spr_add_stat_grey,0,x,y);
		o_character_screen.dex_pool=o_character_screen.dex_pool+4;
		o_player_stats.stats[? "dexterity"]= o_player_stats.stats[? "dexterity"]+4;
		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"]-4;
		audio_play_sound(clicksound, 9, false);
	}
	if slot = 5 {
		draw_sprite(spr_add_stat_grey,0,x,y);
		o_character_screen.int_pool=o_character_screen.int_pool+4;
		o_player_stats.stats[? "intelligence"]= o_player_stats.stats[? "intelligence"]+4;
		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"]-4;
		audio_play_sound(clicksound, 9, false);
	}
	if slot = 7 {
		draw_sprite(spr_add_stat_grey,0,x,y);
		o_character_screen.vit_pool=o_character_screen.vit_pool + 4;
		o_player_stats.stats[? "vitality"]= o_player_stats.stats[? "vitality"] + 4;
		o_player_stats.stats[? "statpoints"]=o_player_stats.stats[? "statpoints"] - 4;
		audio_play_sound(clicksound, 9, false);
	}


}

// SHIFT AND CLICK REMOVAL 5 PTS slots (0,2,4,6)

if click and shift {
	
	if slot = 0 and o_character_screen.str_pool >= 5{
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.str_pool=o_character_screen.str_pool - 4;
		o_player_stats.stats[? "strength"]= o_player_stats.stats[? "strength"]-4;
		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;
		audio_play_sound(clicksound_remove, 9, false);
	}
	if slot = 2 and o_character_screen.dex_pool >= 5{
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.dex_pool=o_character_screen.dex_pool - 4;
		o_player_stats.stats[? "dexterity"]= o_player_stats.stats[? "dexterity"]-4;
		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;
		audio_play_sound(clicksound_remove, 9, false);
	}
	if slot = 4 and o_character_screen.int_pool >= 5{
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.int_pool=o_character_screen.int_pool - 4;
		o_player_stats.stats[? "intelligence"]= o_player_stats.stats[? "intelligence"]-4;
		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;
		audio_play_sound(clicksound_remove, 9, false);
	}
	if slot = 6 and o_character_screen.vit_pool >= 5{
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.vit_pool=o_character_screen.vit_pool - 4;
		o_player_stats.stats[? "vitality"]= o_player_stats.stats[? "vitality"]-4;
		o_player_stats.stats[? "statpoints"]= o_player_stats.stats[? "statpoints"]+4;
		audio_play_sound(clicksound_remove, 9, false);
	}

}

// Add click events to add/remove stat points

if click {

	// For the ADD (1,3,5,7) slots, add a point if free stats are above zero, and subtract one stat point.
	if o_player_stats.stats[? "statpoints"] > 0 {
		if slot = 1 {
			draw_sprite(spr_add_stat_grey,0,x,y);
			o_character_screen.str_pool++
			o_player_stats.stats[? "strength"]++
			o_player_stats.stats[? "statpoints"]--
			audio_play_sound(clicksound, 9, false);

		}
	}
	if o_player_stats.stats[? "statpoints"] > 0 {
		if slot = 3 {
			draw_sprite(spr_add_stat_grey,0,x,y);
			o_character_screen.dex_pool++
			o_player_stats.stats[? "dexterity"]++
			o_player_stats.stats[? "statpoints"]--
			audio_play_sound(clicksound, 9, false);
		}
	}
	if o_player_stats.stats[? "statpoints"] > 0 {
		if slot = 5 {
			draw_sprite(spr_add_stat_grey,0,x,y);
			o_character_screen.int_pool++
			o_player_stats.stats[? "intelligence"]++
			o_player_stats.stats[? "statpoints"]--
			audio_play_sound(clicksound, 9, false);
		}
	}
	if o_player_stats.stats[? "statpoints"] > 0 {
		if slot = 7 {
			draw_sprite(spr_add_stat_grey,0,x,y);
			o_character_screen.vit_pool++
			o_player_stats.stats[? "vitality"]++
			o_player_stats.stats[? "statpoints"]--
			audio_play_sound(clicksound, 9, false);
		}
	}
	// For the REMOVE slots (0,2,4,6)
	
	if slot = 0 and o_character_screen.str_pool > 0{
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.str_pool--
		o_player_stats.stats[? "strength"]--
		o_player_stats.stats[? "statpoints"]++
		audio_play_sound(clicksound_remove, 9, false);
	}
	if slot = 2 and o_character_screen.dex_pool > 0{
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.dex_pool--
		o_player_stats.stats[? "dexterity"]--
		o_player_stats.stats[? "statpoints"]++
		audio_play_sound(clicksound_remove, 9, false);
	}
	if slot = 4 and o_character_screen.int_pool > 0 {
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.int_pool--
		o_player_stats.stats[? "intelligence"]--
		o_player_stats.stats[? "statpoints"]++
		audio_play_sound(clicksound_remove, 9, false);
	}
	if slot = 6 and o_character_screen.vit_pool > 0 {
		draw_sprite(spr_remove_stat_grey,0,x,y); 
		o_character_screen.vit_pool--
		o_player_stats.stats[? "vitality"]--
		o_player_stats.stats[? "statpoints"]++
		audio_play_sound(clicksound_remove, 9, false);
	}

}

} else if showChar== false {

o_character_screen.str_pool = 0;
o_character_screen.dex_pool = 0;
o_character_screen.int_pool = 0;
o_character_screen.vit_pool = 0;



}