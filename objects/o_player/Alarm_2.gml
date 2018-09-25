/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BAFF156
/// @DnDArgument : "code" "/// @description Alarm for attack script $(13_10)$(13_10)// For the atk script$(13_10)attacking = false;$(13_10)state = move_state;$(13_10)$(13_10)// We can also use this for ranged weapon types/name$(13_10)$(13_10)if global.inventory[63,5] = "Crystal Wand" {$(13_10)	//instance_create_depth(o_player.x, o_player.y, 0, o_wand_projectile);$(13_10)}$(13_10)$(13_10)if global.inventory[63,5] = "Aqua Staff" {$(13_10)	//instance_create_depth(o_player.x, o_player.y, 0, o_rifle_attack);$(13_10)}"
/// @description Alarm for attack script 

// For the atk script
attacking = false;
state = move_state;

// We can also use this for ranged weapon types/name

if global.inventory[63,5] = "Crystal Wand" {
	//instance_create_depth(o_player.x, o_player.y, 0, o_wand_projectile);
}

if global.inventory[63,5] = "Aqua Staff" {
	//instance_create_depth(o_player.x, o_player.y, 0, o_rifle_attack);
}