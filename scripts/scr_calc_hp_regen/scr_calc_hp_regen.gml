/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78872575
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();$(13_10)hp_regen_bonus = 0;$(13_10)$(13_10)if (totalvit < 25)						{hp_regen_bonus = 1.00;}$(13_10)if (totalvit >= 25 and  totalvit<=49 )  {hp_regen_bonus = 1.50;}$(13_10)if (totalvit >= 50 and  totalvit<=74 )  {hp_regen_bonus = 2.00;}$(13_10)if (totalvit >= 75 and  totalvit<=99 )  {hp_regen_bonus = 2.50;}$(13_10)if (totalvit >= 100 and totalvit<=124 ) {hp_regen_bonus = 3.00;}$(13_10)if (totalvit >= 125 and totalvit<=149 ) {hp_regen_bonus = 3.50;}$(13_10)if (totalvit >= 150 and totalvit<=174 ) {hp_regen_bonus = 4.00;}$(13_10)if (totalvit >= 175 and totalvit<=199 ) {hp_regen_bonus = 4.50;}$(13_10)if (totalvit >= 200 and totalvit<=224 ) {hp_regen_bonus = 4.75;}$(13_10)if (totalvit >= 225 and totalvit<=249 ) {hp_regen_bonus = 5.00;}$(13_10)$(13_10)if (totalvit >= 250 and totalvit<=274 ) {hp_regen_bonus = 5.50;}$(13_10)if (totalvit >= 275 and totalvit<=299 ) {hp_regen_bonus = 5.75;}$(13_10)if (totalvit >= 300 and totalvit<=324 ) {hp_regen_bonus = 6.00;}$(13_10)if (totalvit >= 325 and totalvit<=349 ) {hp_regen_bonus = 6.50;}$(13_10)if (totalvit >= 350 and totalvit<=374 ) {hp_regen_bonus = 7.00;}$(13_10)if (totalvit >= 375 and totalvit<=399 ) {hp_regen_bonus = 7.50;}$(13_10)if (totalvit >= 400 and totalvit<=424 ) {hp_regen_bonus = 8.00;}$(13_10)if (totalvit >= 425 and totalvit<=449 ) {hp_regen_bonus = 8.50;}$(13_10)if (totalvit >= 450 and totalvit<=474 ) {hp_regen_bonus = 9.00;}$(13_10)if (totalvit >= 475 and totalvit<=499 ) {hp_regen_bonus = 10.0;}$(13_10)$(13_10)if (totalvit >= 500 and totalvit<=524 ) {hp_regen_bonus = 10.50;}$(13_10)if (totalvit >= 525 and totalvit<=549 ) {hp_regen_bonus = 10.75;}$(13_10)if (totalvit >= 550 and totalvit<=574 ) {hp_regen_bonus = 11.00;}$(13_10)if (totalvit >= 575 and totalvit<=599 ) {hp_regen_bonus = 11.50;}$(13_10)if (totalvit >= 600 and totalvit<=624 ) {hp_regen_bonus = 12.00;}$(13_10)if (totalvit >= 625 and totalvit<=649 ) {hp_regen_bonus = 12.50;}$(13_10)if (totalvit >= 650 and totalvit<=674 ) {hp_regen_bonus = 13.00;}$(13_10)if (totalvit >= 675 and totalvit<=699 ) {hp_regen_bonus = 13.50;}$(13_10)if (totalvit >= 700 and totalvit<=724 ) {hp_regen_bonus = 14.00;}$(13_10)if (totalvit >= 725 and totalvit<=749 ) {hp_regen_bonus = 15.00;}$(13_10)$(13_10)if (totalvit >= 750 and totalvit<=774 ) {hp_regen_bonus = 15.5;}$(13_10)if (totalvit) >= 775 {hp_regen_bonus = 16;}$(13_10)$(13_10)return hp_regen_bonus$(13_10)"
/// @description Execute Code
var totalvit = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();
hp_regen_bonus = 0;

if (totalvit < 25)						{hp_regen_bonus = 1.00;}
if (totalvit >= 25 and  totalvit<=49 )  {hp_regen_bonus = 1.50;}
if (totalvit >= 50 and  totalvit<=74 )  {hp_regen_bonus = 2.00;}
if (totalvit >= 75 and  totalvit<=99 )  {hp_regen_bonus = 2.50;}
if (totalvit >= 100 and totalvit<=124 ) {hp_regen_bonus = 3.00;}
if (totalvit >= 125 and totalvit<=149 ) {hp_regen_bonus = 3.50;}
if (totalvit >= 150 and totalvit<=174 ) {hp_regen_bonus = 4.00;}
if (totalvit >= 175 and totalvit<=199 ) {hp_regen_bonus = 4.50;}
if (totalvit >= 200 and totalvit<=224 ) {hp_regen_bonus = 4.75;}
if (totalvit >= 225 and totalvit<=249 ) {hp_regen_bonus = 5.00;}

if (totalvit >= 250 and totalvit<=274 ) {hp_regen_bonus = 5.50;}
if (totalvit >= 275 and totalvit<=299 ) {hp_regen_bonus = 5.75;}
if (totalvit >= 300 and totalvit<=324 ) {hp_regen_bonus = 6.00;}
if (totalvit >= 325 and totalvit<=349 ) {hp_regen_bonus = 6.50;}
if (totalvit >= 350 and totalvit<=374 ) {hp_regen_bonus = 7.00;}
if (totalvit >= 375 and totalvit<=399 ) {hp_regen_bonus = 7.50;}
if (totalvit >= 400 and totalvit<=424 ) {hp_regen_bonus = 8.00;}
if (totalvit >= 425 and totalvit<=449 ) {hp_regen_bonus = 8.50;}
if (totalvit >= 450 and totalvit<=474 ) {hp_regen_bonus = 9.00;}
if (totalvit >= 475 and totalvit<=499 ) {hp_regen_bonus = 10.0;}

if (totalvit >= 500 and totalvit<=524 ) {hp_regen_bonus = 10.50;}
if (totalvit >= 525 and totalvit<=549 ) {hp_regen_bonus = 10.75;}
if (totalvit >= 550 and totalvit<=574 ) {hp_regen_bonus = 11.00;}
if (totalvit >= 575 and totalvit<=599 ) {hp_regen_bonus = 11.50;}
if (totalvit >= 600 and totalvit<=624 ) {hp_regen_bonus = 12.00;}
if (totalvit >= 625 and totalvit<=649 ) {hp_regen_bonus = 12.50;}
if (totalvit >= 650 and totalvit<=674 ) {hp_regen_bonus = 13.00;}
if (totalvit >= 675 and totalvit<=699 ) {hp_regen_bonus = 13.50;}
if (totalvit >= 700 and totalvit<=724 ) {hp_regen_bonus = 14.00;}
if (totalvit >= 725 and totalvit<=749 ) {hp_regen_bonus = 15.00;}

if (totalvit >= 750 and totalvit<=774 ) {hp_regen_bonus = 15.5;}
if (totalvit) >= 775 {hp_regen_bonus = 16;}

return hp_regen_bonus