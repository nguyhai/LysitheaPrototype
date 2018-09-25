/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78872575
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();$(13_10)mp_regen_bonus = 0;$(13_10)$(13_10)if (totalint < 25)						{mp_regen_bonus = 1.00;}$(13_10)if (totalint >= 25 and  totalint<=49 )  {mp_regen_bonus = 1.50;}$(13_10)if (totalint >= 50 and  totalint<=74 )  {mp_regen_bonus = 2.00;}$(13_10)if (totalint >= 75 and  totalint<=99 )  {mp_regen_bonus = 2.50;}$(13_10)if (totalint >= 100 and totalint<=124 ) {mp_regen_bonus = 3.00;}$(13_10)if (totalint >= 125 and totalint<=149 ) {mp_regen_bonus = 3.50;}$(13_10)if (totalint >= 150 and totalint<=174 ) {mp_regen_bonus = 4.00;}$(13_10)if (totalint >= 175 and totalint<=199 ) {mp_regen_bonus = 4.50;}$(13_10)if (totalint >= 200 and totalint<=224 ) {mp_regen_bonus = 4.75;}$(13_10)if (totalint >= 225 and totalint<=249 ) {mp_regen_bonus = 5.00;}$(13_10)										 $(13_10)if (totalint >= 250 and totalint<=274 ) {mp_regen_bonus = 5.50;}$(13_10)if (totalint >= 275 and totalint<=299 ) {mp_regen_bonus = 5.75;}$(13_10)if (totalint >= 300 and totalint<=324 ) {mp_regen_bonus = 6.00;}$(13_10)if (totalint >= 325 and totalint<=349 ) {mp_regen_bonus = 6.50;}$(13_10)if (totalint >= 350 and totalint<=374 ) {mp_regen_bonus = 7.00;}$(13_10)if (totalint >= 375 and totalint<=399 ) {mp_regen_bonus = 7.50;}$(13_10)if (totalint >= 400 and totalint<=424 ) {mp_regen_bonus = 8.00;}$(13_10)if (totalint >= 425 and totalint<=449 ) {mp_regen_bonus = 8.50;}$(13_10)if (totalint >= 450 and totalint<=474 ) {mp_regen_bonus = 9.00;}$(13_10)if (totalint >= 475 and totalint<=499 ) {mp_regen_bonus = 10.0;}$(13_10)										 $(13_10)if (totalint >= 500 and totalint<=524 ) {mp_regen_bonus = 10.50;}$(13_10)if (totalint >= 525 and totalint<=549 ) {mp_regen_bonus = 10.75;}$(13_10)if (totalint >= 550 and totalint<=574 ) {mp_regen_bonus = 11.00;}$(13_10)if (totalint >= 575 and totalint<=599 ) {mp_regen_bonus = 11.50;}$(13_10)if (totalint >= 600 and totalint<=624 ) {mp_regen_bonus = 12.00;}$(13_10)if (totalint >= 625 and totalint<=649 ) {mp_regen_bonus = 12.50;}$(13_10)if (totalint >= 650 and totalint<=674 ) {mp_regen_bonus = 13.00;}$(13_10)if (totalint >= 675 and totalint<=699 ) {mp_regen_bonus = 13.50;}$(13_10)if (totalint >= 700 and totalint<=724 ) {mp_regen_bonus = 14.00;}$(13_10)if (totalint >= 725 and totalint<=749 ) {mp_regen_bonus = 15.00;}$(13_10)										$(13_10)if (totalint >= 750 and totalint<=774 ) {mp_regen_bonus = 15.5;}$(13_10)if (totalint) >= 775 {mp_regen_bonus = 16;}$(13_10)$(13_10)return mp_regen_bonus$(13_10)"
/// @description Execute Code
var totalint = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();
mp_regen_bonus = 0;

if (totalint < 25)						{mp_regen_bonus = 1.00;}
if (totalint >= 25 and  totalint<=49 )  {mp_regen_bonus = 1.50;}
if (totalint >= 50 and  totalint<=74 )  {mp_regen_bonus = 2.00;}
if (totalint >= 75 and  totalint<=99 )  {mp_regen_bonus = 2.50;}
if (totalint >= 100 and totalint<=124 ) {mp_regen_bonus = 3.00;}
if (totalint >= 125 and totalint<=149 ) {mp_regen_bonus = 3.50;}
if (totalint >= 150 and totalint<=174 ) {mp_regen_bonus = 4.00;}
if (totalint >= 175 and totalint<=199 ) {mp_regen_bonus = 4.50;}
if (totalint >= 200 and totalint<=224 ) {mp_regen_bonus = 4.75;}
if (totalint >= 225 and totalint<=249 ) {mp_regen_bonus = 5.00;}
										 
if (totalint >= 250 and totalint<=274 ) {mp_regen_bonus = 5.50;}
if (totalint >= 275 and totalint<=299 ) {mp_regen_bonus = 5.75;}
if (totalint >= 300 and totalint<=324 ) {mp_regen_bonus = 6.00;}
if (totalint >= 325 and totalint<=349 ) {mp_regen_bonus = 6.50;}
if (totalint >= 350 and totalint<=374 ) {mp_regen_bonus = 7.00;}
if (totalint >= 375 and totalint<=399 ) {mp_regen_bonus = 7.50;}
if (totalint >= 400 and totalint<=424 ) {mp_regen_bonus = 8.00;}
if (totalint >= 425 and totalint<=449 ) {mp_regen_bonus = 8.50;}
if (totalint >= 450 and totalint<=474 ) {mp_regen_bonus = 9.00;}
if (totalint >= 475 and totalint<=499 ) {mp_regen_bonus = 10.0;}
										 
if (totalint >= 500 and totalint<=524 ) {mp_regen_bonus = 10.50;}
if (totalint >= 525 and totalint<=549 ) {mp_regen_bonus = 10.75;}
if (totalint >= 550 and totalint<=574 ) {mp_regen_bonus = 11.00;}
if (totalint >= 575 and totalint<=599 ) {mp_regen_bonus = 11.50;}
if (totalint >= 600 and totalint<=624 ) {mp_regen_bonus = 12.00;}
if (totalint >= 625 and totalint<=649 ) {mp_regen_bonus = 12.50;}
if (totalint >= 650 and totalint<=674 ) {mp_regen_bonus = 13.00;}
if (totalint >= 675 and totalint<=699 ) {mp_regen_bonus = 13.50;}
if (totalint >= 700 and totalint<=724 ) {mp_regen_bonus = 14.00;}
if (totalint >= 725 and totalint<=749 ) {mp_regen_bonus = 15.00;}
										
if (totalint >= 750 and totalint<=774 ) {mp_regen_bonus = 15.5;}
if (totalint) >= 775 {mp_regen_bonus = 16;}

return mp_regen_bonus