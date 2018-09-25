/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D07AB94
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)if just_spawned = true {$(13_10)	alarm[1] = 1;$(13_10)	alarm[2] = room_speed * 3;$(13_10)	just_spawned = false;$(13_10)}$(13_10)$(13_10)if (hp <= 0){$(13_10)	instance_destroy();$(13_10)	o_player_stats.stats[? "experience"] +=20;$(13_10)}$(13_10)$(13_10)if damaged = true {$(13_10)	image_blend = choose(c_red, c_white)$(13_10)	hstate = hornet_chase_state;$(13_10)}$(13_10)$(13_10)if damaged =false {$(13_10)	image_blend = c_white;$(13_10)}$(13_10)script_execute(hstate);$(13_10)move(o_solid);$(13_10)$(13_10)"
/// @description Execute Code\n
if just_spawned = true {
	alarm[1] = 1;
	alarm[2] = room_speed * 3;
	just_spawned = false;
}

if (hp <= 0){
	instance_destroy();
	o_player_stats.stats[? "experience"] +=20;
}

if damaged = true {
	image_blend = choose(c_red, c_white)
	hstate = hornet_chase_state;
}

if damaged =false {
	image_blend = c_white;
}
script_execute(hstate);
move(o_solid);