/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36B31324
/// @DnDArgument : "code" "/// Code for stats$(13_10)// Calculate the total of all equipped stats$(13_10)$(13_10)$(13_10)if instance_exists(o_player) {$(13_10)	// If the game just started, set character HP and MP to MAX$(13_10)	if game_started = true {$(13_10)		alarm[3] = 1;$(13_10)		game_started = false;$(13_10)	}$(13_10)	// Calculate the total stats$(13_10)	min_dmg = round(scr_calc_min_dmg())-1;$(13_10)	max_dmg = round(scr_calc_max_dmg())-1;$(13_10)	equip_dmg = scr_calc_equip_dmg();$(13_10)	equip_str = scr_calc_equip_str();$(13_10)	equip_dex = scr_calc_equip_dex();$(13_10)	equip_int = scr_calc_equip_intel();$(13_10)	equip_vit = scr_calc_equip_vit();$(13_10)	equip_def = scr_calc_equip_defense();$(13_10)	equip_crit = scr_calc_equip_crit();$(13_10)	equip_evade = scr_calc_equip_evade();$(13_10)	totalexduration = stats[? "exduration"] + scr_calc_exduration_from_vit();$(13_10)	$(13_10)	// Total crit from equip, player stat, and from dex bonus$(13_10)	totalcrit = equip_crit + stats[? "critical"] + scr_crit_from_dex(); $(13_10)	totalevade = stats[? "evasion"]+ scr_evade_from_dex()+ equip_evade;$(13_10)	$(13_10)	// Calculate the total HP/MP REGEN$(13_10)	hpregen = stats[? "hpregen"] + scr_calc_hp_regen() + scr_calc_equip_regen();$(13_10)	mpregen = stats[? "mpregen"] + scr_calc_mp_regen() + scr_calc_equip_regen(); $(13_10)	$(13_10)$(13_10)	// Code HP and MP regen$(13_10)	// If HP is less than the max, then recover every 30 seconds$(13_10)	restore_hp_percent = hpregen / 100;$(13_10)	restore_hp_amount = round(restore_hp_percent * stats[? "maxhealth"]);$(13_10)	$(13_10)	restore_mp_percent = mpregen / 100;$(13_10)	restore_mp_amount = round(restore_mp_percent * stats[? "maxmana"]);$(13_10)$(13_10)	$(13_10)	// THIS IS FOR HP REGEN - RECOVERY EVERY 15 seconds$(13_10)	if regen_heal = false  and (stats[? "health"] < stats[? "maxhealth"]){$(13_10)		regen_heal = true;$(13_10)		alarm[0] = room_speed*14;$(13_10)	}$(13_10)	$(13_10)	// THIS IS FOR HP REGEN - RECOVERY EVERY 15 seconds$(13_10)	if regen_mana_heal = false  and (stats[? "mana"] < stats[? "maxmana"]){$(13_10)		regen_mana_heal = true;$(13_10)		alarm[1] = room_speed*12;$(13_10)	}		$(13_10)	$(13_10)	// SET MP TO MAX MP IF IT GOES OVER$(13_10)	// SET HP TO MAX HP IF IT GOES OVER$(13_10)	if stats[? "health"] > stats[? "maxhealth"] {$(13_10)		stats[? "health"] = stats[? "maxhealth"];$(13_10)	}$(13_10)	if stats[? "mana"] > stats[? "maxmana"] {$(13_10)		stats[? "mana"] = stats[? "maxmana"];$(13_10)	}$(13_10)	$(13_10)	//When HP = 0 YOU DIE.$(13_10)	$(13_10)	if (stats[? "health"]) <=0 and deathflag = false {$(13_10)		stats[? "health"] = 0;$(13_10)		sprite_index = spr_death;$(13_10)		image_speed = 1;$(13_10)		o_player.state = death_state;$(13_10)		deathflag = true;$(13_10)		alarm[4]=room_speed * 3;$(13_10)		// Prevent leveling up when dead$(13_10)		stats[? "experience"] = 0;$(13_10)	$(13_10)	}$(13_10)	$(13_10)	// Health is the player HP plus the HP bonus from the VIT stat, Need to use this function so it doesnt heal$(13_10)	stats[? "maxhealth"] = round(calculate_health(level, class[? "health"])+ scr_calc_hp_from_vit());$(13_10)	stats[? "maxmana"] = round(calculate_mana(level, class[? "mana"])+ scr_calc_mp_from_int());$(13_10)$(13_10)$(13_10)	// Player speed based on equipped boots$(13_10)	o_player.spd = scr_calc_boot_speed(o_player.basespd);$(13_10)}$(13_10)$(13_10)// Check for level-up$(13_10)// Max Experience is when you hit it, you level up$(13_10)if (stats[? "experience"] >= stats[? "maxexperience"]) and deathflag = false {$(13_10)	// Update the stats$(13_10)	// Add one to the level$(13_10)	level++;$(13_10)	instance_create_depth(o_player.x, o_player.y-20, 1, o_levelup);$(13_10)	$(13_10)	// Experience will be experience minus the max experience$(13_10)	stats [? "experience"] = stats[? "experience"] - stats[? "maxexperience"];$(13_10)	// The max experience will be the level times 10$(13_10)	stats [? "maxexperience"] = level * 10;$(13_10)	$(13_10)	// Class health is the base health. $(13_10)	stats[? "health"] = round(calculate_health(level, class[? "health"])+ scr_calc_hp_from_vit());$(13_10)	// Set the max health to the new health after level up$(13_10) 	stats[? "maxhealth"] = round(stats[? "health"]);$(13_10)$(13_10)	$(13_10)	stats[? "mana"] = calculate_mana(level, class[? "mana"])+ scr_calc_mp_from_int();$(13_10)	stats[? "maxmana"] = round(stats[? "mana"]);$(13_10)	$(13_10)	stats[? "attack"] = calculate_attack(level, class[? "attack"]);$(13_10)	stats[? "maxattack"] = stats[? "attack"];	$(13_10)	$(13_10)	stats[? "defense"] = calculate_defense(level, class[? "defense"]);$(13_10)	stats[? "maxdefense"] = stats[? "defense"];	$(13_10)		$(13_10)	stats[? "critical"] = calculate_critical(level, class[? "critical"]);$(13_10)	stats[? "maxcritical"] = stats[? "critical"];	$(13_10)	$(13_10)	stats[? "evasion"] = calculate_evasion(level, class[? "evasion"]);$(13_10)	stats[? "maxevasion"] = stats[? "evasion"];	$(13_10)	$(13_10)	stats[? "skillpoints"] ++$(13_10)	stats[? "statpoints"] += 5;$(13_10)	$(13_10)}"
/// Code for stats
// Calculate the total of all equipped stats


