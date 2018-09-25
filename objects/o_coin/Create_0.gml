/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5679547E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Coins last 3 mins after being created$(13_10)alarm[1] = room_speed * 180;$(13_10)$(13_10)image_xscale = .8;$(13_10)image_yscale = .8;$(13_10)pickedup = false$(13_10)vspd = -7;$(13_10)hspd = irandom_range(-2,2);$(13_10)grav = 0.6$(13_10)acc = 2$(13_10)draw_y = y;$(13_10)value = irandom_range(1,10);$(13_10)addgold = false;$(13_10)totalgold = 0;"
/// @description Execute Code
// Coins last 3 mins after being created
alarm[1] = room_speed * 180;

image_xscale = .8;
image_yscale = .8;
pickedup = false
vspd = -7;
hspd = irandom_range(-2,2);
grav = 0.6
acc = 2
draw_y = y;
value = irandom_range(1,10);
addgold = false;
totalgold = 0;