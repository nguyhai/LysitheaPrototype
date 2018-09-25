/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59079216
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// We are adding the item, then returning 1 or 0. If we filled the slot, we return 1$(13_10)// If we did not find a slot open, we return 0$(13_10)// Looks for the first slot and fills it$(13_10)$(13_10)for (i = i; i< maxItems; i++){$(13_10)$(13_10)	//if (global.inventory[i] == -1){$(13_10)	// List is 1d array, and argument0 identifies the item (this is the sprit index of spr_items$(13_10)	//global.inventory[i] = argument0; // This is the sprite index image$(13_10)	for (j = 0; j< 56; j++){$(13_10)		$(13_10)		//if (global.inventory[i] == -1){ // if slot i is empty$(13_10)		$(13_10)				// Here are the stats, stored in a 2d array, 2nd set of stats$(13_10)$(13_10)				global.inventory[i+1, j+15] = argument0;    //defense$(13_10)				global.inventory[i+1, j+16] = argument1;	//physresist		$(13_10)				global.inventory[i+1, j+17] = argument2;	//fireresist$(13_10)				global.inventory[i+1, j+18] = argument3;	//lightningresist$(13_10)				global.inventory[i+1, j+19] = argument4;	//iceresist$(13_10)				global.inventory[i+1, j+20] = argument5;	//lightresist$(13_10)				global.inventory[i+1, j+21] = argument6;	//shadowresist$(13_10)				global.inventory[i+1, j+22] = argument7;	//allelementresist$(13_10)				global.inventory[i+1, j+23] = argument8;	//subweapon$(13_10)				global.inventory[i+1, j+24] = argument9;	//socket1$(13_10)				global.inventory[i+1, j+25] = argument10;	//socket2$(13_10)				global.inventory[i+1, j+26] = argument11;	//socket3$(13_10)				global.inventory[i+1, j+27] = argument12;	//abilities$(13_10)				global.inventory[i+1, j+28] = argument13;	//ability1$(13_10)				global.inventory[i+1, j+29] = argument14;	//ability2$(13_10)				global.inventory[i+1, j+30] = argument15;	//ability3$(13_10)	$(13_10)				// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)				return (1);$(13_10)			//}$(13_10)$(13_10)		}	$(13_10)}$(13_10)$(13_10)return(0);$(13_10)"
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

				global.inventory[i+1, j+15] = argument0;    //defense
				global.inventory[i+1, j+16] = argument1;	//physresist		
				global.inventory[i+1, j+17] = argument2;	//fireresist
				global.inventory[i+1, j+18] = argument3;	//lightningresist
				global.inventory[i+1, j+19] = argument4;	//iceresist
				global.inventory[i+1, j+20] = argument5;	//lightresist
				global.inventory[i+1, j+21] = argument6;	//shadowresist
				global.inventory[i+1, j+22] = argument7;	//allelementresist
				global.inventory[i+1, j+23] = argument8;	//subweapon
				global.inventory[i+1, j+24] = argument9;	//socket1
				global.inventory[i+1, j+25] = argument10;	//socket2
				global.inventory[i+1, j+26] = argument11;	//socket3
				global.inventory[i+1, j+27] = argument12;	//abilities
				global.inventory[i+1, j+28] = argument13;	//ability1
				global.inventory[i+1, j+29] = argument14;	//ability2
				global.inventory[i+1, j+30] = argument15;	//ability3
	
				// Putting a return 1 means the script sends back a 1 to where it came from
				return (1);
			//}

		}	
}

return(0);