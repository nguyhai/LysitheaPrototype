/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7BC2A547
/// @DnDArgument : "code" "/// THIS IS FOR INVENTORY DROPS$(13_10)itempickedup = false;$(13_10)$(13_10)// Item last 3 mins after being on the ground$(13_10)alarm[1] = room_speed * 180;$(13_10)$(13_10)play_sound =1;$(13_10)pickedup = false;$(13_10)// If dropped from inventory, will take the stats of what is currently being$(13_10)// Held on the mouse $(13_10)index = mouseItem;$(13_10)image_speed = 0;$(13_10)image_index = index;$(13_10)$(13_10)//Draw stats variable$(13_10)drawstats = false;$(13_10)$(13_10)// Need vspd/hspd/grav for collision and for it popping out$(13_10)hspd=0;$(13_10)vspd=-6;$(13_10)grav=.6;$(13_10)$(13_10)// Item stats for dropping from inventory$(13_10)$(13_10)type				 = o_mouseitem.type				;$(13_10)levelreq			 = o_mouseitem.levelreq			;$(13_10)mindamage			 = o_mouseitem.mindamage		;	$(13_10)maxdamage			 = o_mouseitem.maxdamage		;	$(13_10)sockets				 = o_mouseitem.sockets			;	$(13_10)name				 = o_mouseitem.name				;$(13_10)description			 = o_mouseitem.description		;	$(13_10)rarity				 = o_mouseitem.rarity			;	$(13_10)stackable			 = o_mouseitem.stackable		;	$(13_10)stackcount			 = o_mouseitem.stackcount		;	$(13_10)critical			 = o_mouseitem.critical			;$(13_10)upgradelevel		 = o_mouseitem.upgradelevel		;$(13_10)sprite				 = o_mouseitem.sprite			;	$(13_10)spriteindex			 = o_mouseitem.spriteindex		;	$(13_10)healamount			 = o_mouseitem.healamount		;	$(13_10)defense				 = o_mouseitem.defense			;	$(13_10)physresist			 = o_mouseitem.physresist		;	$(13_10)fireresist			 = o_mouseitem.fireresist		;	$(13_10)lightningresist		 = o_mouseitem.lightningresist	;	$(13_10)iceresist			 = o_mouseitem.iceresist		;	$(13_10)lightresist			 = o_mouseitem.lightresist		;	$(13_10)shadowresist		 = o_mouseitem.shadowresist		;$(13_10)allelementresist	 = o_mouseitem.allelementresist	;$(13_10)subweapon			 = o_mouseitem.subweapon		;	$(13_10)socket1				 = o_mouseitem.socket1			;	$(13_10)socket2				 = o_mouseitem.socket2			;	$(13_10)socket3				 = o_mouseitem.socket3			;	$(13_10)abilities			 = o_mouseitem.abilities		;	$(13_10)ability1			 = o_mouseitem.ability1			;$(13_10)ability2			 = o_mouseitem.ability2			;$(13_10)ability3			 = o_mouseitem.ability3			;$(13_10)statbonuses			 = o_mouseitem.statbonuses		;	$(13_10)strbonus			 = o_mouseitem.strbonus			;$(13_10)dexbonus			 = o_mouseitem.dexbonus			;$(13_10)intelbonus			 = o_mouseitem.intelbonus		;	$(13_10)vitbonus			 = o_mouseitem.vitbonus			;$(13_10)physbonus			 = o_mouseitem.physbonus		;	$(13_10)firebonus			 = o_mouseitem.firebonus		;	$(13_10)lightningbonus		 = o_mouseitem.lightningbonus	;	$(13_10)icebonus			 = o_mouseitem.icebonus			;$(13_10)lightbonus			 = o_mouseitem.lightbonus		;	$(13_10)shadowbonus			 = o_mouseitem.shadowbonus		;	$(13_10)allelementbonus		 = o_mouseitem.allelementbonus	;	$(13_10)set					 = o_mouseitem.set				;	$(13_10)setbonus1			 = o_mouseitem.setbonus1		;	$(13_10)setbonus2			 = o_mouseitem.setbonus2		;	$(13_10)setbonus3			 = o_mouseitem.setbonus3		;	$(13_10)setdescription1		 = o_mouseitem.setdescription1	;	$(13_10)setdescription2		 = o_mouseitem.setdescription2	;	$(13_10)setdescription3		 = o_mouseitem.setdescription3	;$(13_10)statbonus1			 = o_mouseitem.statbonus1		;	$(13_10)statbonus2			 = o_mouseitem.statbonus2		;	$(13_10)statbonus3			 = o_mouseitem.statbonus3		;	$(13_10)evasion				 = o_mouseitem.evasion			;	$(13_10)	$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// THIS IS FOR INVENTORY DROPS
itempickedup = false;

