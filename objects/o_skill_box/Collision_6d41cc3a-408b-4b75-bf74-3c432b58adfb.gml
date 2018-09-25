/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43982FE9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// If there is a collision with skill object, then cast the skill that currently has a collision$(13_10)// Snap to grid - DONT overlap the skill when snapped$(13_10)// Skill object needs to be destroyed if dragged from skill tree and not snapped on a grid$(13_10)// If there is a collision:$(13_10)// Skillbar variable defined in the instance$(13_10)$(13_10)snapped = 1;$(13_10)skillsprite = other.sprite_index[0];$(13_10)other.image_alpha = 0;$(13_10)$(13_10)if (keyboard_check_pressed(ord("A")) and skillbar == 1 and other.cooldown == 0 and o_player.attacking == false){$(13_10)$(13_10)// Fix this so that it doesn't cast in the air, probably can fix it in the script$(13_10)$(13_10)	script_execute(use_skill);$(13_10)$(13_10)/*$(13_10)	if (other.ground == true and o_player.state == move_state){$(13_10)		if (o_player.vspd == 0 and other.cooldown == 0){$(13_10)$(13_10)			script_execute(use_skill);$(13_10)$(13_10)		}$(13_10)	}	else {$(13_10)		if o_player.vspd != 0{$(13_10)			script_execute(use_skill);$(13_10)		}$(13_10)	}$(13_10)	*/$(13_10)$(13_10)}$(13_10)if (keyboard_check_pressed(ord("S")) && skillbar = 2 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("D")) && skillbar = 3 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("F")) && skillbar = 4 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("Z")) && skillbar = 5 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("X")) && skillbar = 6 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("C")) && skillbar = 7 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("V")) && skillbar = 8 && other.cooldown = 0 and o_player.attacking == false){$(13_10)	script_execute(use_skill);$(13_10)}$(13_10)$(13_10)other.x = xstart + camera_get_view_x(view_camera[0])+16.5;$(13_10)other.y = ystart + camera_get_view_y(view_camera[0])+16.5;"
/// @description Execute Code

// If there is a collision with skill object, then cast the skill that currently has a collision
// Snap to grid - DONT overlap the skill when snapped
// Skill object needs to be destroyed if dragged from skill tree and not snapped on a grid
// If there is a collision:
// Skillbar variable defined in the instance

snapped = 1;
skillsprite = other.sprite_index[0];
other.image_alpha = 0;

if (keyboard_check_pressed(ord("A")) and skillbar == 1 and other.cooldown == 0 and o_player.attacking == false){

// Fix this so that it doesn't cast in the air, probably can fix it in the script

	script_execute(use_skill);

/*
	if (other.ground == true and o_player.state == move_state){
		if (o_player.vspd == 0 and other.cooldown == 0){

			script_execute(use_skill);

		}
	}	else {
		if o_player.vspd != 0{
			script_execute(use_skill);
		}
	}
	*/

}
if (keyboard_check_pressed(ord("S")) && skillbar = 2 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

if (keyboard_check_pressed(ord("D")) && skillbar = 3 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

if (keyboard_check_pressed(ord("F")) && skillbar = 4 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

if (keyboard_check_pressed(ord("Z")) && skillbar = 5 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

if (keyboard_check_pressed(ord("X")) && skillbar = 6 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

if (keyboard_check_pressed(ord("C")) && skillbar = 7 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

if (keyboard_check_pressed(ord("V")) && skillbar = 8 && other.cooldown = 0 and o_player.attacking == false){
	script_execute(use_skill);
}

other.x = xstart + camera_get_view_x(view_camera[0])+16.5;
other.y = ystart + camera_get_view_y(view_camera[0])+16.5;/**/