/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DE4D806
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Check every inventory slot to see if we can find item that we're looking for$(13_10)// If it is the same item, and the the stackable is above zero and the count is 100 or below$(13_10)$(13_10)/*$(13_10)global.inventory[i+1, j+8] =  argument1;		// stackable$(13_10)global.inventory[i+1, j+9] =  argument2;		// stackcount$(13_10)for (j = 0; j< 55; j++){}$(13_10)*/$(13_10)$(13_10)//------------------------------------------------------$(13_10)$(13_10)/*$(13_10)argument0 = index$(13_10)argument1 = stackable $(13_10)$(13_10)*/$(13_10)var no_add = false;$(13_10)var remainder = 0;$(13_10)var stop_adding = false;$(13_10)$(13_10)$(13_10)// Check to see if stackable$(13_10)$(13_10)for (i = 0; i < 60; i++) { // Looping through inventory$(13_10)$(13_10)	// Check to see if there is an item in our inventory that is the same item that we're trying to pick up$(13_10)	// If its a stackable item and we have one in our inventory, then do this$(13_10)	if (global.inventory[i] == argument0) and global.inventory[i+1, 9] < 100 { // If index and stackcount of found item is same$(13_10)			$(13_10)		if remainder = 0 and stop_adding = false { // Run once$(13_10)		$(13_10)			global.inventory[i+1, 9] = global.inventory[i+1, 9] + argument1;$(13_10)$(13_10)			if global.inventory[i+1, 9] <= 100 { // If it added everything, then destroy the item$(13_10)$(13_10)				pickedup = true;$(13_10)				alarm[0] = 60;	$(13_10)				$(13_10)				// Loop through the pickup display array and add the item name rarity and stackcount to it$(13_10)				for (i = 0; i < 30; i++){$(13_10)				$(13_10)					if global.showPickup[i] = -1 {$(13_10)						global.showPickup[i] = 1;$(13_10)						global.showPickup[i+1,0] = name; $(13_10)						global.showPickup[i+1,1] = upgradelevel; $(13_10)						global.showPickup[i+1,2] = stackcount;$(13_10)						return(0);$(13_10)					}	$(13_10)				}$(13_10)					return(0)$(13_10)				$(13_10)			}$(13_10)			$(13_10)		} else if remainder > 0 {$(13_10)			global.inventory[i+1, 9] = global.inventory[i+1, 9] + remainder;$(13_10)			$(13_10)			if global.inventory[i+1, 9] <= 100 { // If less than 100, no remainder and show that you picked up item$(13_10)				$(13_10)				remainder = 0$(13_10)				stop_adding = true;$(13_10)				$(13_10)				pickedup = true;$(13_10)				alarm[0] = 60;	$(13_10)				$(13_10)				// Loop through the pickup display array and add the item name rarity and stackcount to it$(13_10)				for (i = 0; i < 30; i++){$(13_10)				$(13_10)					if global.showPickup[i] = -1 {$(13_10)						global.showPickup[i] = 1;$(13_10)						global.showPickup[i+1,0] = name; $(13_10)						global.showPickup[i+1,1] = upgradelevel; $(13_10)						global.showPickup[i+1,2] = stackcount;$(13_10)						return(0);$(13_10)					}	$(13_10)				}				$(13_10)			}$(13_10)			$(13_10)			if global.inventory[i+1, 9] > 100 {$(13_10)				remainder = global.inventory[i+1, 9] - 100;$(13_10)				global.inventory[i+1, 9] = 100;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)		$(13_10)		$(13_10)		if global.inventory[i+1, 9] > 100 {$(13_10)			remainder = global.inventory[i+1, 9] - 100;$(13_10)			global.inventory[i+1, 9] = 100;$(13_10)		} $(13_10)	$(13_10)	no_add = true;$(13_10)	}$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)if no_add = false {$(13_10)	remainder =argument1;$(13_10)}$(13_10)$(13_10)return(remainder);$(13_10)$(13_10)/* -- OLD CODE$(13_10)if argument1 > 0 and argument1 <= 100 and argument2 > 0 and argument2 <= 100 {$(13_10)$(13_10)for (i = 0; i < 60; i++){$(13_10)$(13_10)	// Check to see if there is an item in our inventory that is the same item that we're trying to pick up$(13_10)	// If its a stackable item and we have one in our inventory, then do this$(13_10)	if (global.inventory[i] == argument0) $(13_10)	{$(13_10)$(13_10)		for (j = 9; j< 10; j++){$(13_10)			// If the stack is less than 100, then add to it. $(13_10)			if global.inventory[i+1, 9] < 100 {$(13_10)			$(13_10)				global.inventory[i+1, 9] = global.inventory[i+1, 9]+ argument2;$(13_10)				$(13_10)				// If it adds the count and goes over 100, sets it to 100 max, returns the rest as a remainder.$(13_10)				if global.inventory[i+1, 9] > 100{$(13_10)					var remainder = global.inventory[i+1, 9] - 100;$(13_10)					global.inventory[i+1, 9] = 100;$(13_10)					//audio_play_sound(snd_mgs_alert,9,false);$(13_10)					//return(remainder);$(13_10)					$(13_10)				} else {$(13_10)					// Return added if its not above 100$(13_10)					return ("Added");$(13_10)				}$(13_10)				$(13_10)				// Return the remainder if there is one after picking up an item. $(13_10)				return(remainder);$(13_10)$(13_10)			} $(13_10)		}$(13_10)$(13_10)	}$(13_10)}$(13_10)}$(13_10)$(13_10)return(0);$(13_10)	"
/// @description Execute Code
// Check every inventory slot to see if we can find item that we're looking for
// If it is the same item, and the the stackable is above zero and the count is 100 or below

