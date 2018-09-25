/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E506ED6
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)image_xscale = 1;$(13_10)image_yscale = 1;$(13_10)sprite_index = spr_hornet;$(13_10)image_speed = 0.50;$(13_10)$(13_10)// Create variables for movement$(13_10)just_spawned = true;$(13_10)flashing = true;$(13_10)spd = 1;$(13_10)damaged = false;$(13_10)level = 6;$(13_10)damage = 100;$(13_10)hp = 600$(13_10)maxhp = 600;$(13_10)coins = irandom_range(0, 5);$(13_10)$(13_10)hspd = 0;$(13_10)vspd = 0;$(13_10)spd = 2;$(13_10)$(13_10)// Set sight range where it changes to chase state$(13_10)sight = 350;$(13_10)$(13_10)attacking = false;$(13_10)$(13_10)hstate = hornet_idle_state;"
/// @description Execute Code\n
image_xscale = 1;
image_yscale = 1;
sprite_index = spr_hornet;
image_speed = 0.50;

// Create variables for movement
just_spawned = true;
flashing = true;
spd = 1;
damaged = false;
level = 6;
damage = 100;
hp = 600
maxhp = 600;
coins = irandom_range(0, 5);

hspd = 0;
vspd = 0;
spd = 2;

// Set sight range where it changes to chase state
sight = 350;

attacking = false;

hstate = hornet_idle_state;