// Item last 3 mins after being on the ground
alarm[1] = room_speed * 180;

play_sound =1;
pickedup = false;
// If dropped from inventory, will take the stats of what is currently being
// Held on the mouse 
index = mouseItem;
image_speed = 0;
image_index = index;

//Draw stats variable
drawstats = false;

// Need vspd/hspd/grav for collision and for it popping out
hspd=0;
vspd=-6;
grav=.6;

// Item stats for dropping from inventory

type				 = o_mouseitem.type				;
levelreq			 = o_mouseitem.levelreq			;
mindamage			 = o_mouseitem.mindamage		;	
maxdamage			 = o_mouseitem.maxdamage		;	
sockets				 = o_mouseitem.sockets			;	
name				 = o_mouseitem.name				;
description			 = o_mouseitem.description		;	
rarity				 = o_mouseitem.rarity			;	
stackable			 = o_mouseitem.stackable		;	
stackcount			 = o_mouseitem.stackcount		;	
critical			 = o_mouseitem.critical			;
upgradelevel		 = o_mouseitem.upgradelevel		;
sprite				 = o_mouseitem.sprite			;	
spriteindex			 = o_mouseitem.spriteindex		;	
healamount			 = o_mouseitem.healamount		;	
defense				 = o_mouseitem.defense			;	
physresist			 = o_mouseitem.physresist		;	
fireresist			 = o_mouseitem.fireresist		;	
lightningresist		 = o_mouseitem.lightningresist	;	
iceresist			 = o_mouseitem.iceresist		;	
lightresist			 = o_mouseitem.lightresist		;	
shadowresist		 = o_mouseitem.shadowresist		;
allelementresist	 = o_mouseitem.allelementresist	;
subweapon			 = o_mouseitem.subweapon		;	
socket1				 = o_mouseitem.socket1			;	
socket2				 = o_mouseitem.socket2			;	
socket3				 = o_mouseitem.socket3			;	
abilities			 = o_mouseitem.abilities		;	
ability1			 = o_mouseitem.ability1			;
ability2			 = o_mouseitem.ability2			;
ability3			 = o_mouseitem.ability3			;
statbonuses			 = o_mouseitem.statbonuses		;	
strbonus			 = o_mouseitem.strbonus			;
dexbonus			 = o_mouseitem.dexbonus			;
intelbonus			 = o_mouseitem.intelbonus		;	
vitbonus			 = o_mouseitem.vitbonus			;
physbonus			 = o_mouseitem.physbonus		;	
firebonus			 = o_mouseitem.firebonus		;	
lightningbonus		 = o_mouseitem.lightningbonus	;	
icebonus			 = o_mouseitem.icebonus			;
lightbonus			 = o_mouseitem.lightbonus		;	
shadowbonus			 = o_mouseitem.shadowbonus		;	
allelementbonus		 = o_mouseitem.allelementbonus	;	
set					 = o_mouseitem.set				;	
setbonus1			 = o_mouseitem.setbonus1		;	
setbonus2			 = o_mouseitem.setbonus2		;	
setbonus3			 = o_mouseitem.setbonus3		;	
setdescription1		 = o_mouseitem.setdescription1	;	
setdescription2		 = o_mouseitem.setdescription2	;	
setdescription3		 = o_mouseitem.setdescription3	;
statbonus1			 = o_mouseitem.statbonus1		;	
statbonus2			 = o_mouseitem.statbonus2		;	
statbonus3			 = o_mouseitem.statbonus3		;	
evasion				 = o_mouseitem.evasion			;