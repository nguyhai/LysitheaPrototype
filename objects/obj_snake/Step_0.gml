/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66BB4AF1
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)if just_spawned = true {$(13_10)	alarm[1] = 1;$(13_10)	alarm[2] = room_speed * 3;$(13_10)	just_spawned = false;$(13_10)}$(13_10)$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if (o_game_state.switches[? "quest_kill_snakes_started"] == true && hp <= 0){$(13_10)	o_game_state.snakes_killed ++;$(13_10)}$(13_10)$(13_10)script_execute(state);$(13_10)$(13_10)if (hp <= 0){$(13_10)	instance_destroy();$(13_10)	o_player_stats.stats[? "experience"] +=5;$(13_10)}$(13_10)$(13_10)// Flash different colors when hit$(13_10)if damaged = true {$(13_10)	image_blend = choose(c_red, c_white)$(13_10)}$(13_10)$(13_10)if damaged =false {$(13_10)	image_blend = c_white;$(13_10)}$(13_10)$(13_10)move(o_solid);$(13_10)direction_move_bounce(o_solid);$(13_10)horizontal_move_bounce(o_solid);"
/// @description Execute Code\n

if just_spawned = true {
	alarm[1] = 1;
	alarm[2] = room_speed * 3;
	just_spawned = false;
}

if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
	
}


if (o_game_state.switches[? "quest_kill_snakes_started"] == true && hp <= 0){
	o_game_state.snakes_killed ++;
}

script_execute(state);

if (hp <= 0){
	instance_destroy();
	o_player_stats.stats[? "experience"] +=5;
}

// Flash different colors when hit
if damaged = true {
	image_blend = choose(c_red, c_white)
}

if damaged =false {
	image_blend = c_white;
}

move(o_solid);
direction_move_bounce(o_solid);
horizontal_move_bounce(o_solid);