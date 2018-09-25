/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0FB18155
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//format_text(text_array, width, font)$(13_10)var text = argument0;$(13_10)var width = argument1;$(13_10)var font = argument2;$(13_10)$(13_10)// Set the font$(13_10)$(13_10)draw_set_font(font);$(13_10)$(13_10)// Get the number of pages$(13_10)var array_size = array_length_1d(text);$(13_10)// Keep track of last space we encounter - if we exceed the width, we will jump back to space and add a return$(13_10)// so that it jumps to next line$(13_10)var last_space = 0;$(13_10)$(13_10)// Loop through the pages$(13_10)$(13_10)for (var i=0; i<array_size; i++) {$(13_10)	// Set count to zero - count is our current position in our text$(13_10)	// If we go to next page, we gotta set it back to zero$(13_10)	var count = 0;$(13_10)	$(13_10)	// Loop through the characters - the @ references the actual array that we pass in$(13_10)	var char = string_char_at(text[@ i], count);$(13_10)	while (char !="") {$(13_10)		var str string_copy(text[i], 1, count);$(13_10)		var str_width string_width(str);$(13_10)		//Update the last space$(13_10)		if (char == " "){$(13_10)			last_space = count;$(13_10)		}$(13_10)		$(13_10)		//Check the width$(13_10)		if (str_width > width){$(13_10)			//Remove the space$(13_10)			text[@ i] = string_delete(text[i], last_space, 1);$(13_10)			text[@ i] = string_insert("#", text[i], last_space);$(13_10)			$(13_10)		}$(13_10)		$(13_10)		// Increment count$(13_10)		count++;$(13_10)		char = string_char_at(text[@ i], count);$(13_10)$(13_10)	}$(13_10)}$(13_10)$(13_10)return text;$(13_10)"
/// @description Execute Code

//format_text(text_array, width, font)
var text = argument0;
var width = argument1;
var font = argument2;

// Set the font

draw_set_font(font);

// Get the number of pages
var array_size = array_length_1d(text);
// Keep track of last space we encounter - if we exceed the width, we will jump back to space and add a return
// so that it jumps to next line
var last_space = 0;

// Loop through the pages

for (var i=0; i<array_size; i++) {
	// Set count to zero - count is our current position in our text
	// If we go to next page, we gotta set it back to zero
	var count = 0;
	
	// Loop through the characters - the @ references the actual array that we pass in
	var char = string_char_at(text[@ i], count);
	while (char !="") {
		var str string_copy(text[i], 1, count);
		var str_width string_width(str);
		//Update the last space
		if (char == " "){
			last_space = count;
		}
		
		//Check the width
		if (str_width > width){
			//Remove the space
			text[@ i] = string_delete(text[i], last_space, 1);
			text[@ i] = string_insert("#", text[i], last_space);
			
		}
		
		// Increment count
		count++;
		char = string_char_at(text[@ i], count);

	}
}

return text;