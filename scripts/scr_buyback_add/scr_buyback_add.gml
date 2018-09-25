/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07020E93
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)"
/// @description Execute Code

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69EAA4F5
/// @DnDArgument : "code" "/// @description Checks to see if there are any free slots in shop buyback$(13_10)// argument0 = slot$(13_10)for (i = 21; i < 37; i++) {$(13_10)$(13_10)if global.shop[i] = -1 { // If index/slot is empty on shop buyback, $(13_10)	$(13_10)global.shop[i]		=	global.inventory[argument0] 		;$(13_10)global.shop[i+1,0]	=	global.inventory[argument0+1,0]		;$(13_10)global.shop[i+1,1]	=	global.inventory[argument0+1,1]		;$(13_10)global.shop[i+1,2]	=	global.inventory[argument0+1,2]		;$(13_10)global.shop[i+1,3]	=	global.inventory[argument0+1,3]		;$(13_10)global.shop[i+1,4]	=	global.inventory[argument0+1,4]		;$(13_10)global.shop[i+1,5]	=	global.inventory[argument0+1,5]		;$(13_10)global.shop[i+1,6]	=	global.inventory[argument0+1,6]		;$(13_10)global.shop[i+1,7]	=	global.inventory[argument0+1,7]		;$(13_10)global.shop[i+1,8]	=	global.inventory[argument0+1,8]		;$(13_10)global.shop[i+1,9]	=	global.inventory[argument0+1,9]		;$(13_10)global.shop[i+1,10]	=	global.inventory[argument0+1,10]	;$(13_10)global.shop[i+1,11]	=	global.inventory[argument0+1,11]	;$(13_10)global.shop[i+1,12]	=	global.inventory[argument0+1,12]	;$(13_10)global.shop[i+1,13]	=	global.inventory[argument0+1,13]	;$(13_10)global.shop[i+1,14]	=	global.inventory[argument0+1,14]	;$(13_10)global.shop[i+1,15]	=	global.inventory[argument0+1,15]	;$(13_10)global.shop[i+1,16]	=	global.inventory[argument0+1,16]	;$(13_10)global.shop[i+1,17]	=	global.inventory[argument0+1,17]	;$(13_10)global.shop[i+1,18]	=	global.inventory[argument0+1,18]	;$(13_10)global.shop[i+1,19]	=	global.inventory[argument0+1,19]	;$(13_10)global.shop[i+1,20]	=	global.inventory[argument0+1,20]	;$(13_10)global.shop[i+1,21]	=	global.inventory[argument0+1,21]	;$(13_10)global.shop[i+1,22]	=	global.inventory[argument0+1,22]	;$(13_10)global.shop[i+1,23]	=	global.inventory[argument0+1,23]	;$(13_10)global.shop[i+1,24]	=	global.inventory[argument0+1,24]	;$(13_10)global.shop[i+1,25]	=	global.inventory[argument0+1,25]	;$(13_10)global.shop[i+1,26]	=	global.inventory[argument0+1,26]	;$(13_10)global.shop[i+1,27]	=	global.inventory[argument0+1,27]	;$(13_10)global.shop[i+1,28]	=	global.inventory[argument0+1,28]	;$(13_10)global.shop[i+1,29]	=	global.inventory[argument0+1,29]	;$(13_10)global.shop[i+1,30]	=	global.inventory[argument0+1,30]	;$(13_10)global.shop[i+1,31]	=	global.inventory[argument0+1,31]	;$(13_10)global.shop[i+1,32]	=	global.inventory[argument0+1,32]	;$(13_10)global.shop[i+1,33]	=	global.inventory[argument0+1,33]	;$(13_10)global.shop[i+1,34]	=	global.inventory[argument0+1,34]	;$(13_10)global.shop[i+1,35]	=	global.inventory[argument0+1,35]	;$(13_10)global.shop[i+1,36]	=	global.inventory[argument0+1,36]	;$(13_10)global.shop[i+1,37]	=	global.inventory[argument0+1,37]	;$(13_10)global.shop[i+1,38]	=	global.inventory[argument0+1,38]	;$(13_10)global.shop[i+1,39]	=	global.inventory[argument0+1,39]	;$(13_10)global.shop[i+1,40]	=	global.inventory[argument0+1,40]	;$(13_10)global.shop[i+1,41]	=	global.inventory[argument0+1,41]	;$(13_10)global.shop[i+1,42]	=	global.inventory[argument0+1,42]	;$(13_10)global.shop[i+1,43]	=	global.inventory[argument0+1,43]	;$(13_10)global.shop[i+1,44]	=	global.inventory[argument0+1,44]	;$(13_10)global.shop[i+1,45]	=	global.inventory[argument0+1,45]	;$(13_10)global.shop[i+1,46]	=	global.inventory[argument0+1,46]	;$(13_10)global.shop[i+1,47]	=	global.inventory[argument0+1,47]	;$(13_10)global.shop[i+1,48]	=	global.inventory[argument0+1,48]	;$(13_10)global.shop[i+1,49]	=	global.inventory[argument0+1,49]	;$(13_10)global.shop[i+1,50]	=	global.inventory[argument0+1,50]	;$(13_10)global.shop[i+1,51]	=	global.inventory[argument0+1,51]	;$(13_10)global.shop[i+1,52]	=	global.inventory[argument0+1,52]	;$(13_10)global.shop[i+1,53]	=	global.inventory[argument0+1,53]	;$(13_10)$(13_10)		return(1)$(13_10)	}$(13_10)}$(13_10)return(0);"
/// @description Checks to see if there are any free slots in shop buyback
// argument0 = slot
for (i = 21; i < 37; i++) {

if global.shop[i] = -1 { // If index/slot is empty on shop buyback, 
	
global.shop[i]		=	global.inventory[argument0] 		;
global.shop[i+1,0]	=	global.inventory[argument0+1,0]		;
global.shop[i+1,1]	=	global.inventory[argument0+1,1]		;
global.shop[i+1,2]	=	global.inventory[argument0+1,2]		;
global.shop[i+1,3]	=	global.inventory[argument0+1,3]		;
global.shop[i+1,4]	=	global.inventory[argument0+1,4]		;
global.shop[i+1,5]	=	global.inventory[argument0+1,5]		;
global.shop[i+1,6]	=	global.inventory[argument0+1,6]		;
global.shop[i+1,7]	=	global.inventory[argument0+1,7]		;
global.shop[i+1,8]	=	global.inventory[argument0+1,8]		;
global.shop[i+1,9]	=	global.inventory[argument0+1,9]		;
global.shop[i+1,10]	=	global.inventory[argument0+1,10]	;
global.shop[i+1,11]	=	global.inventory[argument0+1,11]	;
global.shop[i+1,12]	=	global.inventory[argument0+1,12]	;
global.shop[i+1,13]	=	global.inventory[argument0+1,13]	;
global.shop[i+1,14]	=	global.inventory[argument0+1,14]	;
global.shop[i+1,15]	=	global.inventory[argument0+1,15]	;
global.shop[i+1,16]	=	global.inventory[argument0+1,16]	;
global.shop[i+1,17]	=	global.inventory[argument0+1,17]	;
global.shop[i+1,18]	=	global.inventory[argument0+1,18]	;
global.shop[i+1,19]	=	global.inventory[argument0+1,19]	;
global.shop[i+1,20]	=	global.inventory[argument0+1,20]	;
global.shop[i+1,21]	=	global.inventory[argument0+1,21]	;
global.shop[i+1,22]	=	global.inventory[argument0+1,22]	;
global.shop[i+1,23]	=	global.inventory[argument0+1,23]	;
global.shop[i+1,24]	=	global.inventory[argument0+1,24]	;
global.shop[i+1,25]	=	global.inventory[argument0+1,25]	;
global.shop[i+1,26]	=	global.inventory[argument0+1,26]	;
global.shop[i+1,27]	=	global.inventory[argument0+1,27]	;
global.shop[i+1,28]	=	global.inventory[argument0+1,28]	;
global.shop[i+1,29]	=	global.inventory[argument0+1,29]	;
global.shop[i+1,30]	=	global.inventory[argument0+1,30]	;
global.shop[i+1,31]	=	global.inventory[argument0+1,31]	;
global.shop[i+1,32]	=	global.inventory[argument0+1,32]	;
global.shop[i+1,33]	=	global.inventory[argument0+1,33]	;
global.shop[i+1,34]	=	global.inventory[argument0+1,34]	;
global.shop[i+1,35]	=	global.inventory[argument0+1,35]	;
global.shop[i+1,36]	=	global.inventory[argument0+1,36]	;
global.shop[i+1,37]	=	global.inventory[argument0+1,37]	;
global.shop[i+1,38]	=	global.inventory[argument0+1,38]	;
global.shop[i+1,39]	=	global.inventory[argument0+1,39]	;
global.shop[i+1,40]	=	global.inventory[argument0+1,40]	;
global.shop[i+1,41]	=	global.inventory[argument0+1,41]	;
global.shop[i+1,42]	=	global.inventory[argument0+1,42]	;
global.shop[i+1,43]	=	global.inventory[argument0+1,43]	;
global.shop[i+1,44]	=	global.inventory[argument0+1,44]	;
global.shop[i+1,45]	=	global.inventory[argument0+1,45]	;
global.shop[i+1,46]	=	global.inventory[argument0+1,46]	;
global.shop[i+1,47]	=	global.inventory[argument0+1,47]	;
global.shop[i+1,48]	=	global.inventory[argument0+1,48]	;
global.shop[i+1,49]	=	global.inventory[argument0+1,49]	;
global.shop[i+1,50]	=	global.inventory[argument0+1,50]	;
global.shop[i+1,51]	=	global.inventory[argument0+1,51]	;
global.shop[i+1,52]	=	global.inventory[argument0+1,52]	;
global.shop[i+1,53]	=	global.inventory[argument0+1,53]	;

		return(1)
	}
}
return(0);