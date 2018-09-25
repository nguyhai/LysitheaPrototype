/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 750875E4
/// @DnDArgument : "code" "///Apply Friction$(13_10)var amount = argument[0];$(13_10)$(13_10)if (hspd !=0) {$(13_10)	if (abs(hspd) - amount > 0){$(13_10)		hspd -=amount*image_xscale;$(13_10)	} else{$(13_10)		hspd = 0;$(13_10)	}$(13_10)}"

{
	///Apply Friction
var amount = argument[0];

if (hspd !=0) {
	if (abs(hspd) - amount > 0){
		hspd -=amount*image_xscale;
	} else{
		hspd = 0;
	}
}
}

