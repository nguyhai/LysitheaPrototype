/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0ECD8447
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)sprite_index = spr_hornet;$(13_10)image_speed = 1;$(13_10)$(13_10)// Look for the player$(13_10)$(13_10)if (instance_exists (o_player)) {$(13_10)	var dis = point_distance (x, y, o_player.x, o_player.y);$(13_10)	$(13_10)	if (dis < sight) {$(13_10)		hstate = hornet_chase_state;$(13_10)	}$(13_10)}"
/// @description Execute Code\n

sprite_index = spr_hornet;
image_speed = 1;

// Look for the player

if (instance_exists (o_player)) {
	var dis = point_distance (x, y, o_player.x, o_player.y);
	
	if (dis < sight) {
		hstate = hornet_chase_state;
	}
}