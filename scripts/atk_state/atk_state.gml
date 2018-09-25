/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46D63ADF
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)if global.inventory[63,23] == -1 {$(13_10)	if !attacking {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)	if (!place_meeting (x, y+1, o_solid)) {$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 4;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y+5, 0, o_punch);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 0;$(13_10)		image_speed = 1.5;$(13_10)		attacking = true;$(13_10)		alarm[2] = 20;$(13_10)		instance_create_depth(o_player.x, o_player.y+5, 0, choose(o_punch));$(13_10)	}	$(13_10)	} $(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Sword" {$(13_10)	if !attacking {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 4;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_atk1);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk, spr_atk1);$(13_10)		image_index = 0;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 13;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk, o_atk1, o_atk2));$(13_10)	}	$(13_10)	} $(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Bow" {$(13_10)$(13_10)if arrows > 0 {$(13_10)	if !attacking {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk_bow);$(13_10)		image_index = 0;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_bow_attack);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		arrows -= 1;$(13_10)		if arrows = 0 {$(13_10)			alarm[8] = room_speed *1.5$(13_10)		}$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk_bow);$(13_10)		image_index = 0;$(13_10)		image_speed = 1;$(13_10)		attacking = true;$(13_10)		alarm[2] = 13;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, choose(o_bow_attack));$(13_10)		arrows -= 1;$(13_10)		if arrows = 0 {$(13_10)			alarm[8] = room_speed *1.5$(13_10)		}$(13_10)		$(13_10)	}	$(13_10)	} $(13_10)} else if arrows = 0 {$(13_10)	$(13_10)	state = move_state;$(13_10)}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Rifle" {$(13_10)$(13_10)if bullets > 0 {$(13_10)	if !attacking {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk_gun);$(13_10)		image_index = 0;$(13_10)		image_speed = 1;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_rifle_attack);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		bullets -= 1;$(13_10)		if bullets = 0 {$(13_10)			alarm[8] = room_speed *1.5$(13_10)		}$(13_10)		$(13_10)	} else {$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk_gun);$(13_10)		image_index = 0;$(13_10)		image_speed = 0.75;$(13_10)		attacking = true;$(13_10)		alarm[2] = 20;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, choose(o_rifle_attack));$(13_10)		bullets -= 1;$(13_10)		if bullets = 0 {$(13_10)			alarm[8] = room_speed *1.5$(13_10)		}$(13_10)		$(13_10)	}	$(13_10)	} $(13_10)} else if bullets = 0 {$(13_10)	$(13_10)	state = move_state;$(13_10)}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Wand" {$(13_10)$(13_10)	if !attacking {$(13_10)	$(13_10)		if o_player_stats.stats[? "mana"]  > (o_player_stats.stats[? "maxmana"]*.01) {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk_wand);$(13_10)		image_index = 0;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 10;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_wand_attack);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_wand_projectile);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.01);$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk_wand);$(13_10)		image_index = 0;$(13_10)		image_speed = 1.5;$(13_10)		attacking = true;$(13_10)		alarm[2] = 20;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_wand_attack);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_wand_projectile);$(13_10)		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.01);$(13_10)	}	$(13_10)	$(13_10)	} else {$(13_10)	$(13_10)		if (!place_meeting (x, y+1, o_solid)) {$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 4;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y+5, 0, o_punch);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 0;$(13_10)		image_speed = 1.5;$(13_10)		attacking = true;$(13_10)		alarm[2] = 20;$(13_10)		instance_create_depth(o_player.x, o_player.y+5, 0, choose(o_punch));$(13_10)	}	$(13_10)$(13_10)	$(13_10)	}$(13_10)	$(13_10)	$(13_10)	} $(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Staff" {$(13_10)$(13_10)	if !attacking {$(13_10)		$(13_10)		if o_player_stats.stats[? "mana"]  > (o_player_stats.stats[? "maxmana"]*.02) {$(13_10)		$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk_staff);$(13_10)		image_index = 5;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 10;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_staff_attack);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_staff_projectile);$(13_10)		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.02);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else {$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk_staff);$(13_10)		image_index = 5;$(13_10)		image_speed = 1;$(13_10)		attacking = true;$(13_10)		alarm[2] = 30;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_staff_attack);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_staff_projectile);$(13_10)		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.02);$(13_10)	}	$(13_10)	} else {$(13_10)	$(13_10)		if (!place_meeting (x, y+1, o_solid)) {$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 4;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y+5, 0, o_punch);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk);$(13_10)		image_index = 0;$(13_10)		image_speed = 1.5;$(13_10)		attacking = true;$(13_10)		alarm[2] = 20;$(13_10)		instance_create_depth(o_player.x, o_player.y+5, 0, choose(o_punch));$(13_10)	}	$(13_10)$(13_10)	}$(13_10)$(13_10)	$(13_10)} $(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Bracer" {$(13_10)$(13_10)	if !attacking {$(13_10)$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = choose(spr_atk_bracer);$(13_10)		image_index = 5;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 10;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_attack);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_projectile);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else {$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = choose(spr_atk_bracer);$(13_10)		image_index = 5;$(13_10)		image_speed = 1.5;$(13_10)		attacking = true;$(13_10)		alarm[2] = 12;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_attack);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_projectile);$(13_10)	}	$(13_10)	} $(13_10)$(13_10)} $(13_10)$(13_10)$(13_10)if global.inventory[63,23] == "2H Sword" {$(13_10)	if !attacking {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = spr_atk_2h_sword;$(13_10)		image_index = 3;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_atk_2h);$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_atk_2h1);$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = spr_atk_2h_sword ;$(13_10)		image_index = 0;$(13_10)		image_speed = .8;$(13_10)		attacking = true;$(13_10)		alarm[2] = 25;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk_2h));$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk_2h1));$(13_10)	}	$(13_10)	} $(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Dagger" {$(13_10)	if !attacking {$(13_10)	$(13_10)		// Note to self - you should make the ground and air attack completely seperate$(13_10)		// The air attack should be a weaker normal attack$(13_10)		$(13_10)		if (!place_meeting (x, y+1, o_solid)){$(13_10)		vspd += grav;$(13_10)		//sprite_index = spr_atk;$(13_10)		sprite_index = spr_atk_dagger;$(13_10)		image_index = 3;$(13_10)		image_speed = 2;$(13_10)		attacking = true;$(13_10)		alarm[2] = 5;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, o_atk_dagger2);$(13_10)$(13_10)		airatk -= 1; // Number of air attacks decreases by 1$(13_10)		$(13_10)	} else{$(13_10)		vspd = 0;$(13_10)		apply_friction(acc);$(13_10)		sprite_index = spr_atk_dagger ;$(13_10)		image_index = 0;$(13_10)		image_speed = 1.5;$(13_10)		attacking = true;$(13_10)		alarm[2] = 10;$(13_10)		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk_dagger1, o_atk_dagger2));$(13_10)$(13_10)	}	$(13_10)	} $(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n
if global.inventory[63,23] == -1 {
	if !attacking {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
	if (!place_meeting (x, y+1, o_solid)) {
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk);
		image_index = 4;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y+5, 0, o_punch);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk);
		image_index = 0;
		image_speed = 1.5;
		attacking = true;
		alarm[2] = 20;
		instance_create_depth(o_player.x, o_player.y+5, 0, choose(o_punch));
	}	
	} 


}

