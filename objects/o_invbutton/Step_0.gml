/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 639475BF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//$(13_10)$(13_10)$(13_10)// Alpha goes up if mouse pointer is inside a box$(13_10)if alpha <= 0.4 and inside_box = true{$(13_10)	alpha += .05;$(13_10)} $(13_10)$(13_10)// If not inside a box, alpha fades to zero$(13_10)if inside_box = false {$(13_10)	alpha = 0;$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

//


// Alpha goes up if mouse pointer is inside a box
if alpha <= 0.4 and inside_box = true{
	alpha += .05;
} 

// If not inside a box, alpha fades to zero
if inside_box = false {
	alpha = 0;
}