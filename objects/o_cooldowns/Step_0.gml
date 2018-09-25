/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65184319
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if instance_exists(o_lightning_slash){$(13_10)	//room speed times cooldown time$(13_10)	o_call_lightning.cooltime = 1;$(13_10)	//alarm[0] = room_speed * 2.5;$(13_10)}"
/// @description Execute Code

if instance_exists(o_lightning_slash){
	//room speed times cooldown time
	o_call_lightning.cooltime = 1;
	//alarm[0] = room_speed * 2.5;
}