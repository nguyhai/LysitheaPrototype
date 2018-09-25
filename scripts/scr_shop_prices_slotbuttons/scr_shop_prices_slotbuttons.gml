/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A927F64
/// @DnDArgument : "code" "var itemrarity = -1;$(13_10)var itemupgradelevel = -1;$(13_10)var itemabilities = -1;$(13_10)var itemlevel = -1$(13_10)		$(13_10)// Price =  lvlreq x rarity x upgrade level * number of abilities* 40 $(13_10)if (global.shop[slot+1, 1] > 0) itemlevel = global.shop[slot+1, 1];$(13_10)if (global.shop[slot+1, 1] < 1) itemlevel = 1;$(13_10)		$(13_10)if (global.shop[slot+1, 7] > 0)  itemrarity = global.shop[slot+1, 7]; $(13_10)if (global.shop[slot+1, 7]  < 1)  { itemrarity = 1}$(13_10)$(13_10)if (global.shop[slot+1, 11] > 0)  itemupgradelevel = global.shop[slot+1, 7]; $(13_10)if (global.shop[slot+1, 11]  < 1)  { itemupgradelevel = 1}$(13_10)$(13_10)if (global.shop[slot+1, 27] > 0)  itemabilities = globall.shop[slot+1, 27]; $(13_10)if (global.shop[slot+1, 27]  < 1)  { itemabilities = 1}$(13_10)$(13_10)$(13_10)$(13_10)// Prices will need to be set for ACCESSORIES and ARTIFACTS$(13_10)$(13_10)if type != "Crafting" or type != "Potion" or type != "Item" {$(13_10)	var price = itemlevel * 40 * itemrarity * itemupgradelevel * itemabilities;$(13_10)}$(13_10)$(13_10)if type = "Crafting" or type = "Potion" or type = "Item" {$(13_10)	var price = 150 * itemrarity;$(13_10)}$(13_10)$(13_10)	$(13_10)return(price)		$(13_10)		$(13_10)		"
var itemrarity = -1;
var itemupgradelevel = -1;
var itemabilities = -1;
var itemlevel = -1
		
// Price =  lvlreq x rarity x upgrade level * number of abilities* 40 
if (global.shop[slot+1, 1] > 0) itemlevel = global.shop[slot+1, 1];
if (global.shop[slot+1, 1] < 1) itemlevel = 1;
		
if (global.shop[slot+1, 7] > 0)  itemrarity = global.shop[slot+1, 7]; 
if (global.shop[slot+1, 7]  < 1)  { itemrarity = 1}

if (global.shop[slot+1, 11] > 0)  itemupgradelevel = global.shop[slot+1, 7]; 
if (global.shop[slot+1, 11]  < 1)  { itemupgradelevel = 1}

if (global.shop[slot+1, 27] > 0)  itemabilities = globall.shop[slot+1, 27]; 
if (global.shop[slot+1, 27]  < 1)  { itemabilities = 1}



// Prices will need to be set for ACCESSORIES and ARTIFACTS

if type != "Crafting" or type != "Potion" or type != "Item" {
	var price = itemlevel * 40 * itemrarity * itemupgradelevel * itemabilities;
}

if type = "Crafting" or type = "Potion" or type = "Item" {
	var price = 150 * itemrarity;
}

	
return(price)