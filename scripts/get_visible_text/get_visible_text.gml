/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0183850A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// get_visible_text(pause_time)$(13_10)$(13_10)var pause_time = argument0;$(13_10)var new_string = string_copy(text[text_page], 1, text_count);$(13_10)$(13_10)if (string_length(new_string) > string_length(text_visible)){$(13_10)	// Check for the last key$(13_10)	var last_char = string_char_at (new_string, text_count);$(13_10)	$(13_10)	// Check for a pause$(13_10)	if (is_in_array(last_char, array(".", ",", "!", "?")) && text_count < string_length (text[text_page])){$(13_10)		alarm[0] = pause_time;$(13_10)	}$(13_10)	$(13_10)	// Set the visible text $(13_10)	text_visible = new_string;$(13_10)	$(13_10)	$(13_10)}"
/// @description Execute Code
// get_visible_text(pause_time)

var pause_time = argument0;
var new_string = string_copy(text[text_page], 1, text_count);

if (string_length(new_string) > string_length(text_visible)){
	// Check for the last key
	var last_char = string_char_at (new_string, text_count);
	
	// Check for a pause
	if (is_in_array(last_char, array(".", ",", "!", "?")) && text_count < string_length (text[text_page])){
		alarm[0] = pause_time;
	}
	
	// Set the visible text 
	text_visible = new_string;
	
	
}