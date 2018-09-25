/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59079216
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// We are adding the item, then returning 1 or 0. If we filled the slot, we return 1$(13_10)// If we did not find a slot open, we return 0$(13_10)// Looks for the first slot and fills it$(13_10)$(13_10)for (i = 0; i < 60; i++){$(13_10)	$(13_10)	if (global.inventory[i] == -1){$(13_10)	// List is 1d array, and argument0 identifies the item (this is the sprit index of spr_items$(13_10)	global.inventory[i] = argument0; // This is the sprite index image$(13_10)	for (j = 0; j< 56; j++){$(13_10)		$(13_10)		//if (global.inventory[i] == -1){ // if slot i is empty$(13_10)		$(13_10)				// Here are the stats, stored in a 2d array$(13_10)				global.inventory[i+1,j] =     argument1;		// Type (sword, etc)$(13_10)				global.inventory[i+1, j+1] =  argument2;		// Level Req$(13_10)				global.inventory[i+1, j+2] =  argument3;		// Min Damage$(13_10)				global.inventory[i+1, j+3] =  argument4;		// Max Damage$(13_10)				global.inventory[i+1, j+4] =  argument5;		// Sockets$(13_10)				global.inventory[i+1, j+5] =  argument6;		// Name$(13_10)				global.inventory[i+1, j+6] =  argument7;		// Description$(13_10)				global.inventory[i+1, j+7] =  argument8;		// Rarity$(13_10)				global.inventory[i+1, j+8] =  argument9;		// stackable$(13_10)				global.inventory[i+1, j+9] =  argument10;		// stackcount$(13_10)				global.inventory[i+1, j+10] = argument11;		// critical$(13_10)				global.inventory[i+1, j+11] = argument12;		// upgradelevel$(13_10)				global.inventory[i+1, j+12] = argument13;		// sprite$(13_10)				global.inventory[i+1, j+13] = argument14;		// spriteindex$(13_10)				global.inventory[i+1, j+14] = argument15;		// healamount$(13_10)$(13_10)				// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)$(13_10)				return (1);$(13_10)			}$(13_10)$(13_10)		}	$(13_10)} $(13_10)$(13_10)instance_create_depth(x,y,0,o_shop_message_inventoryfull);$(13_10)return(0);$(13_10)"
/// @description Execute Code
// We are adding the item, then returning 1 or 0. If we filled the slot, we return 1
// If we did not find a slot open, we return 0
// Looks for the first slot and fills it

for (i = 0; i < 60; i++){
	
	if (global.inventory[i] == -1){
	// List is 1d array, and argument0 identifies the item (this is the sprit index of spr_items
	global.inventory[i] = argument0; // This is the sprite index image
	for (j = 0; j< 56; j++){
		
		//if (global.inventory[i] == -1){ // if slot i is empty
		
				// Here are the stats, stored in a 2d array
				global.inventory[i+1,j] =     argument1;		// Type (sword, etc)
				global.inventory[i+1, j+1] =  argument2;		// Level Req
				global.inventory[i+1, j+2] =  argument3;		// Min Damage
				global.inventory[i+1, j+3] =  argument4;		// Max Damage
				global.inventory[i+1, j+4] =  argument5;		// Sockets
				global.inventory[i+1, j+5] =  argument6;		// Name
				global.inventory[i+1, j+6] =  argument7;		// Description
				global.inventory[i+1, j+7] =  argument8;		// Rarity
				global.inventory[i+1, j+8] =  argument9;		// stackable
				global.inventory[i+1, j+9] =  argument10;		// stackcount
				global.inventory[i+1, j+10] = argument11;		// critical
				global.inventory[i+1, j+11] = argument12;		// upgradelevel
				global.inventory[i+1, j+12] = argument13;		// sprite
				global.inventory[i+1, j+13] = argument14;		// spriteindex
				global.inventory[i+1, j+14] = argument15;		// healamount

				// Putting a return 1 means the script sends back a 1 to where it came from

				return (1);
			}

		}	
} 

instance_create_depth(x,y,0,o_shop_message_inventoryfull);
return(0);