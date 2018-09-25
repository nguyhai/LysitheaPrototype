/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D8204FC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// scr_itemdrop_slot(slot);$(13_10)// Argument0 is the slot, we need to +1 in order to get to the items in the array [0] is the list remember$(13_10)$(13_10)if (global.inventory[argument0] != -1){$(13_10)	// If there is something in the slot we're trying to empty, empty it's slot number$(13_10)$(13_10)	  global.inventory[argument0]= -1;$(13_10)//Then, we gotta loop through and empty all the properties in that slot$(13_10)for (i = 0; i< maxItems; i++){	$(13_10)$(13_10)	for (j = 0; j< 56; j++){$(13_10)				$(13_10)				// Here are the stats, stored in a 2d array. Slot number is argument0+1 (remember argument0 is part of the list, +1 to get to the stats array)$(13_10)				global.inventory[argument0+1,j] = -1;   // Type (sword, etc)$(13_10)				global.inventory[argument0+1,j+1] = -1; // Level Req$(13_10)				global.inventory[argument0+1,j+2] = -1; // Min Damage$(13_10)				global.inventory[argument0+1,j+3] = -1; // Max Damage$(13_10)				global.inventory[argument0+1,j+4] = -1; // Sockets$(13_10)				global.inventory[argument0+1,j+5] = -1; // Name$(13_10)				global.inventory[argument0+1,j+6] = -1; // Description$(13_10)				global.inventory[argument0+1,j+7] = -1; // Rarity$(13_10)				global.inventory[argument0+1,j+8] = -1; // $(13_10)				global.inventory[argument0+1,j+9] = -1; // $(13_10)				global.inventory[argument0+1,j+10] = -1; // $(13_10)				global.inventory[argument0+1,j+11] = -1; // $(13_10)				global.inventory[argument0+1,j+12] = -1; // $(13_10)				global.inventory[argument0+1,j+13] = -1; // $(13_10)				global.inventory[argument0+1,j+14] = -1; // $(13_10)				global.inventory[argument0+1,j+15] = -1; // $(13_10)				global.inventory[argument0+1,j+16] = -1; // $(13_10)				global.inventory[argument0+1,j+17] = -1; // $(13_10)				global.inventory[argument0+1,j+18] = -1; // $(13_10)				global.inventory[argument0+1,j+19] = -1; // $(13_10)				global.inventory[argument0+1,j+20] = -1; // $(13_10)				global.inventory[argument0+1,j+21] = -1; // $(13_10)				global.inventory[argument0+1,j+22] = -1; // $(13_10)				global.inventory[argument0+1,j+23] = -1; // $(13_10)				global.inventory[argument0+1,j+24] = -1; // $(13_10)				global.inventory[argument0+1,j+25] = -1; // $(13_10)				global.inventory[argument0+1,j+26] = -1; // $(13_10)				global.inventory[argument0+1,j+27] = -1; // $(13_10)				global.inventory[argument0+1,j+28] = -1; // $(13_10)				global.inventory[argument0+1,j+29] = -1; // $(13_10)				global.inventory[argument0+1,j+30] = -1; // $(13_10)				global.inventory[argument0+1,j+31] = -1; // $(13_10)				global.inventory[argument0+1,j+32] = -1; // $(13_10)				global.inventory[argument0+1,j+33] = -1; // $(13_10)				global.inventory[argument0+1,j+34] = -1; // $(13_10)				global.inventory[argument0+1,j+35] = -1; // $(13_10)				global.inventory[argument0+1,j+36] = -1; // $(13_10)				global.inventory[argument0+1,j+37] = -1; // $(13_10)				global.inventory[argument0+1,j+38] = -1; // $(13_10)				global.inventory[argument0+1,j+39] = -1; // $(13_10)				global.inventory[argument0+1,j+40] = -1; // $(13_10)				global.inventory[argument0+1,j+41] = -1; // $(13_10)				global.inventory[argument0+1,j+42] = -1; // $(13_10)				global.inventory[argument0+1,j+43] = -1; // $(13_10)				global.inventory[argument0+1,j+44] = -1; // $(13_10)				global.inventory[argument0+1,j+45] = -1; // $(13_10)				global.inventory[argument0+1,j+46] = -1; // $(13_10)				global.inventory[argument0+1,j+47] = -1; // $(13_10)				global.inventory[argument0+1,j+48] = -1; // $(13_10)				global.inventory[argument0+1,j+49] = -1; // $(13_10)				global.inventory[argument0+1,j+50] = -1; // Statbonus1$(13_10)				global.inventory[argument0+1,j+51] = -1; // Statbonus2$(13_10)				global.inventory[argument0+1,j+52] = -1; // Statbonus3$(13_10)				global.inventory[argument0+1,j+53] = -1; // evasion$(13_10)$(13_10)$(13_10)				// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)				return (1);$(13_10)			}$(13_10)			//return(1)$(13_10)		}$(13_10)	//return(1)$(13_10)$(13_10)}$(13_10)return(0);"
/// @description Execute Code
// scr_itemdrop_slot(slot);
// Argument0 is the slot, we need to +1 in order to get to the items in the array [0] is the list remember