/*
global.inventory[i+1, j+8] =  argument1;		// stackable
global.inventory[i+1, j+9] =  argument2;		// stackcount
for (j = 0; j< 55; j++){}
*/

//------------------------------------------------------

/*
argument0 = index
argument1 = stackable 

*/
var no_add = false;
var remainder = 0;
var stop_adding = false;


// Check to see if stackable

for (i = 0; i < 60; i++) { // Looping through inventory

	// Check to see if there is an item in our inventory that is the same item that we're trying to pick up
	// If its a stackable item and we have one in our inventory, then do this
	if (global.inventory[i] == argument0) and global.inventory[i+1, 9] < 100 { // If index and stackcount of found item is same
			
		if remainder = 0 and stop_adding = false { // Run once
		
			global.inventory[i+1, 9] = global.inventory[i+1, 9] + argument1;

			if global.inventory[i+1, 9] <= 100 { // If it added everything, then destroy the item

				pickedup = true;
				alarm[0] = 60;	
				
				// Loop through the pickup display array and add the item name rarity and stackcount to it
				for (i = 0; i < 30; i++){
				
					if global.showPickup[i] = -1 {
						global.showPickup[i] = 1;
						global.showPickup[i+1,0] = name; 
						global.showPickup[i+1,1] = upgradelevel; 
						global.showPickup[i+1,2] = stackcount;
						return(0);
					}	
				}
					return(0)
				
			}
			
		} else if remainder > 0 {
			global.inventory[i+1, 9] = global.inventory[i+1, 9] + remainder;
			
			if global.inventory[i+1, 9] <= 100 { // If less than 100, no remainder and show that you picked up item
				
				remainder = 0
				stop_adding = true;
				
				pickedup = true;
				alarm[0] = 60;	
				
				// Loop through the pickup display array and add the item name rarity and stackcount to it
				for (i = 0; i < 30; i++){
				
					if global.showPickup[i] = -1 {
						global.showPickup[i] = 1;
						global.showPickup[i+1,0] = name; 
						global.showPickup[i+1,1] = upgradelevel; 
						global.showPickup[i+1,2] = stackcount;
						return(0);
					}	
				}				
			}
			
			if global.inventory[i+1, 9] > 100 {
				remainder = global.inventory[i+1, 9] - 100;
				global.inventory[i+1, 9] = 100;
			}
			
		}
		
		
		if global.inventory[i+1, 9] > 100 {
			remainder = global.inventory[i+1, 9] - 100;
			global.inventory[i+1, 9] = 100;
		} 
	
	no_add = true;
	}
	
	
}

if no_add = false {
	remainder =argument1;
}

return(remainder);

/* -- OLD CODE
if argument1 > 0 and argument1 <= 100 and argument2 > 0 and argument2 <= 100 {

for (i = 0; i < 60; i++){

	// Check to see if there is an item in our inventory that is the same item that we're trying to pick up
	// If its a stackable item and we have one in our inventory, then do this
	if (global.inventory[i] == argument0) 
	{

		for (j = 9; j< 10; j++){
			// If the stack is less than 100, then add to it. 
			if global.inventory[i+1, 9] < 100 {
			
				global.inventory[i+1, 9] = global.inventory[i+1, 9]+ argument2;
				
				// If it adds the count and goes over 100, sets it to 100 max, returns the rest as a remainder.
				if global.inventory[i+1, 9] > 100{
					var remainder = global.inventory[i+1, 9] - 100;
					global.inventory[i+1, 9] = 100;
					//audio_play_sound(snd_mgs_alert,9,false);
					//return(remainder);
					
				} else {
					// Return added if its not above 100
					return ("Added");
				}
				
				// Return the remainder if there is one after picking up an item. 
				return(remainder);

			} 
		}

	}
}
}

return(0);
	/**/