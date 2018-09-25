/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E12C16B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Crit Multiplier from STRENGTH STAT on PLAYER and on EQUIPMENT$(13_10)spell_bonus = 0;$(13_10)var int_stat_and_equipment = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();$(13_10)$(13_10)if (int_stat_and_equipment < 25)									{spell_bonus = 1.00;}$(13_10)if (int_stat_and_equipment >= 25 and  int_stat_and_equipment<=49 )  {spell_bonus = 1.10;}$(13_10)if (int_stat_and_equipment >= 50 and  int_stat_and_equipment<=74 )  {spell_bonus = 1.20;}$(13_10)if (int_stat_and_equipment >= 75 and  int_stat_and_equipment<=99 )  {spell_bonus = 1.30;}$(13_10)if (int_stat_and_equipment >= 100 and int_stat_and_equipment<=124 ) {spell_bonus = 1.40;}$(13_10)if (int_stat_and_equipment >= 125 and int_stat_and_equipment<=149 ) {spell_bonus = 1.50;}$(13_10)if (int_stat_and_equipment >= 150 and int_stat_and_equipment<=174 ) {spell_bonus = 1.60;}$(13_10)if (int_stat_and_equipment >= 175 and int_stat_and_equipment<=199 ) {spell_bonus = 1.70;}$(13_10)if (int_stat_and_equipment >= 200 and int_stat_and_equipment<=224 ) {spell_bonus = 1.80;}$(13_10)if (int_stat_and_equipment >= 225 and int_stat_and_equipment<=249 ) {spell_bonus = 1.90;}$(13_10)$(13_10)if (int_stat_and_equipment >= 250 and int_stat_and_equipment<=274 ) {spell_bonus = 2.00;}$(13_10)if (int_stat_and_equipment >= 275 and int_stat_and_equipment<=299 ) {spell_bonus = 2.10;}$(13_10)if (int_stat_and_equipment >= 300 and int_stat_and_equipment<=324 ) {spell_bonus = 2.20;}$(13_10)if (int_stat_and_equipment >= 325 and int_stat_and_equipment<=349 ) {spell_bonus = 2.30;}$(13_10)if (int_stat_and_equipment >= 350 and int_stat_and_equipment<=374 ) {spell_bonus = 2.40;}$(13_10)if (int_stat_and_equipment >= 375 and int_stat_and_equipment<=399 ) {spell_bonus = 2.50;}$(13_10)if (int_stat_and_equipment >= 400 and int_stat_and_equipment<=424 ) {spell_bonus = 2.60;}$(13_10)if (int_stat_and_equipment >= 425 and int_stat_and_equipment<=449 ) {spell_bonus = 2.70;}$(13_10)if (int_stat_and_equipment >= 450 and int_stat_and_equipment<=474 ) {spell_bonus = 2.80;}$(13_10)if (int_stat_and_equipment >= 475 and int_stat_and_equipment<=499 ) {spell_bonus = 2.90;}$(13_10)if (int_stat_and_equipment >= 500) {spell_bonus = 3.00;}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)return spell_bonus;$(13_10)"
/// @description Execute Code
/// @description Crit Multiplier from STRENGTH STAT on PLAYER and on EQUIPMENT
spell_bonus = 0;
var int_stat_and_equipment = o_player_stats.stats[? "intelligence"]+scr_calc_equip_intel();

if (int_stat_and_equipment < 25)									{spell_bonus = 1.00;}
if (int_stat_and_equipment >= 25 and  int_stat_and_equipment<=49 )  {spell_bonus = 1.10;}
if (int_stat_and_equipment >= 50 and  int_stat_and_equipment<=74 )  {spell_bonus = 1.20;}
if (int_stat_and_equipment >= 75 and  int_stat_and_equipment<=99 )  {spell_bonus = 1.30;}
if (int_stat_and_equipment >= 100 and int_stat_and_equipment<=124 ) {spell_bonus = 1.40;}
if (int_stat_and_equipment >= 125 and int_stat_and_equipment<=149 ) {spell_bonus = 1.50;}
if (int_stat_and_equipment >= 150 and int_stat_and_equipment<=174 ) {spell_bonus = 1.60;}
if (int_stat_and_equipment >= 175 and int_stat_and_equipment<=199 ) {spell_bonus = 1.70;}
if (int_stat_and_equipment >= 200 and int_stat_and_equipment<=224 ) {spell_bonus = 1.80;}
if (int_stat_and_equipment >= 225 and int_stat_and_equipment<=249 ) {spell_bonus = 1.90;}

if (int_stat_and_equipment >= 250 and int_stat_and_equipment<=274 ) {spell_bonus = 2.00;}
if (int_stat_and_equipment >= 275 and int_stat_and_equipment<=299 ) {spell_bonus = 2.10;}
if (int_stat_and_equipment >= 300 and int_stat_and_equipment<=324 ) {spell_bonus = 2.20;}
if (int_stat_and_equipment >= 325 and int_stat_and_equipment<=349 ) {spell_bonus = 2.30;}
if (int_stat_and_equipment >= 350 and int_stat_and_equipment<=374 ) {spell_bonus = 2.40;}
if (int_stat_and_equipment >= 375 and int_stat_and_equipment<=399 ) {spell_bonus = 2.50;}
if (int_stat_and_equipment >= 400 and int_stat_and_equipment<=424 ) {spell_bonus = 2.60;}
if (int_stat_and_equipment >= 425 and int_stat_and_equipment<=449 ) {spell_bonus = 2.70;}
if (int_stat_and_equipment >= 450 and int_stat_and_equipment<=474 ) {spell_bonus = 2.80;}
if (int_stat_and_equipment >= 475 and int_stat_and_equipment<=499 ) {spell_bonus = 2.90;}
if (int_stat_and_equipment >= 500) {spell_bonus = 3.00;}




return spell_bonus;