if instance_exists(o_player) {
	// If the game just started, set character HP and MP to MAX
	if game_started = true {
		alarm[3] = 1;
		game_started = false;
	}
	// Calculate the total stats
	min_dmg = round(scr_calc_min_dmg())-1;
	max_dmg = round(scr_calc_max_dmg())-1;
	equip_dmg = scr_calc_equip_dmg();
	equip_str = scr_calc_equip_str();
	equip_dex = scr_calc_equip_dex();
	equip_int = scr_calc_equip_intel();
	equip_vit = scr_calc_equip_vit();
	equip_def = scr_calc_equip_defense();
	equip_crit = scr_calc_equip_crit();
	equip_evade = scr_calc_equip_evade();
	totalexduration = stats[? "exduration"] + scr_calc_exduration_from_vit();
	
	// Total crit from equip, player stat, and from dex bonus
	totalcrit = equip_crit + stats[? "critical"] + scr_crit_from_dex(); 
	totalevade = stats[? "evasion"]+ scr_evade_from_dex()+ equip_evade;
	
	// Calculate the total HP/MP REGEN
	hpregen = stats[? "hpregen"] + scr_calc_hp_regen() + scr_calc_equip_regen();
	mpregen = stats[? "mpregen"] + scr_calc_mp_regen() + scr_calc_equip_regen(); 
	

	// Code HP and MP regen
	// If HP is less than the max, then recover every 30 seconds
	restore_hp_percent = hpregen / 100;
	restore_hp_amount = round(restore_hp_percent * stats[? "maxhealth"]);
	
	restore_mp_percent = mpregen / 100;
	restore_mp_amount = round(restore_mp_percent * stats[? "maxmana"]);

	
	// THIS IS FOR HP REGEN - RECOVERY EVERY 15 seconds
	if regen_heal = false  and (stats[? "health"] < stats[? "maxhealth"]){
		regen_heal = true;
		alarm[0] = room_speed*14;
	}
	
	// THIS IS FOR HP REGEN - RECOVERY EVERY 15 seconds
	if regen_mana_heal = false  and (stats[? "mana"] < stats[? "maxmana"]){
		regen_mana_heal = true;
		alarm[1] = room_speed*12;
	}		
	
	// SET MP TO MAX MP IF IT GOES OVER
	// SET HP TO MAX HP IF IT GOES OVER
	if stats[? "health"] > stats[? "maxhealth"] {
		stats[? "health"] = stats[? "maxhealth"];
	}
	if stats[? "mana"] > stats[? "maxmana"] {
		stats[? "mana"] = stats[? "maxmana"];
	}
	
	//When HP = 0 YOU DIE.
	
	if (stats[? "health"]) <=0 and deathflag = false {
		stats[? "health"] = 0;
		sprite_index = spr_death;
		image_speed = 1;
		o_player.state = death_state;
		deathflag = true;
		alarm[4]=room_speed * 3;
		// Prevent leveling up when dead
		stats[? "experience"] = 0;
	
	}
	
	// Health is the player HP plus the HP bonus from the VIT stat, Need to use this function so it doesnt heal
	stats[? "maxhealth"] = round(calculate_health(level, class[? "health"])+ scr_calc_hp_from_vit());
	stats[? "maxmana"] = round(calculate_mana(level, class[? "mana"])+ scr_calc_mp_from_int());


	// Player speed based on equipped boots
	o_player.spd = scr_calc_boot_speed(o_player.basespd);
}

