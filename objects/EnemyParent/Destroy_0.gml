/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BEDDC81
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)// Spray blood everywhere if enemy dies$(13_10)repeat (irandom_range(4, 7)){$(13_10)	// Create within an area$(13_10)	var rand_x = irandom_range(-4, 4);$(13_10)	var rand_y = irandom_range(-4, 4);$(13_10)	instance_create_layer(x +rand_x, y+rand_y,"Instances",  Blood);$(13_10)}"
/// @description Execute Code\n

// Spray blood everywhere if enemy dies
repeat (irandom_range(4, 7)){
	// Create within an area
	var rand_x = irandom_range(-4, 4);
	var rand_y = irandom_range(-4, 4);
	instance_create_layer(x +rand_x, y+rand_y,"Instances",  Blood);
}