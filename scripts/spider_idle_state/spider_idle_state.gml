/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DAC909C
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)if (instance_exists(o_player)){$(13_10)	var dis = distance_to_object(o_player);$(13_10)	$(13_10)	if (dis < sight && alarm[0] <=0){$(13_10)		image_speed = .5;$(13_10)		$(13_10)		//Make sure we face the player$(13_10)		//If our player's position is greater than the spider's, then that$(13_10)		//is going to return a 1, which will make us face the right, if less, it returns -1, which makes it face left$(13_10)		$(13_10)		if (o_player.x != x){$(13_10)			image_xscale = sign(o_player.x-x);$(13_10)		}$(13_10)	}$(13_10)}"

{
	/// @description Execute Code\n

if (instance_exists(o_player)){
	var dis = distance_to_object(o_player);
	
	if (dis < sight && alarm[0] <=0){
		image_speed = .5;
		
		//Make sure we face the player
		//If our player's position is greater than the spider's, then that
		//is going to return a 1, which will make us face the right, if less, it returns -1, which makes it face left
		
		if (o_player.x != x){
			image_xscale = sign(o_player.x-x);
		}
	}
}
}

