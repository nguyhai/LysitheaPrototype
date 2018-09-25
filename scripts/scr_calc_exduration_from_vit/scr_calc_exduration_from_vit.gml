/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5339DFDB
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)/// @description Crit Multiplier from STRENGTH STAT on PLAYER and on EQUIPMENT$(13_10)ex_duration = 0;$(13_10)var vit_stat_and_equipment = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();$(13_10)$(13_10)if (vit_stat_and_equipment < 25)									{ex_duration = 0.00;}$(13_10)if (vit_stat_and_equipment >= 25 and  vit_stat_and_equipment<=49 )  {ex_duration = 0.10;}$(13_10)if (vit_stat_and_equipment >= 50 and  vit_stat_and_equipment<=74 )  {ex_duration = 0.20;}$(13_10)if (vit_stat_and_equipment >= 75 and  vit_stat_and_equipment<=99 )  {ex_duration = 0.30;}$(13_10)if (vit_stat_and_equipment >= 100 and vit_stat_and_equipment<=124 ) {ex_duration = 0.40;}$(13_10)if (vit_stat_and_equipment >= 125 and vit_stat_and_equipment<=149 ) {ex_duration = 0.50;}$(13_10)if (vit_stat_and_equipment >= 150 and vit_stat_and_equipment<=174 ) {ex_duration = 0.60;}$(13_10)if (vit_stat_and_equipment >= 175 and vit_stat_and_equipment<=199 ) {ex_duration = 0.70;}$(13_10)if (vit_stat_and_equipment >= 200 and vit_stat_and_equipment<=224 ) {ex_duration = 0.80;}$(13_10)if (vit_stat_and_equipment >= 225 and vit_stat_and_equipment<=249 ) {ex_duration = 0.90;}$(13_10)$(13_10)if (vit_stat_and_equipment >= 250 and vit_stat_and_equipment<=274 ) {ex_duration = 1.00;}$(13_10)if (vit_stat_and_equipment >= 275 and vit_stat_and_equipment<=299 ) {ex_duration = 1.10;}$(13_10)if (vit_stat_and_equipment >= 300 and vit_stat_and_equipment<=324 ) {ex_duration = 1.20;}$(13_10)if (vit_stat_and_equipment >= 325 and vit_stat_and_equipment<=349 ) {ex_duration = 1.30;}$(13_10)if (vit_stat_and_equipment >= 350 and vit_stat_and_equipment<=374 ) {ex_duration = 1.40;}$(13_10)if (vit_stat_and_equipment >= 375 and vit_stat_and_equipment<=399 ) {ex_duration = 1.50;}$(13_10)if (vit_stat_and_equipment >= 400 and vit_stat_and_equipment<=424 ) {ex_duration = 1.60;}$(13_10)if (vit_stat_and_equipment >= 425 and vit_stat_and_equipment<=449 ) {ex_duration = 1.70;}$(13_10)if (vit_stat_and_equipment >= 450 and vit_stat_and_equipment<=474 ) {ex_duration = 1.80;}$(13_10)if (vit_stat_and_equipment >= 475 and vit_stat_and_equipment<=499 ) {ex_duration = 1.90;}$(13_10)if (vit_stat_and_equipment >= 500) {ex_duration = 2;}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)return ex_duration;$(13_10)"
/// @description Execute Code
/// @description Execute Code
/// @description Crit Multiplier from STRENGTH STAT on PLAYER and on EQUIPMENT
ex_duration = 0;
var vit_stat_and_equipment = o_player_stats.stats[? "vitality"]+scr_calc_equip_vit();

if (vit_stat_and_equipment < 25)									{ex_duration = 0.00;}
if (vit_stat_and_equipment >= 25 and  vit_stat_and_equipment<=49 )  {ex_duration = 0.10;}
if (vit_stat_and_equipment >= 50 and  vit_stat_and_equipment<=74 )  {ex_duration = 0.20;}
if (vit_stat_and_equipment >= 75 and  vit_stat_and_equipment<=99 )  {ex_duration = 0.30;}
if (vit_stat_and_equipment >= 100 and vit_stat_and_equipment<=124 ) {ex_duration = 0.40;}
if (vit_stat_and_equipment >= 125 and vit_stat_and_equipment<=149 ) {ex_duration = 0.50;}
if (vit_stat_and_equipment >= 150 and vit_stat_and_equipment<=174 ) {ex_duration = 0.60;}
if (vit_stat_and_equipment >= 175 and vit_stat_and_equipment<=199 ) {ex_duration = 0.70;}
if (vit_stat_and_equipment >= 200 and vit_stat_and_equipment<=224 ) {ex_duration = 0.80;}
if (vit_stat_and_equipment >= 225 and vit_stat_and_equipment<=249 ) {ex_duration = 0.90;}

if (vit_stat_and_equipment >= 250 and vit_stat_and_equipment<=274 ) {ex_duration = 1.00;}
if (vit_stat_and_equipment >= 275 and vit_stat_and_equipment<=299 ) {ex_duration = 1.10;}
if (vit_stat_and_equipment >= 300 and vit_stat_and_equipment<=324 ) {ex_duration = 1.20;}
if (vit_stat_and_equipment >= 325 and vit_stat_and_equipment<=349 ) {ex_duration = 1.30;}
if (vit_stat_and_equipment >= 350 and vit_stat_and_equipment<=374 ) {ex_duration = 1.40;}
if (vit_stat_and_equipment >= 375 and vit_stat_and_equipment<=399 ) {ex_duration = 1.50;}
if (vit_stat_and_equipment >= 400 and vit_stat_and_equipment<=424 ) {ex_duration = 1.60;}
if (vit_stat_and_equipment >= 425 and vit_stat_and_equipment<=449 ) {ex_duration = 1.70;}
if (vit_stat_and_equipment >= 450 and vit_stat_and_equipment<=474 ) {ex_duration = 1.80;}
if (vit_stat_and_equipment >= 475 and vit_stat_and_equipment<=499 ) {ex_duration = 1.90;}
if (vit_stat_and_equipment >= 500) {ex_duration = 2;}




return ex_duration;