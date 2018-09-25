/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 387E3BB8
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)if (instance_exists (o_player)){$(13_10)	var dir = point_direction (x, y, o_player.x, o_player.y);$(13_10)	$(13_10)	// Take the point direction and convert it to an x and y values that we can use as hspd and vspd$(13_10)	hspd = lengthdir_x (spd, dir);$(13_10)	vspd = lengthdir_y (spd, dir);$(13_10)	$(13_10)	// Change to the flying sprite$(13_10)	sprite_index = spr_hornet;$(13_10)	image_speed = 1;$(13_10)	$(13_10)	// Face the right direction$(13_10)	if (hspd != 0){$(13_10)		image_xscale = sign(hspd);$(13_10)	}$(13_10)	$(13_10)	// Move$(13_10)	move(o_solid);$(13_10)	$(13_10)	if (instance_exists (o_player)) {$(13_10)	var dis = point_distance (x, y, o_player.x, o_player.y);$(13_10)	$(13_10)	if (dis < 280) {$(13_10)		hstate = hornet_attack_state;$(13_10)		alarm[4] = room_speed * 2;$(13_10)	}$(13_10)}$(13_10)	$(13_10)	$(13_10)	$(13_10)}"
/// @description Execute Code\n

if (instance_exists (o_player)){
	var dir = point_direction (x, y, o_player.x, o_player.y);
	
	// Take the point direction and convert it to an x and y values that we can use as hspd and vspd
	hspd = lengthdir_x (spd, dir);
	vspd = lengthdir_y (spd, dir);
	
	// Change to the flying sprite
	sprite_index = spr_hornet;
	image_speed = 1;
	
	// Face the right direction
	if (hspd != 0){
		image_xscale = sign(hspd);
	}
	
	// Move
	move(o_solid);
	
	if (instance_exists (o_player)) {
	var dis = point_distance (x, y, o_player.x, o_player.y);
	
	if (dis < 280) {
		hstate = hornet_attack_state;
		alarm[4] = room_speed * 2;
	}
}
	
	
	
}