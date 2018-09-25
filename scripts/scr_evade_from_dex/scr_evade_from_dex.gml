/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17066DA0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var total_dex = 0;$(13_10)evade_from_dex = 0;$(13_10)$(13_10)// Total dex is from player stats and equipment$(13_10)total_dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex();$(13_10)$(13_10)// We want 21% max from maxed out stats (750?)$(13_10)$(13_10)$(13_10)if (total_dex < 25)						  evade_from_dex = 1.0;$(13_10)if (total_dex >= 25 and  total_dex<=49 )  evade_from_dex = 2.2;$(13_10)if (total_dex >= 50 and  total_dex<=74 )  evade_from_dex = 3.5;$(13_10)if (total_dex >= 75 and  total_dex<=99 )  evade_from_dex = 4.7;$(13_10)if (total_dex >= 100 and total_dex<=124 ) evade_from_dex = 5.9;$(13_10)if (total_dex >= 125 and total_dex<=149 ) evade_from_dex = 6.2;$(13_10)if (total_dex >= 150 and total_dex<=174 ) evade_from_dex = 7.4;$(13_10)if (total_dex >= 175 and total_dex<=199 ) evade_from_dex = 8.6;$(13_10)if (total_dex >= 200 and total_dex<=224 ) evade_from_dex = 9.8;$(13_10)if (total_dex >= 225 and total_dex<=249 ) evade_from_dex = 10.0;$(13_10)$(13_10)if (total_dex >= 250 and total_dex<=274 ) evade_from_dex = 11.3;$(13_10)if (total_dex >= 275 and total_dex<=299 ) evade_from_dex = 12.6;$(13_10)if (total_dex >= 300 and total_dex<=324 ) evade_from_dex = 13.5;$(13_10)if (total_dex >= 325 and total_dex<=349 ) evade_from_dex = 14.7;$(13_10)if (total_dex >= 350 and total_dex<=374 ) evade_from_dex = 15.1;$(13_10)if (total_dex >= 375 and total_dex<=399 ) evade_from_dex = 16.7;$(13_10)if (total_dex >= 400 and total_dex<=424 ) evade_from_dex = 17.4;$(13_10)if (total_dex >= 425 and total_dex<=449 ) evade_from_dex = 18.6;$(13_10)if (total_dex >= 450 and total_dex<=474 ) evade_from_dex = 19.0;$(13_10)$(13_10)if (total_dex >= 475 and total_dex<=499 ) evade_from_dex = 20.2;$(13_10)if (total_dex >= 500 ) evade_from_dex = 21;$(13_10)$(13_10)/*$(13_10)$(13_10)if (total_dex >= 525 and total_dex<=549 ) evade_from_dex = 11.5;$(13_10)if (total_dex >= 550 and total_dex<=574 ) evade_from_dex = 11.7;$(13_10)if (total_dex >= 575 and total_dex<=599 ) evade_from_dex = 12.2;$(13_10)if (total_dex >= 600 and total_dex<=624 ) evade_from_dex = 12.9;$(13_10)if (total_dex >= 625 and total_dex<=649 ) evade_from_dex = 13.3;$(13_10)if (total_dex >= 650 and total_dex<=674 ) evade_from_dex = 13.6;$(13_10)if (total_dex >= 675 and total_dex<=699 ) evade_from_dex = 14.1;$(13_10)if (total_dex >= 700 and total_dex<=724 ) evade_from_dex = 14.5;$(13_10)if (total_dex >= 725 and total_dex<=749 ) evade_from_dex = 14.9;$(13_10)if (total_dex >= 725 and total_dex<=749 ) evade_from_dex = 15.5;$(13_10)$(13_10)if (total_dex >=775) evade_from_dex = 33;$(13_10)*/$(13_10)return evade_from_dex;"
/// @description Execute Code
var total_dex = 0;
evade_from_dex = 0;

// Total dex is from player stats and equipment
total_dex = o_player_stats.stats[? "dexterity"] + scr_calc_equip_dex();

// We want 21% max from maxed out stats (750?)


if (total_dex < 25)						  evade_from_dex = 1.0;
if (total_dex >= 25 and  total_dex<=49 )  evade_from_dex = 2.2;
if (total_dex >= 50 and  total_dex<=74 )  evade_from_dex = 3.5;
if (total_dex >= 75 and  total_dex<=99 )  evade_from_dex = 4.7;
if (total_dex >= 100 and total_dex<=124 ) evade_from_dex = 5.9;
if (total_dex >= 125 and total_dex<=149 ) evade_from_dex = 6.2;
if (total_dex >= 150 and total_dex<=174 ) evade_from_dex = 7.4;
if (total_dex >= 175 and total_dex<=199 ) evade_from_dex = 8.6;
if (total_dex >= 200 and total_dex<=224 ) evade_from_dex = 9.8;
if (total_dex >= 225 and total_dex<=249 ) evade_from_dex = 10.0;

if (total_dex >= 250 and total_dex<=274 ) evade_from_dex = 11.3;
if (total_dex >= 275 and total_dex<=299 ) evade_from_dex = 12.6;
if (total_dex >= 300 and total_dex<=324 ) evade_from_dex = 13.5;
if (total_dex >= 325 and total_dex<=349 ) evade_from_dex = 14.7;
if (total_dex >= 350 and total_dex<=374 ) evade_from_dex = 15.1;
if (total_dex >= 375 and total_dex<=399 ) evade_from_dex = 16.7;
if (total_dex >= 400 and total_dex<=424 ) evade_from_dex = 17.4;
if (total_dex >= 425 and total_dex<=449 ) evade_from_dex = 18.6;
if (total_dex >= 450 and total_dex<=474 ) evade_from_dex = 19.0;

if (total_dex >= 475 and total_dex<=499 ) evade_from_dex = 20.2;
if (total_dex >= 500 ) evade_from_dex = 21;

/*

if (total_dex >= 525 and total_dex<=549 ) evade_from_dex = 11.5;
if (total_dex >= 550 and total_dex<=574 ) evade_from_dex = 11.7;
if (total_dex >= 575 and total_dex<=599 ) evade_from_dex = 12.2;
if (total_dex >= 600 and total_dex<=624 ) evade_from_dex = 12.9;
if (total_dex >= 625 and total_dex<=649 ) evade_from_dex = 13.3;
if (total_dex >= 650 and total_dex<=674 ) evade_from_dex = 13.6;
if (total_dex >= 675 and total_dex<=699 ) evade_from_dex = 14.1;
if (total_dex >= 700 and total_dex<=724 ) evade_from_dex = 14.5;
if (total_dex >= 725 and total_dex<=749 ) evade_from_dex = 14.9;
if (total_dex >= 725 and total_dex<=749 ) evade_from_dex = 15.5;

if (total_dex >=775) evade_from_dex = 33;
*/
return evade_from_dex;/**/