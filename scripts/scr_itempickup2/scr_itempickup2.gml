/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59079216
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// We are adding the item, then returning 1 or 0. If we filled the slot, we return 1$(13_10)// If we did not find a slot open, we return 0$(13_10)// Looks for the first slot and fills it$(13_10)$(13_10)for (i = i; i< maxItems; i++){$(13_10)$(13_10)	//if (global.inventory[i] == -1){$(13_10)	// List is 1d array, and argument0 identifies the item (this is the sprit index of spr_items$(13_10)	//global.inventory[i] = argument0; // This is the sprite index image$(13_10)	for (j = 0; j< 56; j++){$(13_10)		$(13_10)		//if (global.inventory[i] == -1){ // if slot i is empty$(13_10)		$(13_10)				// Here are the stats, stored in a 2d array, 2nd set of stats$(13_10)$(13_10)				global.inventory[i+1, j+31] = argument0;    //statbonuses$(13_10)				global.inventory[i+1, j+32] = argument1;	//strbonus	$(13_10)				global.inventory[i+1, j+33] = argument2;	//dexbonus$(13_10)				global.inventory[i+1, j+34] = argument3;	//intelbonus$(13_10)				global.inventory[i+1, j+35] = argument4;	//vitbonus$(13_10)				global.inventory[i+1, j+36] = argument5;	//physbonus$(13_10)				global.inventory[i+1, j+37] = argument6;	//firebonus$(13_10)				global.inventory[i+1, j+38] = argument7;	//lightningbonus$(13_10)				global.inventory[i+1, j+39] = argument8;	//icebonus$(13_10)				global.inventory[i+1, j+40] = argument9;	//lightbonus$(13_10)				global.inventory[i+1, j+41] = argument10;	//shadowbonus$(13_10)				global.inventory[i+1, j+42] = argument11;	//allelementbonus$(13_10)				global.inventory[i+1, j+43] = argument12;	//set$(13_10)				global.inventory[i+1, j+44] = argument13;	//setbonus1$(13_10)				global.inventory[i+1, j+45] = argument14;	//setbonus2$(13_10)				global.inventory[i+1, j+46] = argument15;	//setbonus3$(13_10)$(13_10)$(13_10)				// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)				return (1);$(13_10)			//}$(13_10)$(13_10)		}	$(13_10)}$(13_10)$(13_10)return(0);$(13_10)"
/// @description Execute Code
// We are adding the item, then returning 1 or 0. If we filled the slot, we return 1
// If we did not find a slot open, we return 0
// Looks for the first slot and fills it

for (i = i; i< maxItems; i++){

	//if (global.inventory[i] == -1){
	// List is 1d array, and argument0 identifies the item (this is the sprit index of spr_items
	//global.inventory[i] = argument0; // This is the sprite index image
	for (j = 0; j< 56; j++){
		
		//if (global.inventory[i] == -1){ // if slot i is empty
		
				// Here are the stats, stored in a 2d array, 2nd set of stats

				global.inventory[i+1, j+31] = argument0;    //statbonuses
				global.inventory[i+1, j+32] = argument1;	//strbonus	
				global.inventory[i+1, j+33] = argument2;	//dexbonus
				global.inventory[i+1, j+34] = argument3;	//intelbonus
				global.inventory[i+1, j+35] = argument4;	//vitbonus
				global.inventory[i+1, j+36] = argument5;	//physbonus
				global.inventory[i+1, j+37] = argument6;	//firebonus
				global.inventory[i+1, j+38] = argument7;	//lightningbonus
				global.inventory[i+1, j+39] = argument8;	//icebonus
				global.inventory[i+1, j+40] = argument9;	//lightbonus
				global.inventory[i+1, j+41] = argument10;	//shadowbonus
				global.inventory[i+1, j+42] = argument11;	//allelementbonus
				global.inventory[i+1, j+43] = argument12;	//set
				global.inventory[i+1, j+44] = argument13;	//setbonus1
				global.inventory[i+1, j+45] = argument14;	//setbonus2
				global.inventory[i+1, j+46] = argument15;	//setbonus3


				// Putting a return 1 means the script sends back a 1 to where it came from
				return (1);
			//}

		}	
}

return(0);