if (global.inventory[argument0] != -1){
	// If there is something in the slot we're trying to empty, empty it's slot number

	  global.inventory[argument0]= -1;
//Then, we gotta loop through and empty all the properties in that slot
for (i = 0; i< maxItems; i++){	

	for (j = 0; j< 56; j++){
				
				// Here are the stats, stored in a 2d array. Slot number is argument0+1 (remember argument0 is part of the list, +1 to get to the stats array)
				global.inventory[argument0+1,j] = -1;   // Type (sword, etc)
				global.inventory[argument0+1,j+1] = -1; // Level Req
				global.inventory[argument0+1,j+2] = -1; // Min Damage
				global.inventory[argument0+1,j+3] = -1; // Max Damage
				global.inventory[argument0+1,j+4] = -1; // Sockets
				global.inventory[argument0+1,j+5] = -1; // Name
				global.inventory[argument0+1,j+6] = -1; // Description
				global.inventory[argument0+1,j+7] = -1; // Rarity
				global.inventory[argument0+1,j+8] = -1; // 
				global.inventory[argument0+1,j+9] = -1; // 
				global.inventory[argument0+1,j+10] = -1; // 
				global.inventory[argument0+1,j+11] = -1; // 
				global.inventory[argument0+1,j+12] = -1; // 
				global.inventory[argument0+1,j+13] = -1; // 
				global.inventory[argument0+1,j+14] = -1; // 
				global.inventory[argument0+1,j+15] = -1; // 
				global.inventory[argument0+1,j+16] = -1; // 
				global.inventory[argument0+1,j+17] = -1; // 
				global.inventory[argument0+1,j+18] = -1; // 
				global.inventory[argument0+1,j+19] = -1; // 
				global.inventory[argument0+1,j+20] = -1; // 
				global.inventory[argument0+1,j+21] = -1; // 
				global.inventory[argument0+1,j+22] = -1; // 
				global.inventory[argument0+1,j+23] = -1; // 
				global.inventory[argument0+1,j+24] = -1; // 
				global.inventory[argument0+1,j+25] = -1; // 
				global.inventory[argument0+1,j+26] = -1; // 
				global.inventory[argument0+1,j+27] = -1; // 
				global.inventory[argument0+1,j+28] = -1; // 
				global.inventory[argument0+1,j+29] = -1; // 
				global.inventory[argument0+1,j+30] = -1; // 
				global.inventory[argument0+1,j+31] = -1; // 
				global.inventory[argument0+1,j+32] = -1; // 
				global.inventory[argument0+1,j+33] = -1; // 
				global.inventory[argument0+1,j+34] = -1; // 
				global.inventory[argument0+1,j+35] = -1; // 
				global.inventory[argument0+1,j+36] = -1; // 
				global.inventory[argument0+1,j+37] = -1; // 
				global.inventory[argument0+1,j+38] = -1; // 
				global.inventory[argument0+1,j+39] = -1; // 
				global.inventory[argument0+1,j+40] = -1; // 
				global.inventory[argument0+1,j+41] = -1; // 
				global.inventory[argument0+1,j+42] = -1; // 
				global.inventory[argument0+1,j+43] = -1; // 
				global.inventory[argument0+1,j+44] = -1; // 
				global.inventory[argument0+1,j+45] = -1; // 
				global.inventory[argument0+1,j+46] = -1; // 
				global.inventory[argument0+1,j+47] = -1; // 
				global.inventory[argument0+1,j+48] = -1; // 
				global.inventory[argument0+1,j+49] = -1; // 
				global.inventory[argument0+1,j+50] = -1; // Statbonus1
				global.inventory[argument0+1,j+51] = -1; // Statbonus2
				global.inventory[argument0+1,j+52] = -1; // Statbonus3
				global.inventory[argument0+1,j+53] = -1; // evasion


				// Putting a return 1 means the script sends back a 1 to where it came from
				return (1);
			}
			//return(1)
		}
	//return(1)

}
return(0);