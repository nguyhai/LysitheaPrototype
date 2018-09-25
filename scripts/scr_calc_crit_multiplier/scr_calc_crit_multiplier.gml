/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C449D7D
/// @DnDArgument : "code" "/// @description Crit Multiplier from STRENGTH STAT on PLAYER and on EQUIPMENT$(13_10)crit_multiplier = 0;$(13_10)var str_stat_and_equipment = o_player_stats.stats[? "strength"]+scr_calc_equip_str();$(13_10)$(13_10)if (str_stat_and_equipment < 25)									{crit_multiplier = 1.50;}$(13_10)if (str_stat_and_equipment >= 25 and  str_stat_and_equipment<=49 )  {crit_multiplier = 1.55;}$(13_10)if (str_stat_and_equipment >= 50 and  str_stat_and_equipment<=74 )  {crit_multiplier = 1.60;}$(13_10)if (str_stat_and_equipment >= 75 and  str_stat_and_equipment<=99 )  {crit_multiplier = 1.65;}$(13_10)if (str_stat_and_equipment >= 100 and str_stat_and_equipment<=124 ) {crit_multiplier = 1.70;}$(13_10)if (str_stat_and_equipment >= 125 and str_stat_and_equipment<=149 ) {crit_multiplier = 1.75;}$(13_10)if (str_stat_and_equipment >= 150 and str_stat_and_equipment<=174 ) {crit_multiplier = 1.80;}$(13_10)if (str_stat_and_equipment >= 175 and str_stat_and_equipment<=199 ) {crit_multiplier = 1.85;}$(13_10)if (str_stat_and_equipment >= 200 and str_stat_and_equipment<=224 ) {crit_multiplier = 1.90;}$(13_10)if (str_stat_and_equipment >= 225 and str_stat_and_equipment<=249 ) {crit_multiplier = 1.95;}$(13_10)if (str_stat_and_equipment >= 250 and str_stat_and_equipment<=274 ) {crit_multiplier = 2.00;}$(13_10)if (str_stat_and_equipment >= 275 and str_stat_and_equipment<=299 ) {crit_multiplier = 2.05;}$(13_10)if (str_stat_and_equipment >= 300 and str_stat_and_equipment<=324 ) {crit_multiplier = 2.10;}$(13_10)if (str_stat_and_equipment >= 325 and str_stat_and_equipment<=349 ) {crit_multiplier = 2.15;}$(13_10)if (str_stat_and_equipment >= 350 and str_stat_and_equipment<=374 ) {crit_multiplier = 2.20;}$(13_10)if (str_stat_and_equipment >= 375 and str_stat_and_equipment<=399 ) {crit_multiplier = 2.25;}$(13_10)if (str_stat_and_equipment >= 400 and str_stat_and_equipment<=424 ) {crit_multiplier = 2.30;}$(13_10)if (str_stat_and_equipment >= 425 and str_stat_and_equipment<=449 ) {crit_multiplier = 2.35;}$(13_10)if (str_stat_and_equipment >= 450 and str_stat_and_equipment<=474 ) {crit_multiplier = 2.40;}$(13_10)if (str_stat_and_equipment >= 475 and str_stat_and_equipment<=499 ) {crit_multiplier = 2.45;}$(13_10)if (str_stat_and_equipment >= 500) {crit_multiplier = 2.6;}$(13_10)$(13_10)/*$(13_10)if (str_stat_and_equipment >= 525 and str_stat_and_equipment<=549 ) {crit_multiplier = 2.20;}$(13_10)if (str_stat_and_equipment >= 550 and str_stat_and_equipment<=574 ) {crit_multiplier = 2.23;}$(13_10)if (str_stat_and_equipment >= 575 and str_stat_and_equipment<=599 ) {crit_multiplier = 2.26;}$(13_10)if (str_stat_and_equipment >= 600 and str_stat_and_equipment<=624 ) {crit_multiplier = 2.30;}$(13_10)if (str_stat_and_equipment >= 625 and str_stat_and_equipment<=649 ) {crit_multiplier = 2.33;}$(13_10)if (str_stat_and_equipment >= 650 and str_stat_and_equipment<=674 ) {crit_multiplier = 2.36;}$(13_10)if (str_stat_and_equipment >= 675 and str_stat_and_equipment<=699 ) {crit_multiplier = 2.40;}$(13_10)if (str_stat_and_equipment >= 700 and str_stat_and_equipment<=724 ) {crit_multiplier = 2.43;}$(13_10)if (str_stat_and_equipment >= 725 and str_stat_and_equipment<=749 ) {crit_multiplier = 2.46;}$(13_10)if (str_stat_and_equipment >= 750 and str_stat_and_equipment<=774 ) {crit_multiplier = 2.50;}$(13_10)if (str_stat_and_equipment) >= 775 {crit_multiplier = 2.6;}$(13_10)$(13_10)/*$(13_10)if (o_player_stats.stats[? "strength"] >= 775 and o_player_stats.stats[? "strength"]<=799 ) crit_multiplier = 2.55;$(13_10)if (o_player_stats.stats[? "strength"] >= 800 and o_player_stats.stats[? "strength"]<=824 ) crit_multiplier = 2.60;$(13_10)if (o_player_stats.stats[? "strength"] >= 825 and o_player_stats.stats[? "strength"]<=849 ) crit_multiplier = 2.65;$(13_10)if (o_player_stats.stats[? "strength"] >= 850 and o_player_stats.stats[? "strength"]<=874 ) crit_multiplier = 2.70;$(13_10)if (o_player_stats.stats[? "strength"] >= 875 and o_player_stats.stats[? "strength"]<=899 ) crit_multiplier = 2.75;$(13_10)if (o_player_stats.stats[? "strength"] >= 900 and o_player_stats.stats[? "strength"]<=924 ) crit_multiplier = 2.80;$(13_10)if (o_player_stats.stats[? "strength"] >= 925 and o_player_stats.stats[? "strength"]<=949 ) crit_multiplier = 2.85;$(13_10)if (o_player_stats.stats[? "strength"] >= 950 and o_player_stats.stats[? "strength"]<=974 ) crit_multiplier = 2.90;$(13_10)if (o_player_stats.stats[? "strength"] >= 975 and o_player_stats.stats[? "strength"]<=999 ) crit_multiplier = 2.95;$(13_10)if (o_player_stats.stats[? "strength"] >= 1000)												crit_multiplier = 2.50;$(13_10)*/$(13_10)$(13_10)$(13_10)return crit_multiplier;$(13_10)"
/// @description Crit Multiplier from STRENGTH STAT on PLAYER and on EQUIPMENT
crit_multiplier = 0;
var str_stat_and_equipment = o_player_stats.stats[? "strength"]+scr_calc_equip_str();

