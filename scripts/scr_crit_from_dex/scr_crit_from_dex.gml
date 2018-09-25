/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17066DA0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var total_dex = 0;$(13_10)crit_from_dex = 0;$(13_10)$(13_10)// Total dex is from player stats and equipment$(13_10)total_dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex();$(13_10)$(13_10)// We want 21% max from maxed out stats (750?)$(13_10)$(13_10)$(13_10)if (total_dex < 25)						  crit_from_dex = 1;$(13_10)if (total_dex >= 25 and  total_dex<=49 )  crit_from_dex = 2.5;$(13_10)if (total_dex >= 50 and  total_dex<=74 )  crit_from_dex = 4;$(13_10)if (total_dex >= 75 and  total_dex<=99 )  crit_from_dex = 5.5;$(13_10)if (total_dex >= 100 and total_dex<=124 ) crit_from_dex = 7;$(13_10)if (total_dex >= 125 and total_dex<=149 ) crit_from_dex = 8.5;$(13_10)if (total_dex >= 150 and total_dex<=174 ) crit_from_dex = 10;$(13_10)if (total_dex >= 175 and total_dex<=199 ) crit_from_dex = 11.5;$(13_10)if (total_dex >= 200 and total_dex<=224 ) crit_from_dex = 13;$(13_10)if (total_dex >= 225 and total_dex<=249 ) crit_from_dex = 14.5;$(13_10)if (total_dex >= 250 and total_dex<=274 ) crit_from_dex = 16;$(13_10)if (total_dex >= 275 and total_dex<=299 ) crit_from_dex = 17.5;$(13_10)if (total_dex >= 300 and total_dex<=324 ) crit_from_dex = 19;$(13_10)if (total_dex >= 325 and total_dex<=349 ) crit_from_dex = 20.5;$(13_10)if (total_dex >= 350 and total_dex<=374 ) crit_from_dex = 22;$(13_10)if (total_dex >= 375 and total_dex<=399 ) crit_from_dex = 23.5;$(13_10)if (total_dex >= 400 and total_dex<=424 ) crit_from_dex = 25;$(13_10)if (total_dex >= 425 and total_dex<=449 ) crit_from_dex = 26.5;$(13_10)if (total_dex >= 450 and total_dex<=474 ) crit_from_dex = 28;$(13_10)if (total_dex >= 475 and total_dex<=499 ) crit_from_dex = 29.5;$(13_10)if (total_dex >= 500 ) crit_from_dex = 31;$(13_10)/*$(13_10)if (total_dex >= 525 and total_dex<=549 ) crit_from_dex = 22;$(13_10)if (total_dex >= 550 and total_dex<=574 ) crit_from_dex = 23;$(13_10)if (total_dex >= 575 and total_dex<=599 ) crit_from_dex = 24;$(13_10)if (total_dex >= 600 and total_dex<=624 ) crit_from_dex = 25;$(13_10)if (total_dex >= 625 and total_dex<=649 ) crit_from_dex = 26;$(13_10)if (total_dex >= 650 and total_dex<=674 ) crit_from_dex = 27;$(13_10)if (total_dex >= 675 and total_dex<=699 ) crit_from_dex = 28;$(13_10)if (total_dex >= 700 and total_dex<=724 ) crit_from_dex = 29;$(13_10)if (total_dex >= 725 and total_dex<=749 ) crit_from_dex = 30;$(13_10)if (total_dex >= 750 and total_dex<=774 ) crit_from_dex = 31;$(13_10)if (total_dex >=775) crit_from_dex = 33;$(13_10)*/$(13_10)return crit_from_dex;"
/// @description Execute Code
var total_dex = 0;
crit_from_dex = 0;

// Total dex is from player stats and equipment
total_dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex();

// We want 21% max from maxed out stats (750?)


if (total_dex < 25)						  crit_from_dex = 1;
if (total_dex >= 25 and  total_dex<=49 )  crit_from_dex = 2.5;
if (total_dex >= 50 and  total_dex<=74 )  crit_from_dex = 4;
if (total_dex >= 75 and  total_dex<=99 )  crit_from_dex = 5.5;
if (total_dex >= 100 and total_dex<=124 ) crit_from_dex = 7;
if (total_dex >= 125 and total_dex<=149 ) crit_from_dex = 8.5;
if (total_dex >= 150 and total_dex<=174 ) crit_from_dex = 10;
if (total_dex >= 175 and total_dex<=199 ) crit_from_dex = 11.5;
if (total_dex >= 200 and total_dex<=224 ) crit_from_dex = 13;
if (total_dex >= 225 and total_dex<=249 ) crit_from_dex = 14.5;
if (total_dex >= 250 and total_dex<=274 ) crit_from_dex = 16;
if (total_dex >= 275 and total_dex<=299 ) crit_from_dex = 17.5;
if (total_dex >= 300 and total_dex<=324 ) crit_from_dex = 19;
if (total_dex >= 325 and total_dex<=349 ) crit_from_dex = 20.5;
if (total_dex >= 350 and total_dex<=374 ) crit_from_dex = 22;
if (total_dex >= 375 and total_dex<=399 ) crit_from_dex = 23.5;
if (total_dex >= 400 and total_dex<=424 ) crit_from_dex = 25;
if (total_dex >= 425 and total_dex<=449 ) crit_from_dex = 26.5;
if (total_dex >= 450 and total_dex<=474 ) crit_from_dex = 28;
if (total_dex >= 475 and total_dex<=499 ) crit_from_dex = 29.5;
if (total_dex >= 500 ) crit_from_dex = 31;
/*
if (total_dex >= 525 and total_dex<=549 ) crit_from_dex = 22;
if (total_dex >= 550 and total_dex<=574 ) crit_from_dex = 23;
if (total_dex >= 575 and total_dex<=599 ) crit_from_dex = 24;
if (total_dex >= 600 and total_dex<=624 ) crit_from_dex = 25;
if (total_dex >= 625 and total_dex<=649 ) crit_from_dex = 26;
if (total_dex >= 650 and total_dex<=674 ) crit_from_dex = 27;
if (total_dex >= 675 and total_dex<=699 ) crit_from_dex = 28;
if (total_dex >= 700 and total_dex<=724 ) crit_from_dex = 29;
if (total_dex >= 725 and total_dex<=749 ) crit_from_dex = 30;
if (total_dex >= 750 and total_dex<=774 ) crit_from_dex = 31;
if (total_dex >=775) crit_from_dex = 33;
*/
return crit_from_dex;/**/