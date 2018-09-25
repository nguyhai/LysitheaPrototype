/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F8CB976
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)sprite_index = spr_hornet_attack;$(13_10)image_speed = 2;$(13_10)$(13_10)if attacking = false {$(13_10)	with (instance_create_depth(x, y, 0, o_hornet_projectile))$(13_10)   {$(13_10)		direction = point_direction(x , y, o_player.x, o_player.y);$(13_10)		$(13_10)   }$(13_10)	attacking = true;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code

sprite_index = spr_hornet_attack;
image_speed = 2;

if attacking = false {
	with (instance_create_depth(x, y, 0, o_hornet_projectile))
   {
		direction = point_direction(x , y, o_player.x, o_player.y);
		
   }
	attacking = true;
}