/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C3CF1F7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Initialize tooltip variables$(13_10)index			=global.inventory[slot]; $(13_10)type			=global.inventory[slot+1,0];$(13_10)levelreq		=global.inventory[slot+1,1];$(13_10)mindamage		=global.inventory[slot+1,2];$(13_10)maxdamage		=global.inventory[slot+1,3];$(13_10)sockets			=global.inventory[slot+1,4];$(13_10)name			=global.inventory[slot+1,5];$(13_10)description		=global.inventory[slot+1,6];$(13_10)rarity			=global.inventory[slot+1,7];$(13_10)stackable		=global.inventory[slot+1,8];$(13_10)stackcount		=global.inventory[slot+1,9];$(13_10)critical		=global.inventory[slot+1,10];$(13_10)upgradelevel	=global.inventory[slot+1,11];$(13_10)sprite			=global.inventory[slot+1,12];$(13_10)spriteindex		=global.inventory[slot+1,13];$(13_10)healamount		=global.inventory[slot+1,14];$(13_10)defense			=global.inventory[slot+1,15];$(13_10)physresist		=global.inventory[slot+1,16];$(13_10)fireresist		=global.inventory[slot+1,17];$(13_10)lightningresist	=global.inventory[slot+1,18];$(13_10)iceresist		=global.inventory[slot+1,19];$(13_10)lightresist		=global.inventory[slot+1,20];$(13_10)shadowresist	=global.inventory[slot+1,21];$(13_10)allelementresist=global.inventory[slot+1,22];$(13_10)subweapon		=global.inventory[slot+1,23];$(13_10)socket1			=global.inventory[slot+1,24];$(13_10)socket2			=global.inventory[slot+1,25];$(13_10)socket3			=global.inventory[slot+1,26];$(13_10)abilities		=global.inventory[slot+1,27];$(13_10)ability1		=global.inventory[slot+1,28];$(13_10)ability2		=global.inventory[slot+1,29];$(13_10)ability3		=global.inventory[slot+1,30];$(13_10)statbonuses		=global.inventory[slot+1,31];$(13_10)strbonus		=global.inventory[slot+1,32];$(13_10)dexbonus		=global.inventory[slot+1,33];$(13_10)intelbonus		=global.inventory[slot+1,34];$(13_10)vitbonus		=global.inventory[slot+1,35];$(13_10)physbonus		=global.inventory[slot+1,36];$(13_10)firebonus		=global.inventory[slot+1,37];$(13_10)lightningbonus	=global.inventory[slot+1,38];$(13_10)icebonus		=global.inventory[slot+1,39];$(13_10)lightbonus		=global.inventory[slot+1,40];$(13_10)shadowbonus		=global.inventory[slot+1,41];$(13_10)allelementbonus	=global.inventory[slot+1,42];$(13_10)set				=global.inventory[slot+1,43];$(13_10)setbonus1		=global.inventory[slot+1,44];$(13_10)setbonus2		=global.inventory[slot+1,45];$(13_10)setbonus3		=global.inventory[slot+1,46];$(13_10)setdescription1	=global.inventory[slot+1,47];$(13_10)setdescription2	=global.inventory[slot+1,48];$(13_10)setdescription3	=global.inventory[slot+1,49];$(13_10)statbonus1		=global.inventory[slot+1,50];$(13_10)statbonus2		=global.inventory[slot+1,51];$(13_10)statbonus3		=global.inventory[slot+1,52];$(13_10)evasion			=global.inventory[slot+1,53];$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Initialize tooltip variables
index			=global.inventory[slot]; 
type			=global.inventory[slot+1,0];
levelreq		=global.inventory[slot+1,1];
mindamage		=global.inventory[slot+1,2];
maxdamage		=global.inventory[slot+1,3];
sockets			=global.inventory[slot+1,4];
name			=global.inventory[slot+1,5];
description		=global.inventory[slot+1,6];
rarity			=global.inventory[slot+1,7];
stackable		=global.inventory[slot+1,8];
stackcount		=global.inventory[slot+1,9];
critical		=global.inventory[slot+1,10];
upgradelevel	=global.inventory[slot+1,11];
sprite			=global.inventory[slot+1,12];
spriteindex		=global.inventory[slot+1,13];
healamount		=global.inventory[slot+1,14];
defense			=global.inventory[slot+1,15];
physresist		=global.inventory[slot+1,16];
fireresist		=global.inventory[slot+1,17];
lightningresist	=global.inventory[slot+1,18];
iceresist		=global.inventory[slot+1,19];
lightresist		=global.inventory[slot+1,20];
shadowresist	=global.inventory[slot+1,21];
allelementresist=global.inventory[slot+1,22];
subweapon		=global.inventory[slot+1,23];
socket1			=global.inventory[slot+1,24];
socket2			=global.inventory[slot+1,25];
socket3			=global.inventory[slot+1,26];
abilities		=global.inventory[slot+1,27];
ability1		=global.inventory[slot+1,28];
ability2		=global.inventory[slot+1,29];
ability3		=global.inventory[slot+1,30];
statbonuses		=global.inventory[slot+1,31];
strbonus		=global.inventory[slot+1,32];
dexbonus		=global.inventory[slot+1,33];
intelbonus		=global.inventory[slot+1,34];
vitbonus		=global.inventory[slot+1,35];
physbonus		=global.inventory[slot+1,36];
firebonus		=global.inventory[slot+1,37];
lightningbonus	=global.inventory[slot+1,38];
icebonus		=global.inventory[slot+1,39];
lightbonus		=global.inventory[slot+1,40];
shadowbonus		=global.inventory[slot+1,41];
allelementbonus	=global.inventory[slot+1,42];
set				=global.inventory[slot+1,43];
setbonus1		=global.inventory[slot+1,44];
setbonus2		=global.inventory[slot+1,45];
setbonus3		=global.inventory[slot+1,46];
setdescription1	=global.inventory[slot+1,47];
setdescription2	=global.inventory[slot+1,48];
setdescription3	=global.inventory[slot+1,49];
statbonus1		=global.inventory[slot+1,50];
statbonus2		=global.inventory[slot+1,51];
statbonus3		=global.inventory[slot+1,52];
evasion			=global.inventory[slot+1,53];