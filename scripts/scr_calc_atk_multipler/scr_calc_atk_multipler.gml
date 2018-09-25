/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63E9D018
/// @DnDArgument : "code" "/// @description Calculate the STR AutoAttack multiplier$(13_10)$(13_10)// CURRENTLY NOT USING THIS SCRIPT$(13_10)$(13_10)if (o_player_stats.stats[? "strength"] < 25)												multiplier = 1.00;$(13_10)if (o_player_stats.stats[? "strength"] >= 25 and  o_player_stats.stats[? "strength"]<=49 )  multiplier = 1.05;$(13_10)if (o_player_stats.stats[? "strength"] >= 50 and  o_player_stats.stats[? "strength"]<=74 )  multiplier = 1.10;$(13_10)if (o_player_stats.stats[? "strength"] >= 75 and  o_player_stats.stats[? "strength"]<=99 )  multiplier = 1.15;$(13_10)if (o_player_stats.stats[? "strength"] >= 100 and o_player_stats.stats[? "strength"]<=124 ) multiplier = 1.20;$(13_10)if (o_player_stats.stats[? "strength"] >= 125 and o_player_stats.stats[? "strength"]<=149 ) multiplier = 1.25;$(13_10)if (o_player_stats.stats[? "strength"] >= 150 and o_player_stats.stats[? "strength"]<=174 ) multiplier = 1.30;$(13_10)if (o_player_stats.stats[? "strength"] >= 175 and o_player_stats.stats[? "strength"]<=199 ) multiplier = 1.35;$(13_10)if (o_player_stats.stats[? "strength"] >= 200 and o_player_stats.stats[? "strength"]<=224 ) multiplier = 1.40;$(13_10)if (o_player_stats.stats[? "strength"] >= 225 and o_player_stats.stats[? "strength"]<=249 ) multiplier = 1.45;$(13_10)if (o_player_stats.stats[? "strength"] >= 250 and o_player_stats.stats[? "strength"]<=274 ) multiplier = 1.50;$(13_10)if (o_player_stats.stats[? "strength"] >= 275 and o_player_stats.stats[? "strength"]<=299 ) multiplier = 1.55;$(13_10)if (o_player_stats.stats[? "strength"] >= 300 and o_player_stats.stats[? "strength"]<=324 ) multiplier = 1.60;$(13_10)if (o_player_stats.stats[? "strength"] >= 325 and o_player_stats.stats[? "strength"]<=349 ) multiplier = 1.65;$(13_10)if (o_player_stats.stats[? "strength"] >= 350 and o_player_stats.stats[? "strength"]<=374 ) multiplier = 1.70;$(13_10)if (o_player_stats.stats[? "strength"] >= 375 and o_player_stats.stats[? "strength"]<=399 ) multiplier = 1.75;$(13_10)if (o_player_stats.stats[? "strength"] >= 400 and o_player_stats.stats[? "strength"]<=424 ) multiplier = 1.80;$(13_10)if (o_player_stats.stats[? "strength"] >= 425 and o_player_stats.stats[? "strength"]<=449 ) multiplier = 1.85;$(13_10)if (o_player_stats.stats[? "strength"] >= 450 and o_player_stats.stats[? "strength"]<=474 ) multiplier = 1.90;$(13_10)if (o_player_stats.stats[? "strength"] >= 475 and o_player_stats.stats[? "strength"]<=499 ) multiplier = 1.95;$(13_10)if (o_player_stats.stats[? "strength"] >= 500 and o_player_stats.stats[? "strength"]<=524 ) multiplier = 2.00;$(13_10)if (o_player_stats.stats[? "strength"] >= 525 and o_player_stats.stats[? "strength"]<=549 ) multiplier = 2.05;$(13_10)if (o_player_stats.stats[? "strength"] >= 550 and o_player_stats.stats[? "strength"]<=574 ) multiplier = 2.10;$(13_10)if (o_player_stats.stats[? "strength"] >= 575 and o_player_stats.stats[? "strength"]<=599 ) multiplier = 2.15;$(13_10)if (o_player_stats.stats[? "strength"] >= 600 and o_player_stats.stats[? "strength"]<=624 ) multiplier = 2.20;$(13_10)if (o_player_stats.stats[? "strength"] >= 625 and o_player_stats.stats[? "strength"]<=649 ) multiplier = 2.25;$(13_10)if (o_player_stats.stats[? "strength"] >= 650 and o_player_stats.stats[? "strength"]<=674 ) multiplier = 2.30;$(13_10)if (o_player_stats.stats[? "strength"] >= 675 and o_player_stats.stats[? "strength"]<=699 ) multiplier = 2.35;$(13_10)if (o_player_stats.stats[? "strength"] >= 700 and o_player_stats.stats[? "strength"]<=724 ) multiplier = 2.40;$(13_10)if (o_player_stats.stats[? "strength"] >= 725 and o_player_stats.stats[? "strength"]<=749 ) multiplier = 2.45;$(13_10)if (o_player_stats.stats[? "strength"] >= 750 and o_player_stats.stats[? "strength"]<=774 ) multiplier = 2.50;$(13_10)if (o_player_stats.stats[? "strength"] >= 775 and o_player_stats.stats[? "strength"]<=799 ) multiplier = 2.55;$(13_10)if (o_player_stats.stats[? "strength"] >= 800 and o_player_stats.stats[? "strength"]<=824 ) multiplier = 2.60;$(13_10)if (o_player_stats.stats[? "strength"] >= 825 and o_player_stats.stats[? "strength"]<=849 ) multiplier = 2.65;$(13_10)if (o_player_stats.stats[? "strength"] >= 850 and o_player_stats.stats[? "strength"]<=874 ) multiplier = 2.70;$(13_10)if (o_player_stats.stats[? "strength"] >= 875 and o_player_stats.stats[? "strength"]<=899 ) multiplier = 2.75;$(13_10)if (o_player_stats.stats[? "strength"] >= 900 and o_player_stats.stats[? "strength"]<=924 ) multiplier = 2.80;$(13_10)if (o_player_stats.stats[? "strength"] >= 925 and o_player_stats.stats[? "strength"]<=949 ) multiplier = 2.85;$(13_10)if (o_player_stats.stats[? "strength"] >= 950 and o_player_stats.stats[? "strength"]<=974 ) multiplier = 2.90;$(13_10)if (o_player_stats.stats[? "strength"] >= 975 and o_player_stats.stats[? "strength"]<=999 ) multiplier = 2.95;$(13_10)if (o_player_stats.stats[? "strength"] >= 1000) multiplier = 3.00;$(13_10)$(13_10)damage = 0;$(13_10)$(13_10)damage = argument0 * multiplier;$(13_10)$(13_10)return damage$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Calculate the STR AutoAttack multiplier

