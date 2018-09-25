/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 779474FB
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// scr_critical_hit(damage);$(13_10)crit_multiplier = 0; // This stat can be changed based on STR stat, but crits do 1.5x base dmg $(13_10)$(13_10)/*$(13_10)if (o_player_stats.stats[? "strength"] < 25)												crit_multiplier = 1.50;$(13_10)if (o_player_stats.stats[? "strength"] >= 25 and  o_player_stats.stats[? "strength"]<=49 )  crit_multiplier = 1.53;$(13_10)if (o_player_stats.stats[? "strength"] >= 50 and  o_player_stats.stats[? "strength"]<=74 )  crit_multiplier = 1.56;$(13_10)if (o_player_stats.stats[? "strength"] >= 75 and  o_player_stats.stats[? "strength"]<=99 )  crit_multiplier = 1.60;$(13_10)if (o_player_stats.stats[? "strength"] >= 100 and o_player_stats.stats[? "strength"]<=124 ) crit_multiplier = 1.63;$(13_10)if (o_player_stats.stats[? "strength"] >= 125 and o_player_stats.stats[? "strength"]<=149 ) crit_multiplier = 1.66;$(13_10)if (o_player_stats.stats[? "strength"] >= 150 and o_player_stats.stats[? "strength"]<=174 ) crit_multiplier = 1.70;$(13_10)if (o_player_stats.stats[? "strength"] >= 175 and o_player_stats.stats[? "strength"]<=199 ) crit_multiplier = 1.73;$(13_10)if (o_player_stats.stats[? "strength"] >= 200 and o_player_stats.stats[? "strength"]<=224 ) crit_multiplier = 1.76;$(13_10)if (o_player_stats.stats[? "strength"] >= 225 and o_player_stats.stats[? "strength"]<=249 ) crit_multiplier = 1.80;$(13_10)if (o_player_stats.stats[? "strength"] >= 250 and o_player_stats.stats[? "strength"]<=274 ) crit_multiplier = 1.83;$(13_10)if (o_player_stats.stats[? "strength"] >= 275 and o_player_stats.stats[? "strength"]<=299 ) crit_multiplier = 1.86;$(13_10)if (o_player_stats.stats[? "strength"] >= 300 and o_player_stats.stats[? "strength"]<=324 ) crit_multiplier = 1.90;$(13_10)if (o_player_stats.stats[? "strength"] >= 325 and o_player_stats.stats[? "strength"]<=349 ) crit_multiplier = 1.93;$(13_10)if (o_player_stats.stats[? "strength"] >= 350 and o_player_stats.stats[? "strength"]<=374 ) crit_multiplier = 1.96;$(13_10)if (o_player_stats.stats[? "strength"] >= 375 and o_player_stats.stats[? "strength"]<=399 ) crit_multiplier = 2.00;$(13_10)if (o_player_stats.stats[? "strength"] >= 400 and o_player_stats.stats[? "strength"]<=424 ) crit_multiplier = 2.03;$(13_10)if (o_player_stats.stats[? "strength"] >= 425 and o_player_stats.stats[? "strength"]<=449 ) crit_multiplier = 2.06;$(13_10)if (o_player_stats.stats[? "strength"] >= 450 and o_player_stats.stats[? "strength"]<=474 ) crit_multiplier = 2.10;$(13_10)if (o_player_stats.stats[? "strength"] >= 475 and o_player_stats.stats[? "strength"]<=499 ) crit_multiplier = 2.13;$(13_10)if (o_player_stats.stats[? "strength"] >= 500 and o_player_stats.stats[? "strength"]<=524 ) crit_multiplier = 2.16;$(13_10)if (o_player_stats.stats[? "strength"] >= 525 and o_player_stats.stats[? "strength"]<=549 ) crit_multiplier = 2.20;$(13_10)if (o_player_stats.stats[? "strength"] >= 550 and o_player_stats.stats[? "strength"]<=574 ) crit_multiplier = 2.23;$(13_10)if (o_player_stats.stats[? "strength"] >= 575 and o_player_stats.stats[? "strength"]<=599 ) crit_multiplier = 2.26;$(13_10)if (o_player_stats.stats[? "strength"] >= 600 and o_player_stats.stats[? "strength"]<=624 ) crit_multiplier = 2.30;$(13_10)if (o_player_stats.stats[? "strength"] >= 625 and o_player_stats.stats[? "strength"]<=649 ) crit_multiplier = 2.33;$(13_10)if (o_player_stats.stats[? "strength"] >= 650 and o_player_stats.stats[? "strength"]<=674 ) crit_multiplier = 2.36;$(13_10)if (o_player_stats.stats[? "strength"] >= 675 and o_player_stats.stats[? "strength"]<=699 ) crit_multiplier = 2.40;$(13_10)if (o_player_stats.stats[? "strength"] >= 700 and o_player_stats.stats[? "strength"]<=724 ) crit_multiplier = 2.43;$(13_10)if (o_player_stats.stats[? "strength"] >= 725 and o_player_stats.stats[? "strength"]<=749 ) crit_multiplier = 2.46;$(13_10)if (o_player_stats.stats[? "strength"] >= 750 and o_player_stats.stats[? "strength"]<=774 ) crit_multiplier = 2.50;$(13_10)$(13_10)$(13_10)if (o_player_stats.stats[? "strength"] >= 775 and o_player_stats.stats[? "strength"]<=799 ) crit_multiplier = 2.55;$(13_10)if (o_player_stats.stats[? "strength"] >= 800 and o_player_stats.stats[? "strength"]<=824 ) crit_multiplier = 2.60;$(13_10)if (o_player_stats.stats[? "strength"] >= 825 and o_player_stats.stats[? "strength"]<=849 ) crit_multiplier = 2.65;$(13_10)if (o_player_stats.stats[? "strength"] >= 850 and o_player_stats.stats[? "strength"]<=874 ) crit_multiplier = 2.70;$(13_10)if (o_player_stats.stats[? "strength"] >= 875 and o_player_stats.stats[? "strength"]<=899 ) crit_multiplier = 2.75;$(13_10)if (o_player_stats.stats[? "strength"] >= 900 and o_player_stats.stats[? "strength"]<=924 ) crit_multiplier = 2.80;$(13_10)if (o_player_stats.stats[? "strength"] >= 925 and o_player_stats.stats[? "strength"]<=949 ) crit_multiplier = 2.85;$(13_10)if (o_player_stats.stats[? "strength"] >= 950 and o_player_stats.stats[? "strength"]<=974 ) crit_multiplier = 2.90;$(13_10)if (o_player_stats.stats[? "strength"] >= 975 and o_player_stats.stats[? "strength"]<=999 ) crit_multiplier = 2.95;$(13_10)if (o_player_stats.stats[? "strength"] >= 1000)												crit_multiplier = 2.50;$(13_10)*/$(13_10)$(13_10)// Use the crit multiplier script$(13_10)crit_multiplier = scr_calc_crit_multiplier();$(13_10)crit_chance = o_player_stats.totalcrit;  // Takes the total crit chance of player crit and crit from equipment (may need to add from skills if crit is enabled there)$(13_10)critical_hit = false;$(13_10)critseed = crit_chance * 10;$(13_10)damage = 0$(13_10)$(13_10)if irandom_range(0, 1000) <= critseed {$(13_10)	critical_hit = true; // This is for the draw event, if true, then draw the crit damage instead of the normal damage$(13_10)	alarm[0] = 1; // Plays the crit hit sound$(13_10)	damage = argument0 * crit_multiplier;$(13_10)$(13_10)} else {$(13_10)	damage = argument0;$(13_10)	alarm[1] = 1; // Plays the normal hit sound$(13_10)}$(13_10)$(13_10)return damage"
/// @description Execute Code
/// scr_critical_hit(damage);
crit_multiplier = 0; // This stat can be changed based on STR stat, but crits do 1.5x base dmg 