// Check for level-up
// Max Experience is when you hit it, you level up
if (stats[? "experience"] >= stats[? "maxexperience"]) and deathflag = false {
	// Update the stats
	// Add one to the level
	level++;
	instance_create_depth(o_player.x, o_player.y-20, 1, o_levelup);
	
	// Experience will be experience minus the max experience
	stats [? "experience"] = stats[? "experience"] - stats[? "maxexperience"];
	// The max experience will be the level times 10
	stats [? "maxexperience"] = level * 10;
	
	// Class health is the base health. 
	stats[? "health"] = round(calculate_health(level, class[? "health"])+ scr_calc_hp_from_vit());
	// Set the max health to the new health after level up
 	stats[? "maxhealth"] = round(stats[? "health"]);

	
	stats[? "mana"] = calculate_mana(level, class[? "mana"])+ scr_calc_mp_from_int();
	stats[? "maxmana"] = round(stats[? "mana"]);
	
	stats[? "attack"] = calculate_attack(level, class[? "attack"]);
	stats[? "maxattack"] = stats[? "attack"];	
	
	stats[? "defense"] = calculate_defense(level, class[? "defense"]);
	stats[? "maxdefense"] = stats[? "defense"];	
		
	stats[? "critical"] = calculate_critical(level, class[? "critical"]);
	stats[? "maxcritical"] = stats[? "critical"];	
	
	stats[? "evasion"] = calculate_evasion(level, class[? "evasion"]);
	stats[? "maxevasion"] = stats[? "evasion"];	
	
	stats[? "skillpoints"] ++
	stats[? "statpoints"] += 5;
	
}