// CURRENTLY NOT USING THIS SCRIPT

if (o_player_stats.stats[? "strength"] < 25)												multiplier = 1.00;
if (o_player_stats.stats[? "strength"] >= 25 and  o_player_stats.stats[? "strength"]<=49 )  multiplier = 1.05;
if (o_player_stats.stats[? "strength"] >= 50 and  o_player_stats.stats[? "strength"]<=74 )  multiplier = 1.10;
if (o_player_stats.stats[? "strength"] >= 75 and  o_player_stats.stats[? "strength"]<=99 )  multiplier = 1.15;
if (o_player_stats.stats[? "strength"] >= 100 and o_player_stats.stats[? "strength"]<=124 ) multiplier = 1.20;
if (o_player_stats.stats[? "strength"] >= 125 and o_player_stats.stats[? "strength"]<=149 ) multiplier = 1.25;
if (o_player_stats.stats[? "strength"] >= 150 and o_player_stats.stats[? "strength"]<=174 ) multiplier = 1.30;
if (o_player_stats.stats[? "strength"] >= 175 and o_player_stats.stats[? "strength"]<=199 ) multiplier = 1.35;
if (o_player_stats.stats[? "strength"] >= 200 and o_player_stats.stats[? "strength"]<=224 ) multiplier = 1.40;
if (o_player_stats.stats[? "strength"] >= 225 and o_player_stats.stats[? "strength"]<=249 ) multiplier = 1.45;
if (o_player_stats.stats[? "strength"] >= 250 and o_player_stats.stats[? "strength"]<=274 ) multiplier = 1.50;
if (o_player_stats.stats[? "strength"] >= 275 and o_player_stats.stats[? "strength"]<=299 ) multiplier = 1.55;
if (o_player_stats.stats[? "strength"] >= 300 and o_player_stats.stats[? "strength"]<=324 ) multiplier = 1.60;
if (o_player_stats.stats[? "strength"] >= 325 and o_player_stats.stats[? "strength"]<=349 ) multiplier = 1.65;
if (o_player_stats.stats[? "strength"] >= 350 and o_player_stats.stats[? "strength"]<=374 ) multiplier = 1.70;
if (o_player_stats.stats[? "strength"] >= 375 and o_player_stats.stats[? "strength"]<=399 ) multiplier = 1.75;
if (o_player_stats.stats[? "strength"] >= 400 and o_player_stats.stats[? "strength"]<=424 ) multiplier = 1.80;
if (o_player_stats.stats[? "strength"] >= 425 and o_player_stats.stats[? "strength"]<=449 ) multiplier = 1.85;
if (o_player_stats.stats[? "strength"] >= 450 and o_player_stats.stats[? "strength"]<=474 ) multiplier = 1.90;
if (o_player_stats.stats[? "strength"] >= 475 and o_player_stats.stats[? "strength"]<=499 ) multiplier = 1.95;
if (o_player_stats.stats[? "strength"] >= 500 and o_player_stats.stats[? "strength"]<=524 ) multiplier = 2.00;
if (o_player_stats.stats[? "strength"] >= 525 and o_player_stats.stats[? "strength"]<=549 ) multiplier = 2.05;
if (o_player_stats.stats[? "strength"] >= 550 and o_player_stats.stats[? "strength"]<=574 ) multiplier = 2.10;
if (o_player_stats.stats[? "strength"] >= 575 and o_player_stats.stats[? "strength"]<=599 ) multiplier = 2.15;
if (o_player_stats.stats[? "strength"] >= 600 and o_player_stats.stats[? "strength"]<=624 ) multiplier = 2.20;
if (o_player_stats.stats[? "strength"] >= 625 and o_player_stats.stats[? "strength"]<=649 ) multiplier = 2.25;
if (o_player_stats.stats[? "strength"] >= 650 and o_player_stats.stats[? "strength"]<=674 ) multiplier = 2.30;
if (o_player_stats.stats[? "strength"] >= 675 and o_player_stats.stats[? "strength"]<=699 ) multiplier = 2.35;
if (o_player_stats.stats[? "strength"] >= 700 and o_player_stats.stats[? "strength"]<=724 ) multiplier = 2.40;
if (o_player_stats.stats[? "strength"] >= 725 and o_player_stats.stats[? "strength"]<=749 ) multiplier = 2.45;
if (o_player_stats.stats[? "strength"] >= 750 and o_player_stats.stats[? "strength"]<=774 ) multiplier = 2.50;
if (o_player_stats.stats[? "strength"] >= 775 and o_player_stats.stats[? "strength"]<=799 ) multiplier = 2.55;
if (o_player_stats.stats[? "strength"] >= 800 and o_player_stats.stats[? "strength"]<=824 ) multiplier = 2.60;
if (o_player_stats.stats[? "strength"] >= 825 and o_player_stats.stats[? "strength"]<=849 ) multiplier = 2.65;
if (o_player_stats.stats[? "strength"] >= 850 and o_player_stats.stats[? "strength"]<=874 ) multiplier = 2.70;
if (o_player_stats.stats[? "strength"] >= 875 and o_player_stats.stats[? "strength"]<=899 ) multiplier = 2.75;
if (o_player_stats.stats[? "strength"] >= 900 and o_player_stats.stats[? "strength"]<=924 ) multiplier = 2.80;
if (o_player_stats.stats[? "strength"] >= 925 and o_player_stats.stats[? "strength"]<=949 ) multiplier = 2.85;
if (o_player_stats.stats[? "strength"] >= 950 and o_player_stats.stats[? "strength"]<=974 ) multiplier = 2.90;
if (o_player_stats.stats[? "strength"] >= 975 and o_player_stats.stats[? "strength"]<=999 ) multiplier = 2.95;
if (o_player_stats.stats[? "strength"] >= 1000) multiplier = 3.00;

damage = 0;

damage = argument0 * multiplier;

return damage