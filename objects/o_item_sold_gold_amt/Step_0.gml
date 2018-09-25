/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43FF0524
/// @DnDArgument : "code" "timer +=1;$(13_10)$(13_10)x = o_player.x;$(13_10)y = o_player.y - 120;$(13_10)$(13_10)if timer = room_speed * 2.5 {$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if timer > room_speed * 1.5{$(13_10)	image_alpha -= .015;$(13_10)} else {$(13_10)$(13_10)	image_alpha = 1$(13_10)}"
timer +=1;

x = o_player.x;
y = o_player.y - 120;

if timer = room_speed * 2.5 {
	instance_destroy();
}

if timer > room_speed * 1.5{
	image_alpha -= .015;
} else {

	image_alpha = 1
}