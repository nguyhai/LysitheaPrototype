/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42C11EFD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Instead of adding, we'll remove$(13_10)for (i = 0; i< maxItems; i++){$(13_10)	if (global.inventory[i] == argument0) // if slot i contains argument0$(13_10)	{$(13_10)		global.inventory[i] = -1;$(13_10)		$(13_10)		// Putting a return 1 means the script sends back a 1 to where it came from$(13_10)		return (1);$(13_10)	}$(13_10)}$(13_10)$(13_10)return(0);$(13_10)"
/// @description Execute Code
// Instead of adding, we'll remove
for (i = 0; i< maxItems; i++){
	if (global.inventory[i] == argument0) // if slot i contains argument0
	{
		global.inventory[i] = -1;
		
		// Putting a return 1 means the script sends back a 1 to where it came from
		return (1);
	}
}

return(0);