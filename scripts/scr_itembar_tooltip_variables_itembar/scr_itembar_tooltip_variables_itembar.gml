/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D8C9E91
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Initialize tooltip variables itembar$(13_10)index			=global.itembar[argument0]; $(13_10)type			=global.itembar[argument0+1,0];$(13_10)levelreq		=global.itembar[argument0+1,1];$(13_10)mindamage		=global.itembar[argument0+1,2];$(13_10)maxdamage		=global.itembar[argument0+1,3];$(13_10)sockets			=global.itembar[argument0+1,4];$(13_10)name			=global.itembar[argument0+1,5];$(13_10)description		=global.itembar[argument0+1,6];$(13_10)rarity			=global.itembar[argument0+1,7];$(13_10)stackable		=global.itembar[argument0+1,8];$(13_10)stackcount		=global.itembar[argument0+1,9];$(13_10)critical		=global.itembar[argument0+1,10];$(13_10)upgradelevel	=global.itembar[argument0+1,11];$(13_10)sprite			=global.itembar[argument0+1,12];$(13_10)spriteindex		=global.itembar[argument0+1,13];$(13_10)healamount		=global.itembar[argument0+1,14];$(13_10)defense			=global.itembar[argument0+1,15];$(13_10)physresist		=global.itembar[argument0+1,16];$(13_10)fireresist		=global.itembar[argument0+1,17];$(13_10)lightningresist	=global.itembar[argument0+1,18];$(13_10)iceresist		=global.itembar[argument0+1,19];$(13_10)lightresist		=global.itembar[argument0+1,20];$(13_10)shadowresist	=global.itembar[argument0+1,21];$(13_10)allelementresist=global.itembar[argument0+1,22];$(13_10)subweapon		=global.itembar[argument0+1,23];$(13_10)socket1			=global.itembar[argument0+1,24];$(13_10)socket2			=global.itembar[argument0+1,25];$(13_10)socket3			=global.itembar[argument0+1,26];$(13_10)abilities		=global.itembar[argument0+1,27];$(13_10)ability1		=global.itembar[argument0+1,28];$(13_10)ability2		=global.itembar[argument0+1,29];$(13_10)ability3		=global.itembar[argument0+1,30];$(13_10)statbonuses		=global.itembar[argument0+1,31];$(13_10)strbonus		=global.itembar[argument0+1,32];$(13_10)dexbonus		=global.itembar[argument0+1,33];$(13_10)intelbonus		=global.itembar[argument0+1,34];$(13_10)vitbonus		=global.itembar[argument0+1,35];$(13_10)physbonus		=global.itembar[argument0+1,36];$(13_10)firebonus		=global.itembar[argument0+1,37];$(13_10)lightningbonus	=global.itembar[argument0+1,38];$(13_10)icebonus		=global.itembar[argument0+1,39];$(13_10)lightbonus		=global.itembar[argument0+1,40];$(13_10)shadowbonus		=global.itembar[argument0+1,41];$(13_10)allelementbonus	=global.itembar[argument0+1,42];$(13_10)set				=global.itembar[argument0+1,43];$(13_10)setbonus1		=global.itembar[argument0+1,44];$(13_10)setbonus2		=global.itembar[argument0+1,45];$(13_10)setbonus3		=global.itembar[argument0+1,46];$(13_10)setdescription1	=global.itembar[argument0+1,47];$(13_10)setdescription2	=global.itembar[argument0+1,48];$(13_10)setdescription3	=global.itembar[argument0+1,49];$(13_10)statbonus1		=global.itembar[argument0+1,50];$(13_10)statbonus2		=global.itembar[argument0+1,51];$(13_10)statbonus3		=global.itembar[argument0+1,52];$(13_10)evasion			=global.itembar[argument0+1,53];$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Initialize tooltip variables itembar
index			=global.itembar[argument0]; 
type			=global.itembar[argument0+1,0];
levelreq		=global.itembar[argument0+1,1];
mindamage		=global.itembar[argument0+1,2];
maxdamage		=global.itembar[argument0+1,3];
sockets			=global.itembar[argument0+1,4];
name			=global.itembar[argument0+1,5];
description		=global.itembar[argument0+1,6];
rarity			=global.itembar[argument0+1,7];
stackable		=global.itembar[argument0+1,8];
stackcount		=global.itembar[argument0+1,9];
critical		=global.itembar[argument0+1,10];
upgradelevel	=global.itembar[argument0+1,11];
sprite			=global.itembar[argument0+1,12];
spriteindex		=global.itembar[argument0+1,13];
healamount		=global.itembar[argument0+1,14];
defense			=global.itembar[argument0+1,15];
physresist		=global.itembar[argument0+1,16];
fireresist		=global.itembar[argument0+1,17];
lightningresist	=global.itembar[argument0+1,18];
iceresist		=global.itembar[argument0+1,19];
lightresist		=global.itembar[argument0+1,20];
shadowresist	=global.itembar[argument0+1,21];
allelementresist=global.itembar[argument0+1,22];
subweapon		=global.itembar[argument0+1,23];
socket1			=global.itembar[argument0+1,24];
socket2			=global.itembar[argument0+1,25];
socket3			=global.itembar[argument0+1,26];
abilities		=global.itembar[argument0+1,27];
ability1		=global.itembar[argument0+1,28];
ability2		=global.itembar[argument0+1,29];
ability3		=global.itembar[argument0+1,30];
statbonuses		=global.itembar[argument0+1,31];
strbonus		=global.itembar[argument0+1,32];
dexbonus		=global.itembar[argument0+1,33];
intelbonus		=global.itembar[argument0+1,34];
vitbonus		=global.itembar[argument0+1,35];
physbonus		=global.itembar[argument0+1,36];
firebonus		=global.itembar[argument0+1,37];
lightningbonus	=global.itembar[argument0+1,38];
icebonus		=global.itembar[argument0+1,39];
lightbonus		=global.itembar[argument0+1,40];
shadowbonus		=global.itembar[argument0+1,41];
allelementbonus	=global.itembar[argument0+1,42];
set				=global.itembar[argument0+1,43];
setbonus1		=global.itembar[argument0+1,44];
setbonus2		=global.itembar[argument0+1,45];
setbonus3		=global.itembar[argument0+1,46];
setdescription1	=global.itembar[argument0+1,47];
setdescription2	=global.itembar[argument0+1,48];
setdescription3	=global.itembar[argument0+1,49];
statbonus1		=global.itembar[argument0+1,50];
statbonus2		=global.itembar[argument0+1,51];
statbonus3		=global.itembar[argument0+1,52];
evasion			=global.itembar[argument0+1,53];