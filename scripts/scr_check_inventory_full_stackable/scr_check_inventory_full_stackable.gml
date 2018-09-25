/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1875063A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// We are just checking the inventory slots to see if there is one that is empty. If there are ANY empty $(13_10)// slots, we return a 1.$(13_10)$(13_10)for (i = 0; i < 60; i++){$(13_10)	$(13_10)	if (global.inventory[i+1, 9] < 100) and global.inventory[i] = index {$(13_10)		// If there is an empty slot, return 1$(13_10)		return(1)$(13_10)$(13_10)	}	$(13_10)} $(13_10)// If there is no empty slots, then return 0$(13_10)return(0);$(13_10)"
/// @description Execute Code
// We are just checking the inventory slots to see if there is one that is empty. If there are ANY empty 
// slots, we return a 1.

for (i = 0; i < 60; i++){
	
	if (global.inventory[i+1, 9] < 100) and global.inventory[i] = index {
		// If there is an empty slot, return 1
		return(1)

	}	
} 
// If there is no empty slots, then return 0
return(0);