/*
if (o_player_stats.stats[? "strength"] < 25)												crit_multiplier = 1.50;
if (o_player_stats.stats[? "strength"] >= 25 and  o_player_stats.stats[? "strength"]<=49 )  crit_multiplier = 1.53;
if (o_player_stats.stats[? "strength"] >= 50 and  o_player_stats.stats[? "strength"]<=74 )  crit_multiplier = 1.56;
if (o_player_stats.stats[? "strength"] >= 75 and  o_player_stats.stats[? "strength"]<=99 )  crit_multiplier = 1.60;
if (o_player_stats.stats[? "strength"] >= 100 and o_player_stats.stats[? "strength"]<=124 ) crit_multiplier = 1.63;
if (o_player_stats.stats[? "strength"] >= 125 and o_player_stats.stats[? "strength"]<=149 ) crit_multiplier = 1.66;
if (o_player_stats.stats[? "strength"] >= 150 and o_player_stats.stats[? "strength"]<=174 ) crit_multiplier = 1.70;
if (o_player_stats.stats[? "strength"] >= 175 and o_player_stats.stats[? "strength"]<=199 ) crit_multiplier = 1.73;
if (o_player_stats.stats[? "strength"] >= 200 and o_player_stats.stats[? "strength"]<=224 ) crit_multiplier = 1.76;
if (o_player_stats.stats[? "strength"] >= 225 and o_player_stats.stats[? "strength"]<=249 ) crit_multiplier = 1.80;
if (o_player_stats.stats[? "strength"] >= 250 and o_player_stats.stats[? "strength"]<=274 ) crit_multiplier = 1.83;
if (o_player_stats.stats[? "strength"] >= 275 and o_player_stats.stats[? "strength"]<=299 ) crit_multiplier = 1.86;
if (o_player_stats.stats[? "strength"] >= 300 and o_player_stats.stats[? "strength"]<=324 ) crit_multiplier = 1.90;
if (o_player_stats.stats[? "strength"] >= 325 and o_player_stats.stats[? "strength"]<=349 ) crit_multiplier = 1.93;
if (o_player_stats.stats[? "strength"] >= 350 and o_player_stats.stats[? "strength"]<=374 ) crit_multiplier = 1.96;
if (o_player_stats.stats[? "strength"] >= 375 and o_player_stats.stats[? "strength"]<=399 ) crit_multiplier = 2.00;
if (o_player_stats.stats[? "strength"] >= 400 and o_player_stats.stats[? "strength"]<=424 ) crit_multiplier = 2.03;
if (o_player_stats.stats[? "strength"] >= 425 and o_player_stats.stats[? "strength"]<=449 ) crit_multiplier = 2.06;
if (o_player_stats.stats[? "strength"] >= 450 and o_player_stats.stats[? "strength"]<=474 ) crit_multiplier = 2.10;
if (o_player_stats.stats[? "strength"] >= 475 and o_player_stats.stats[? "strength"]<=499 ) crit_multiplier = 2.13;
if (o_player_stats.stats[? "strength"] >= 500 and o_player_stats.stats[? "strength"]<=524 ) crit_multiplier = 2.16;
if (o_player_stats.stats[? "strength"] >= 525 and o_player_stats.stats[? "strength"]<=549 ) crit_multiplier = 2.20;
if (o_player_stats.stats[? "strength"] >= 550 and o_player_stats.stats[? "strength"]<=574 ) crit_multiplier = 2.23;
if (o_player_stats.stats[? "strength"] >= 575 and o_player_stats.stats[? "strength"]<=599 ) crit_multiplier = 2.26;
if (o_player_stats.stats[? "strength"] >= 600 and o_player_stats.stats[? "strength"]<=624 ) crit_multiplier = 2.30;
if (o_player_stats.stats[? "strength"] >= 625 and o_player_stats.stats[? "strength"]<=649 ) crit_multiplier = 2.33;
if (o_player_stats.stats[? "strength"] >= 650 and o_player_stats.stats[? "strength"]<=674 ) crit_multiplier = 2.36;
if (o_player_stats.stats[? "strength"] >= 675 and o_player_stats.stats[? "strength"]<=699 ) crit_multiplier = 2.40;
if (o_player_stats.stats[? "strength"] >= 700 and o_player_stats.stats[? "strength"]<=724 ) crit_multiplier = 2.43;
if (o_player_stats.stats[? "strength"] >= 725 and o_player_stats.stats[? "strength"]<=749 ) crit_multiplier = 2.46;
if (o_player_stats.stats[? "strength"] >= 750 and o_player_stats.stats[? "strength"]<=774 ) crit_multiplier = 2.50;


if (o_player_stats.stats[? "strength"] >= 775 and o_player_stats.stats[? "strength"]<=799 ) crit_multiplier = 2.55;
if (o_player_stats.stats[? "strength"] >= 800 and o_player_stats.stats[? "strength"]<=824 ) crit_multiplier = 2.60;
if (o_player_stats.stats[? "strength"] >= 825 and o_player_stats.stats[? "strength"]<=849 ) crit_multiplier = 2.65;
if (o_player_stats.stats[? "strength"] >= 850 and o_player_stats.stats[? "strength"]<=874 ) crit_multiplier = 2.70;
if (o_player_stats.stats[? "strength"] >= 875 and o_player_stats.stats[? "strength"]<=899 ) crit_multiplier = 2.75;
if (o_player_stats.stats[? "strength"] >= 900 and o_player_stats.stats[? "strength"]<=924 ) crit_multiplier = 2.80;
if (o_player_stats.stats[? "strength"] >= 925 and o_player_stats.stats[? "strength"]<=949 ) crit_multiplier = 2.85;
if (o_player_stats.stats[? "strength"] >= 950 and o_player_stats.stats[? "strength"]<=974 ) crit_multiplier = 2.90;
if (o_player_stats.stats[? "strength"] >= 975 and o_player_stats.stats[? "strength"]<=999 ) crit_multiplier = 2.95;
if (o_player_stats.stats[? "strength"] >= 1000)												crit_multiplier = 2.50;
*/

// Use the crit multiplier script
crit_multiplier = scr_calc_crit_multiplier();
crit_chance = o_player_stats.totalcrit;  // Takes the total crit chance of player crit and crit from equipment (may need to add from skills if crit is enabled there)
critical_hit = false;
critseed = crit_chance * 10;
damage = 0

if irandom_range(0, 1000) <= critseed {
	critical_hit = true; // This is for the draw event, if true, then draw the crit damage instead of the normal damage
	alarm[0] = 1; // Plays the crit hit sound
	damage = argument0 * crit_multiplier;

} else {
	damage = argument0;
	alarm[1] = 1; // Plays the normal hit sound
}

return damage/**/