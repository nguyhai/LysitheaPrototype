/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59079216
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// We are adding the item, then returning 1 or 0. If we filled the slot, we return 1$(13_10)// If we did not find a slot open, we return 0$(13_10)// Looks for the first slot and fills it$(13_10)$(13_10)for (i = i; i< maxItems; i++){$(13_10)$(13_10)	//if (global.inventory[i] == -1){$(13_10)	// List is 1d array, and argument0 identifies the item (this is the sprit index of spr_items$(13_10)	//global.inventory[i] = argument0; // This is the sprite index image$(13_10)	for (j = 0; j< 56; j++){$(13_10)		$(13_10)		//if (global.inventory[i] == -1){ // if slot i is empty$(13_10)		$(13_10)				// Here are the stats, stored in a 2d array, 2nd set of stats$(13_10)$(13_10)				global.inventory[i+1, j+47] = argument0;    //setdescription1$(13_10)				global.inventory[i+1, j+48] = argument1;	//setdescription2$(13_10)				global.inventory[i+1, j+49] = argument2;	//setdescription3$(13_10)				global.inventory[i+1, j+50] = argument3;	//statbonus1$(13_10)				global.inventory[i+1, j+51] = argument4;	//statbonus2$(13_10)				global.inventory[i+1, j+52] = argument5;	//statbonus3$(13_10)				global.inventory[i+1, j+53] = argument6;	//evasion$(13_10)$(13_10)				// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)				return (1);$(13_10)			//}$(13_10)$(13_10)		}	$(13_10)}$(13_10)$(13_10)return(0);$(13_10)"
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

				global.inventory[i+1, j+47] = argument0;    //setdescription1
				global.inventory[i+1, j+48] = argument1;	//setdescription2
				global.inventory[i+1, j+49] = argument2;	//setdescription3
				global.inventory[i+1, j+50] = argument3;	//statbonus1
				global.inventory[i+1, j+51] = argument4;	//statbonus2
				global.inventory[i+1, j+52] = argument5;	//statbonus3
				global.inventory[i+1, j+53] = argument6;	//evasion

				// Putting a return 1 means the script sends back a 1 to where it came from
				return (1);
			//}

		}	
}

return(0);