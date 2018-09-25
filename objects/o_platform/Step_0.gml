/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D2BEE8D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var jump = keyboard_check(vk_space);$(13_10)var down = keyboard_check(vk_down);$(13_10)$(13_10)if (instance_exists(o_player)) {$(13_10)$(13_10)	// If the Y coordinate of the player plus the half of the sprite height of the player (bottom pixel of player)$(13_10)	// is greater than our current Y coordinate, (meaning we are not in the collision)$(13_10)	if (round(o_player.y +(32)) > y) or (down and jump) { $(13_10)		mask_index = -1;$(13_10)	} else {$(13_10)		mask_index = spr_platform$(13_10)	}$(13_10)}"
/// @description Execute Code
var jump = keyboard_check(vk_space);
var down = keyboard_check(vk_down);

if (instance_exists(o_player)) {

	// If the Y coordinate of the player plus the half of the sprite height of the player (bottom pixel of player)
	// is greater than our current Y coordinate, (meaning we are not in the collision)
	if (round(o_player.y +(32)) > y) or (down and jump) { 
		mask_index = -1;
	} else {
		mask_index = spr_platform
	}
}