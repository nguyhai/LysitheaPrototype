/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31FC3991
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Sprite Index$(13_10)// Type (sword, etc)$(13_10)// Level Req$(13_10)// Min Damage$(13_10)// Max Damage$(13_10)// Sockets$(13_10)$(13_10)/*$(13_10)$(13_10)var addrandom;$(13_10)$(13_10)addrandom = scr_itempickup($(13_10)	choose(0,1,2,3),$(13_10)	choose("Sword","Bow","Gun"),$(13_10)	choose(5,10,15), $(13_10)	irandom_range(5,9), $(13_10)	irandom_range(12,15),$(13_10)	choose(0,1,2,3)$(13_10));$(13_10)$(13_10)// If it returns 0$(13_10)if addrandom == 0{$(13_10)	show_message(" inventory is full!");$(13_10)}$(13_10)"
/// @description Execute Code
// Sprite Index
// Type (sword, etc)
// Level Req
// Min Damage
// Max Damage
// Sockets

/*

var addrandom;

addrandom = scr_itempickup(
	choose(0,1,2,3),
	choose("Sword","Bow","Gun"),
	choose(5,10,15), 
	irandom_range(5,9), 
	irandom_range(12,15),
	choose(0,1,2,3)
);

// If it returns 0
if addrandom == 0{
	show_message(" inventory is full!");
}
/**/