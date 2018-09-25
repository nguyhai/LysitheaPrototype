/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C76FAB8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// This script can only run when there is a remainder (argument1)$(13_10)/* Check to see if we have a stackable item with the same name in our$(13_10)Inventory. If yes, and if it is under 100 stacks, then return that info. $(13_10)argument0 = index$(13_10)*/$(13_10)/*$(13_10)var remainder = argument1;$(13_10)$(13_10)for (i=0;i<60;i++){$(13_10)$(13_10)	// If there is an item with the same name within those 60 slots. $(13_10)	// And if it's stackcount is less than 100$(13_10)	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {$(13_10)		// If we find an item that is less than 100 stacks, and same item, add remainder$(13_10)		// Stackcount is the stackcount plus remainder.$(13_10)			global.inventory[i+1,9] = global.inventory[i+1,9]+remainder;$(13_10)			if global.inventory[i+1,9] > 100 {$(13_10)				remainder = global.inventory[i+1,9] -100;$(13_10)				global.inventory[i+1,9] = 100$(13_10)$(13_10)			}$(13_10)	} $(13_10)$(13_10)}$(13_10)$(13_10)// If not able to find item with same name and under 100, return whatever remainder is left$(13_10)// We will use it to create another item$(13_10)$(13_10)return(remainder);$(13_10)*/$(13_10)var remainder = argument1;$(13_10)$(13_10)for (i=0;i<60;i++){$(13_10)$(13_10)	// If there is an item with the same name within those 60 slots. $(13_10)	// And if it's stackcount is less than 100$(13_10)	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {$(13_10)		// If we find an item that is less than 100 stacks, and same item, add remainder$(13_10)		// Stackcount is the stackcount plus remainder.$(13_10)			global.inventory[i+1,9] = global.inventory[i+1,9]+remainder;$(13_10)			if global.inventory[i+1,9] > 100 {$(13_10)				remainder = global.inventory[i+1,9] -100;$(13_10)				global.inventory[i+1,9] = 100$(13_10)$(13_10)			}$(13_10)	} $(13_10)$(13_10)}$(13_10)$(13_10)// If not able to find item with same name and under 100, return whatever remainder is left$(13_10)// We will use it to create another item$(13_10)$(13_10)return(remainder);$(13_10)$(13_10)"
/// @description Execute Code
// This script can only run when there is a remainder (argument1)
/* Check to see if we have a stackable item with the same name in our
Inventory. If yes, and if it is under 100 stacks, then return that info. 
argument0 = index
*/
/*
var remainder = argument1;

for (i=0;i<60;i++){

	// If there is an item with the same name within those 60 slots. 
	// And if it's stackcount is less than 100
	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {
		// If we find an item that is less than 100 stacks, and same item, add remainder
		// Stackcount is the stackcount plus remainder.
			global.inventory[i+1,9] = global.inventory[i+1,9]+remainder;
			if global.inventory[i+1,9] > 100 {
				remainder = global.inventory[i+1,9] -100;
				global.inventory[i+1,9] = 100

			}
	} 

}

// If not able to find item with same name and under 100, return whatever remainder is left
// We will use it to create another item

return(remainder);
*/
var remainder = argument1;

for (i=0;i<60;i++){

	// If there is an item with the same name within those 60 slots. 
	// And if it's stackcount is less than 100
	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {
		// If we find an item that is less than 100 stacks, and same item, add remainder
		// Stackcount is the stackcount plus remainder.
			global.inventory[i+1,9] = global.inventory[i+1,9]+remainder;
			if global.inventory[i+1,9] > 100 {
				remainder = global.inventory[i+1,9] -100;
				global.inventory[i+1,9] = 100

			}
	} 

}

// If not able to find item with same name and under 100, return whatever remainder is left
// We will use it to create another item

return(remainder);

/**/