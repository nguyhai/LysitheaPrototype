/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61E19ABB
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)get_visible_text (room_speed/3);$(13_10)$(13_10)// Handle Input$(13_10)$(13_10)if (keyboard_check_pressed(ord("Z"))){$(13_10)	var text_length = string_length (text[text_page]);$(13_10)	$(13_10)	if (text_count > text_length) {$(13_10)		// Go to the next page$(13_10)		text_page++;$(13_10)		text_count = 0;$(13_10)		text_visible = "";$(13_10)		if (text_page > array_length_1d(text) -1){$(13_10)			if (cutscene !=noone){$(13_10)				cutscene.action++;$(13_10)			}$(13_10)			instance_destroy();$(13_10)		}$(13_10)		$(13_10)	} else {$(13_10)		// Advance the count to the end of the text$(13_10)		text_count = text_length;$(13_10)		$(13_10)	}$(13_10)}"
/// @description Execute Code

get_visible_text (room_speed/3);

// Handle Input

if (keyboard_check_pressed(ord("Z"))){
	var text_length = string_length (text[text_page]);
	
	if (text_count > text_length) {
		// Go to the next page
		text_page++;
		text_count = 0;
		text_visible = "";
		if (text_page > array_length_1d(text) -1){
			if (cutscene !=noone){
				cutscene.action++;
			}
			instance_destroy();
		}
		
	} else {
		// Advance the count to the end of the text
		text_count = text_length;
		
	}
}