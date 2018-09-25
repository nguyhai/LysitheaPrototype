/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 250B32BB
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)//if image_index > image_number - 1 instance_destroy()$(13_10)/*$(13_10)if (image_index == 6) {$(13_10)	with (other) {$(13_10)	var randomx = choose(-3,3);$(13_10)	var randomy = choose(-3,3);$(13_10)		if flashing = false {$(13_10)			instance_create_depth(x, y-12, 0, o_atk_pop);$(13_10)			hp -= round(o_atk_pop.totaldamage)$(13_10)			// If taking damage, enemy will need to be knocked back or stop for a bit, changed state$(13_10)			damaged = true;$(13_10)			alarm[0] = 10;$(13_10)			instance_create_depth(x+randomx,y+randomy,-1,o_crit_flare);$(13_10)		}$(13_10)$(13_10)}$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code\n

//if image_index > image_number - 1 instance_destroy()
/*
if (image_index == 6) {
	with (other) {
	var randomx = choose(-3,3);
	var randomy = choose(-3,3);
		if flashing = false {
			instance_create_depth(x, y-12, 0, o_atk_pop);
			hp -= round(o_atk_pop.totaldamage)
			// If taking damage, enemy will need to be knocked back or stop for a bit, changed state
			damaged = true;
			alarm[0] = 10;
			instance_create_depth(x+randomx,y+randomy,-1,o_crit_flare);
		}

}
}

/**/