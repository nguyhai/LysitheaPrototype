/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55FDEC23
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)just_spawned = true;$(13_10)flashing = true;$(13_10)spd = 1;$(13_10)damaged = false;$(13_10)level = 1;$(13_10)damage = 20;$(13_10)maxhp = 30;$(13_10)coins = irandom_range(0, 5);$(13_10)hspd = 0;$(13_10)vspd = 0;	$(13_10)grav = .6;$(13_10)hp = 30;$(13_10)acc = 2$(13_10)image_speed = .5;$(13_10)$(13_10)// Choose which direction to head$(13_10)$(13_10)state = choose(snake_move_right_state, snake_move_left_state);"
/// @description Execute Code\n
just_spawned = true;
flashing = true;
spd = 1;
damaged = false;
level = 1;
damage = 20;
maxhp = 30;
coins = irandom_range(0, 5);
hspd = 0;
vspd = 0;	
grav = .6;
hp = 30;
acc = 2
image_speed = .5;

// Choose which direction to head

state = choose(snake_move_right_state, snake_move_left_state);