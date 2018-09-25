/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 224C31E1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)x = o_player.x;$(13_10)y = o_player.y - 90;$(13_10)$(13_10)if dash < maxdash {$(13_10)	dash +=1;$(13_10)}$(13_10)$(13_10)if dash <= maxdash {$(13_10)	showDash = true;$(13_10)} $(13_10)if o_player.sprinting = true {$(13_10)	showDash = true;$(13_10)}$(13_10)$(13_10)if o_player.stamina < o_player.maxstamina {$(13_10)	showDash = true;$(13_10)}$(13_10)$(13_10)if dash >= maxdash and o_player.sprinting = false and o_player.stamina >= o_player.maxstamina{$(13_10)	showDash = false;$(13_10)}$(13_10)$(13_10)$(13_10)if showDash = false {$(13_10)	alpha_fade = 0;$(13_10)} else {$(13_10)	alpha_fade += 0.05;$(13_10)	$(13_10)	if dash >= maxdash {$(13_10)		alpha_fade -=0.05;$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code

x = o_player.x;
y = o_player.y - 90;

if dash < maxdash {
	dash +=1;
}

if dash <= maxdash {
	showDash = true;
} 
if o_player.sprinting = true {
	showDash = true;
}

if o_player.stamina < o_player.maxstamina {
	showDash = true;
}

if dash >= maxdash and o_player.sprinting = false and o_player.stamina >= o_player.maxstamina{
	showDash = false;
}


if showDash = false {
	alpha_fade = 0;
} else {
	alpha_fade += 0.05;
	
	if dash >= maxdash {
		alpha_fade -=0.05;
	}

}