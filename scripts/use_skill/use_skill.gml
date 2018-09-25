/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3AB368A7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)o_player.state = other.state_save;$(13_10)if o_player.vspd == 0{$(13_10)other.cooldown = 1;$(13_10)other.alarm[1] = other.cooldowntime*room_speed;$(13_10)attack =  true;$(13_10)alarm[0] = 3; $(13_10)}$(13_10)$(13_10)$(13_10)// Setting the cooldown timer to on$(13_10)if other.cooldown !=0 {$(13_10)	drawcd = true;$(13_10)	myTime = other.cooldowntime;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
o_player.state = other.state_save;
if o_player.vspd == 0{
other.cooldown = 1;
other.alarm[1] = other.cooldowntime*room_speed;
attack =  true;
alarm[0] = 3; 
}


// Setting the cooldown timer to on
if other.cooldown !=0 {
	drawcd = true;
	myTime = other.cooldowntime;
}