if global.inventory[63,23] == "Sword" {
	if !attacking {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk);
		image_index = 4;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y, 0, o_atk1);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk, spr_atk1);
		image_index = 0;
		image_speed = 2;
		attacking = true;
		alarm[2] = 13;
		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk, o_atk1, o_atk2));
	}	
	} 
}

if global.inventory[63,23] == "Bow" {

if arrows > 0 {
	if !attacking {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk_bow);
		image_index = 0;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y, 0, o_bow_attack);
		airatk -= 1; // Number of air attacks decreases by 1
		arrows -= 1;
		if arrows = 0 {
			alarm[8] = room_speed *1.5
		}
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk_bow);
		image_index = 0;
		image_speed = 1;
		attacking = true;
		alarm[2] = 13;
		instance_create_depth(o_player.x, o_player.y, 0, choose(o_bow_attack));
		arrows -= 1;
		if arrows = 0 {
			alarm[8] = room_speed *1.5
		}
		
	}	
	} 
} else if arrows = 0 {
	
	state = move_state;
}


}

if global.inventory[63,23] == "Rifle" {

if bullets > 0 {
	if !attacking {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk_gun);
		image_index = 0;
		image_speed = 1;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y, 0, o_rifle_attack);
		airatk -= 1; // Number of air attacks decreases by 1
		bullets -= 1;
		if bullets = 0 {
			alarm[8] = room_speed *1.5
		}
		
	} else {
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk_gun);
		image_index = 0;
		image_speed = 0.75;
		attacking = true;
		alarm[2] = 20;
		instance_create_depth(o_player.x, o_player.y, 0, choose(o_rifle_attack));
		bullets -= 1;
		if bullets = 0 {
			alarm[8] = room_speed *1.5
		}
		
	}	
	} 
} else if bullets = 0 {
	
	state = move_state;
}


}

