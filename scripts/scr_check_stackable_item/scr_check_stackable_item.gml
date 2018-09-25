/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29FEAA3D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/* Check to see if we have a stackable item with the same name in our$(13_10)Inventory. If yes, and if it is under 100 stacks, then return that info. $(13_10)argument0 = index$(13_10)*/$(13_10)$(13_10)for (i=0;i<60;i++){$(13_10)$(13_10)	// If there is an item with the same name within those 60 slots. $(13_10)	// And if it's stackcount is less than 100$(13_10)	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {$(13_10)		return(1);$(13_10)	}$(13_10)}$(13_10)// If not able to find item with same name and under 100, return 0$(13_10)$(13_10)return(0);"
/// @description Execute Code
/* Check to see if we have a stackable item with the same name in our
Inventory. If yes, and if it is under 100 stacks, then return that info. 
argument0 = index
*/

for (i=0;i<60;i++){

	// If there is an item with the same name within those 60 slots. 
	// And if it's stackcount is less than 100
	if global.inventory[i] == argument0 and global.inventory[i+1,9] < 100 {
		return(1);
	}
}
// If not able to find item with same name and under 100, return 0

return(0);/**/