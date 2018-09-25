/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66F82306
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)bootspeed = 0;$(13_10)$(13_10)// Boot speed based on rarity (remember if its array, its +1 to slot num so its 69)$(13_10)$(13_10)if global.inventory[69,7] = -1 {$(13_10)	bootspeed = argument0 * 1.00;$(13_10)}$(13_10)$(13_10)if global.inventory[69,7] = 1 {$(13_10)	bootspeed = argument0 * 1.10;$(13_10)}$(13_10)$(13_10)if global.inventory[69,7] = 5 {$(13_10)	bootspeed = argument0 * 1.20;$(13_10)}$(13_10)$(13_10)if global.inventory[69,7] = 10 {$(13_10)	bootspeed = argument0 * 1.30;$(13_10)}$(13_10)return bootspeed;"
/// @description Execute Code
bootspeed = 0;

// Boot speed based on rarity (remember if its array, its +1 to slot num so its 69)

if global.inventory[69,7] = -1 {
	bootspeed = argument0 * 1.00;
}

if global.inventory[69,7] = 1 {
	bootspeed = argument0 * 1.10;
}

if global.inventory[69,7] = 5 {
	bootspeed = argument0 * 1.20;
}

if global.inventory[69,7] = 10 {
	bootspeed = argument0 * 1.30;
}
return bootspeed;