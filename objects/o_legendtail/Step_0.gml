/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67F4D68B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)image_alpha -= .01;$(13_10)$(13_10)if image_alpha <= 0.3 {$(13_10)	image_alpha = 1;$(13_10)	$(13_10)} $(13_10)$(13_10)if !place_meeting(x,y,o_itemdrop_parent){$(13_10)	instance_destroy();$(13_10)}"
/// @description Execute Code


image_alpha -= .01;

if image_alpha <= 0.3 {
	image_alpha = 1;
	
} 

if !place_meeting(x,y,o_itemdrop_parent){
	instance_destroy();
}