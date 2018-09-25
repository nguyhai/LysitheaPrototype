/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5302E27F
/// @DnDArgument : "code" "$(13_10)// If gold sell amount doesnt exist, make the object$(13_10)if !instance_exists(o_item_sold_gold_amt) {$(13_10)	instance_create_depth(o_player.x,o_player.y-120, 0,o_item_sold_gold_amt);$(13_10)}$(13_10)$(13_10)o_item_sold_gold_amt.timer = 0;$(13_10)		"

// If gold sell amount doesnt exist, make the object
if !instance_exists(o_item_sold_gold_amt) {
	instance_create_depth(o_player.x,o_player.y-120, 0,o_item_sold_gold_amt);
}

o_item_sold_gold_amt.timer = 0;