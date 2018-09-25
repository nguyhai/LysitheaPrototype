/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C554D6C
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)//Jump action - Takes abs value of horizontal speed and jumps$(13_10)if (state == spider_idle_state) {$(13_10)	if (instance_exists(o_player)){$(13_10)		hspd = sign(o_player.x-x)*spd;$(13_10)		vspd = -abs(hspd * 2);$(13_10)	}$(13_10)	horizontal_move_bounce(o_solid);$(13_10)	state = spider_jump_state;$(13_10)}$(13_10)"

{
	/// @description Execute Code\n

//Jump action - Takes abs value of horizontal speed and jumps
if (state == spider_idle_state) {
	if (instance_exists(o_player)){
		hspd = sign(o_player.x-x)*spd;
		vspd = -abs(hspd * 2);
	}
	horizontal_move_bounce(o_solid);
	state = spider_jump_state;
}

}

