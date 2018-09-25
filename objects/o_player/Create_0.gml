/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3999907A
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)// Black bars thing test$(13_10)cutscene_alpha = 0;$(13_10)topbarscale = 0;$(13_10)bottombarscale = 0;$(13_10)$(13_10)// Test variable for R button - View follows the player$(13_10)following = true;$(13_10)// Test variable for CUTSCENE$(13_10)cutscene = false;$(13_10)$(13_10)canpickup = true;$(13_10)pickuptimer = 0;$(13_10)$(13_10)// Initialize gold variables$(13_10)goldpickup = false;$(13_10)goldvalue = 201;$(13_10)$(13_10)// Initialize stamina variables$(13_10)sprinting = false;$(13_10)stamina = 100;$(13_10)maxstamina = 100;$(13_10)instance_create_depth(x,y,0, o_dash_bar);$(13_10)$(13_10)// Initialize movement variables and hurt state$(13_10)hurt = -1;$(13_10)basespd = 4;$(13_10)spd = 4;$(13_10)acc = 1;$(13_10)hspd = 0;$(13_10)vspd = 0;$(13_10)grav = .6;$(13_10)jumps = 0;$(13_10)jumpsmax = 2;$(13_10)airatk = 0;$(13_10)maxairatk = 1;$(13_10)state = move_state;$(13_10)falling = 0;$(13_10)$(13_10)// For the dash state, initialize the variables$(13_10)right_dash = 1;$(13_10)left_dash = 1;$(13_10)right_dash_timer = 0;$(13_10)left_dash_timer = 0;$(13_10)dashcd = 0;$(13_10)$(13_10)// Create the audio emitter$(13_10)audio_em = audio_emitter_create();$(13_10)recently_hit = false;$(13_10)attacking = false;$(13_10)in_combat = false$(13_10)$(13_10)// Create for room transition $(13_10)$(13_10)last_room = room;$(13_10)$(13_10)// Display Town Name Variables$(13_10)town1 = -1$(13_10)$(13_10)// Need variables for ammo system$(13_10)$(13_10)arrows = 10$(13_10)maxarrows = 10$(13_10)$(13_10)bullets = 7;$(13_10)maxbullets = 7;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code\n
// Black bars thing test
cutscene_alpha = 0;
topbarscale = 0;
bottombarscale = 0;

// Test variable for R button - View follows the player
following = true;
// Test variable for CUTSCENE
cutscene = false;

canpickup = true;
pickuptimer = 0;

// Initialize gold variables
goldpickup = false;
goldvalue = 201;

// Initialize stamina variables
sprinting = false;
stamina = 100;
maxstamina = 100;
instance_create_depth(x,y,0, o_dash_bar);

// Initialize movement variables and hurt state
hurt = -1;
basespd = 4;
spd = 4;
acc = 1;
hspd = 0;
vspd = 0;
grav = .6;
jumps = 0;
jumpsmax = 2;
airatk = 0;
maxairatk = 1;
state = move_state;
falling = 0;

// For the dash state, initialize the variables
right_dash = 1;
left_dash = 1;
right_dash_timer = 0;
left_dash_timer = 0;
dashcd = 0;

// Create the audio emitter
audio_em = audio_emitter_create();
recently_hit = false;
attacking = false;
in_combat = false

// Create for room transition 

last_room = room;

// Display Town Name Variables
town1 = -1

// Need variables for ammo system

arrows = 10
maxarrows = 10

bullets = 7;
maxbullets = 7;