if (str_stat_and_equipment < 25)									{crit_multiplier = 1.50;}
if (str_stat_and_equipment >= 25 and  str_stat_and_equipment<=49 )  {crit_multiplier = 1.55;}
if (str_stat_and_equipment >= 50 and  str_stat_and_equipment<=74 )  {crit_multiplier = 1.60;}
if (str_stat_and_equipment >= 75 and  str_stat_and_equipment<=99 )  {crit_multiplier = 1.65;}
if (str_stat_and_equipment >= 100 and str_stat_and_equipment<=124 ) {crit_multiplier = 1.70;}
if (str_stat_and_equipment >= 125 and str_stat_and_equipment<=149 ) {crit_multiplier = 1.75;}
if (str_stat_and_equipment >= 150 and str_stat_and_equipment<=174 ) {crit_multiplier = 1.80;}
if (str_stat_and_equipment >= 175 and str_stat_and_equipment<=199 ) {crit_multiplier = 1.85;}
if (str_stat_and_equipment >= 200 and str_stat_and_equipment<=224 ) {crit_multiplier = 1.90;}
if (str_stat_and_equipment >= 225 and str_stat_and_equipment<=249 ) {crit_multiplier = 1.95;}
if (str_stat_and_equipment >= 250 and str_stat_and_equipment<=274 ) {crit_multiplier = 2.00;}
if (str_stat_and_equipment >= 275 and str_stat_and_equipment<=299 ) {crit_multiplier = 2.05;}
if (str_stat_and_equipment >= 300 and str_stat_and_equipment<=324 ) {crit_multiplier = 2.10;}
if (str_stat_and_equipment >= 325 and str_stat_and_equipment<=349 ) {crit_multiplier = 2.15;}
if (str_stat_and_equipment >= 350 and str_stat_and_equipment<=374 ) {crit_multiplier = 2.20;}
if (str_stat_and_equipment >= 375 and str_stat_and_equipment<=399 ) {crit_multiplier = 2.25;}
if (str_stat_and_equipment >= 400 and str_stat_and_equipment<=424 ) {crit_multiplier = 2.30;}
if (str_stat_and_equipment >= 425 and str_stat_and_equipment<=449 ) {crit_multiplier = 2.35;}
if (str_stat_and_equipment >= 450 and str_stat_and_equipment<=474 ) {crit_multiplier = 2.40;}
if (str_stat_and_equipment >= 475 and str_stat_and_equipment<=499 ) {crit_multiplier = 2.45;}
if (str_stat_and_equipment >= 500) {crit_multiplier = 2.6;}

/*
if (str_stat_and_equipment >= 525 and str_stat_and_equipment<=549 ) {crit_multiplier = 2.20;}
if (str_stat_and_equipment >= 550 and str_stat_and_equipment<=574 ) {crit_multiplier = 2.23;}
if (str_stat_and_equipment >= 575 and str_stat_and_equipment<=599 ) {crit_multiplier = 2.26;}
if (str_stat_and_equipment >= 600 and str_stat_and_equipment<=624 ) {crit_multiplier = 2.30;}
if (str_stat_and_equipment >= 625 and str_stat_and_equipment<=649 ) {crit_multiplier = 2.33;}
if (str_stat_and_equipment >= 650 and str_stat_and_equipment<=674 ) {crit_multiplier = 2.36;}
if (str_stat_and_equipment >= 675 and str_stat_and_equipment<=699 ) {crit_multiplier = 2.40;}
if (str_stat_and_equipment >= 700 and str_stat_and_equipment<=724 ) {crit_multiplier = 2.43;}
if (str_stat_and_equipment >= 725 and str_stat_and_equipment<=749 ) {crit_multiplier = 2.46;}
if (str_stat_and_equipment >= 750 and str_stat_and_equipment<=774 ) {crit_multiplier = 2.50;}
if (str_stat_and_equipment) >= 775 {crit_multiplier = 2.6;}

/*
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


return crit_multiplier;
/**/