if global.inventory[63,23] == "Wand" {

	if !attacking {
	
		if o_player_stats.stats[? "mana"]  > (o_player_stats.stats[? "maxmana"]*.01) {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk_wand);
		image_index = 0;
		image_speed = 2;
		attacking = true;
		alarm[2] = 10;
		instance_create_depth(o_player.x, o_player.y, 0, o_wand_attack);
		instance_create_depth(o_player.x, o_player.y, 0, o_wand_projectile);
		airatk -= 1; // Number of air attacks decreases by 1
		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.01);
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk_wand);
		image_index = 0;
		image_speed = 1.5;
		attacking = true;
		alarm[2] = 20;
		instance_create_depth(o_player.x, o_player.y, 0, o_wand_attack);
		instance_create_depth(o_player.x, o_player.y, 0, o_wand_projectile);
		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.01);
	}	
	
	} else {
	
		if (!place_meeting (x, y+1, o_solid)) {
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk);
		image_index = 4;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y+5, 0, o_punch);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk);
		image_index = 0;
		image_speed = 1.5;
		attacking = true;
		alarm[2] = 20;
		instance_create_depth(o_player.x, o_player.y+5, 0, choose(o_punch));
	}	

	
	}
	
	
	} 
}

if global.inventory[63,23] == "Staff" {

	if !attacking {
		
		if o_player_stats.stats[? "mana"]  > (o_player_stats.stats[? "maxmana"]*.02) {
		
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk_staff);
		image_index = 5;
		image_speed = 2;
		attacking = true;
		alarm[2] = 10;
		instance_create_depth(o_player.x, o_player.y, 0, o_staff_attack);
		instance_create_depth(o_player.x, o_player.y, 0, o_staff_projectile);
		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.02);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else {
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk_staff);
		image_index = 5;
		image_speed = 1;
		attacking = true;
		alarm[2] = 30;
		instance_create_depth(o_player.x, o_player.y, 0, o_staff_attack);
		instance_create_depth(o_player.x, o_player.y, 0, o_staff_projectile);
		o_player_stats.stats[? "mana"]  =  o_player_stats.stats[? "mana"] - (o_player_stats.stats[? "maxmana"]*.02);
	}	
	} else {
	
		if (!place_meeting (x, y+1, o_solid)) {
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk);
		image_index = 4;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y+5, 0, o_punch);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk);
		image_index = 0;
		image_speed = 1.5;
		attacking = true;
		alarm[2] = 20;
		instance_create_depth(o_player.x, o_player.y+5, 0, choose(o_punch));
	}	

	}

	
} 
}

if global.inventory[63,23] == "Bracer" {

	if !attacking {

		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = choose(spr_atk_bracer);
		image_index = 5;
		image_speed = 2;
		attacking = true;
		alarm[2] = 10;
		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_attack);
		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_projectile);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else {
		vspd = 0;
		apply_friction(acc);
		sprite_index = choose(spr_atk_bracer);
		image_index = 5;
		image_speed = 1.5;
		attacking = true;
		alarm[2] = 12;
		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_attack);
		instance_create_depth(o_player.x, o_player.y, 0, o_bracer_projectile);
	}	
	} 

} 


if global.inventory[63,23] == "2H Sword" {
	if !attacking {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = spr_atk_2h_sword;
		image_index = 3;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y, 0, o_atk_2h);
		instance_create_depth(o_player.x, o_player.y, 0, o_atk_2h1);
		airatk -= 1; // Number of air attacks decreases by 1
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = spr_atk_2h_sword ;
		image_index = 0;
		image_speed = .8;
		attacking = true;
		alarm[2] = 25;
		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk_2h));
		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk_2h1));
	}	
	} 
}

if global.inventory[63,23] == "Dagger" {
	if !attacking {
	
		// Note to self - you should make the ground and air attack completely seperate
		// The air attack should be a weaker normal attack
		
		if (!place_meeting (x, y+1, o_solid)){
		vspd += grav;
		//sprite_index = spr_atk;
		sprite_index = spr_atk_dagger;
		image_index = 3;
		image_speed = 2;
		attacking = true;
		alarm[2] = 5;
		instance_create_depth(o_player.x, o_player.y, 0, o_atk_dagger2);

		airatk -= 1; // Number of air attacks decreases by 1
		
	} else{
		vspd = 0;
		apply_friction(acc);
		sprite_index = spr_atk_dagger ;
		image_index = 0;
		image_speed = 1.5;
		attacking = true;
		alarm[2] = 10;
		instance_create_depth(o_player.x, o_player.y, 0, choose(o_atk_dagger1, o_atk_dagger2));

	}	
	} 
}