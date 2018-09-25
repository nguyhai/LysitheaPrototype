/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DE4D806
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Check every slot to see if we can find item that we're looking for$(13_10)for (i = 0; i < 60; i++){$(13_10)	if (global.inventory[i] == argument0) // if slot i contains argumet0$(13_10)	{$(13_10)		// If it finds the item, return 1$(13_10)		// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)		return (1);$(13_10)	}$(13_10)}$(13_10)return(0);$(13_10)"
/// @description Execute Code
// Check every slot to see if we can find item that we're looking for
for (i = 0; i < 60; i++){
	if (global.inventory[i] == argument0) // if slot i contains argumet0
	{
		// If it finds the item, return 1
		// Putting a return 1 means the script sends back a 1 to where it came from
		return (1);
	}
}
return(0);