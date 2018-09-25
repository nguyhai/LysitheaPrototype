/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 008DE43E
/// @DnDArgument : "code" "/// THIS IS FOR INVENTORY DROPS$(13_10)itempickedup = false;$(13_10)$(13_10)// Item last 3 mins after being on the ground$(13_10)alarm[1] = room_speed * 180;$(13_10)$(13_10)play_sound =1;$(13_10)pickedup = false;$(13_10)// If dropped from inventory, will take the stats of what is currently being$(13_10)// Held on the mouse $(13_10)//index = mouseItem;$(13_10)image_speed = 0;$(13_10)$(13_10)$(13_10)//Draw stats variable$(13_10)drawstats = false;$(13_10)$(13_10)// Need vspd/hspd/grav for collision and for it popping out$(13_10)hspd=0;$(13_10)vspd=-6;$(13_10)grav=.6;$(13_10)$(13_10)// Item stats for dropping from inventory$(13_10)index			     = o_item_drop_stackable_stats.index				;$(13_10)type				 = o_item_drop_stackable_stats.type					;$(13_10)levelreq			 = o_item_drop_stackable_stats.levelreq				;$(13_10)mindamage			 = o_item_drop_stackable_stats.mindamage			;	$(13_10)maxdamage			 = o_item_drop_stackable_stats.maxdamage			;	$(13_10)sockets				 = o_item_drop_stackable_stats.sockets				;	$(13_10)name				 = o_item_drop_stackable_stats.name					;$(13_10)description			 = o_item_drop_stackable_stats.description			;	$(13_10)rarity				 = o_item_drop_stackable_stats.rarity				;	$(13_10)stackable			 = o_item_drop_stackable_stats.stackable			;	$(13_10)stackcount			 = o_item_drop_stackable_stats.stackcount			;	$(13_10)critical			 = o_item_drop_stackable_stats.critical				;$(13_10)upgradelevel		 = o_item_drop_stackable_stats.upgradelevel			;$(13_10)sprite				 = o_item_drop_stackable_stats.sprite				;	$(13_10)spriteindex			 = o_item_drop_stackable_stats.spriteindex			;	$(13_10)healamount			 = o_item_drop_stackable_stats.healamount			;	$(13_10)defense				 = o_item_drop_stackable_stats.defense				;	$(13_10)physresist			 = o_item_drop_stackable_stats.physresist			;	$(13_10)fireresist			 = o_item_drop_stackable_stats.fireresist			;	$(13_10)lightningresist		 = o_item_drop_stackable_stats.lightningresist		;	$(13_10)iceresist			 = o_item_drop_stackable_stats.iceresist			;	$(13_10)lightresist			 = o_item_drop_stackable_stats.lightresist			;	$(13_10)shadowresist		 = o_item_drop_stackable_stats.shadowresist			;$(13_10)allelementresist	 = o_item_drop_stackable_stats.allelementresist		;$(13_10)subweapon			 = o_item_drop_stackable_stats.subweapon			;	$(13_10)socket1				 = o_item_drop_stackable_stats.socket1				;	$(13_10)socket2				 = o_item_drop_stackable_stats.socket2				;	$(13_10)socket3				 = o_item_drop_stackable_stats.socket3				;	$(13_10)abilities			 = o_item_drop_stackable_stats.abilities			;	$(13_10)ability1			 = o_item_drop_stackable_stats.ability1				;$(13_10)ability2			 = o_item_drop_stackable_stats.ability2				;$(13_10)ability3			 = o_item_drop_stackable_stats.ability3				;$(13_10)statbonuses			 = o_item_drop_stackable_stats.statbonuses			;	$(13_10)strbonus			 = o_item_drop_stackable_stats.strbonus				;$(13_10)dexbonus			 = o_item_drop_stackable_stats.dexbonus				;$(13_10)intelbonus			 = o_item_drop_stackable_stats.intelbonus			;	$(13_10)vitbonus			 = o_item_drop_stackable_stats.vitbonus				;$(13_10)physbonus			 = o_item_drop_stackable_stats.physbonus			;	$(13_10)firebonus			 = o_item_drop_stackable_stats.firebonus			;	$(13_10)lightningbonus		 = o_item_drop_stackable_stats.lightningbonus		;	$(13_10)icebonus			 = o_item_drop_stackable_stats.icebonus				;$(13_10)lightbonus			 = o_item_drop_stackable_stats.lightbonus			;	$(13_10)shadowbonus			 = o_item_drop_stackable_stats.shadowbonus			;	$(13_10)allelementbonus		 = o_item_drop_stackable_stats.allelementbonus		;	$(13_10)set					 = o_item_drop_stackable_stats.set					;	$(13_10)setbonus1			 = o_item_drop_stackable_stats.setbonus1			;	$(13_10)setbonus2			 = o_item_drop_stackable_stats.setbonus2			;	$(13_10)setbonus3			 = o_item_drop_stackable_stats.setbonus3			;	$(13_10)setdescription1		 = o_item_drop_stackable_stats.setdescription1		;	$(13_10)setdescription2		 = o_item_drop_stackable_stats.setdescription2		;	$(13_10)setdescription3		 = o_item_drop_stackable_stats.setdescription3		;$(13_10)statbonus1			 = o_item_drop_stackable_stats.statbonus1			;	$(13_10)statbonus2			 = o_item_drop_stackable_stats.statbonus2			;	$(13_10)statbonus3			 = o_item_drop_stackable_stats.statbonus3			;	$(13_10)evasion				 = o_item_drop_stackable_stats.evasion				;	$(13_10)	$(13_10)image_index = index;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// THIS IS FOR INVENTORY DROPS
itempickedup = false;

// Item last 3 mins after being on the ground
alarm[1] = room_speed * 180;

play_sound =1;
pickedup = false;
// If dropped from inventory, will take the stats of what is currently being
// Held on the mouse 
//index = mouseItem;
image_speed = 0;


//Draw stats variable
drawstats = false;

// Need vspd/hspd/grav for collision and for it popping out
hspd=0;
vspd=-6;
grav=.6;

// Item stats for dropping from inventory
index			     = o_item_drop_stackable_stats.index				;
type				 = o_item_drop_stackable_stats.type					;
levelreq			 = o_item_drop_stackable_stats.levelreq				;
mindamage			 = o_item_drop_stackable_stats.mindamage			;	
maxdamage			 = o_item_drop_stackable_stats.maxdamage			;	
sockets				 = o_item_drop_stackable_stats.sockets				;	
name				 = o_item_drop_stackable_stats.name					;
description			 = o_item_drop_stackable_stats.description			;	
rarity				 = o_item_drop_stackable_stats.rarity				;	
stackable			 = o_item_drop_stackable_stats.stackable			;	
stackcount			 = o_item_drop_stackable_stats.stackcount			;	
critical			 = o_item_drop_stackable_stats.critical				;
upgradelevel		 = o_item_drop_stackable_stats.upgradelevel			;
sprite				 = o_item_drop_stackable_stats.sprite				;	
spriteindex			 = o_item_drop_stackable_stats.spriteindex			;	
healamount			 = o_item_drop_stackable_stats.healamount			;	
defense				 = o_item_drop_stackable_stats.defense				;	
physresist			 = o_item_drop_stackable_stats.physresist			;	
fireresist			 = o_item_drop_stackable_stats.fireresist			;	
lightningresist		 = o_item_drop_stackable_stats.lightningresist		;	
iceresist			 = o_item_drop_stackable_stats.iceresist			;	
lightresist			 = o_item_drop_stackable_stats.lightresist			;	
shadowresist		 = o_item_drop_stackable_stats.shadowresist			;
allelementresist	 = o_item_drop_stackable_stats.allelementresist		;
subweapon			 = o_item_drop_stackable_stats.subweapon			;	
socket1				 = o_item_drop_stackable_stats.socket1				;	
socket2				 = o_item_drop_stackable_stats.socket2				;	
socket3				 = o_item_drop_stackable_stats.socket3				;	
abilities			 = o_item_drop_stackable_stats.abilities			;	
ability1			 = o_item_drop_stackable_stats.ability1				;
ability2			 = o_item_drop_stackable_stats.ability2				;
ability3			 = o_item_drop_stackable_stats.ability3				;
statbonuses			 = o_item_drop_stackable_stats.statbonuses			;	
strbonus			 = o_item_drop_stackable_stats.strbonus				;
dexbonus			 = o_item_drop_stackable_stats.dexbonus				;
intelbonus			 = o_item_drop_stackable_stats.intelbonus			;	
vitbonus			 = o_item_drop_stackable_stats.vitbonus				;
physbonus			 = o_item_drop_stackable_stats.physbonus			;	
firebonus			 = o_item_drop_stackable_stats.firebonus			;	
lightningbonus		 = o_item_drop_stackable_stats.lightningbonus		;	
icebonus			 = o_item_drop_stackable_stats.icebonus				;
lightbonus			 = o_item_drop_stackable_stats.lightbonus			;	
shadowbonus			 = o_item_drop_stackable_stats.shadowbonus			;	
allelementbonus		 = o_item_drop_stackable_stats.allelementbonus		;	
set					 = o_item_drop_stackable_stats.set					;	
setbonus1			 = o_item_drop_stackable_stats.setbonus1			;	
setbonus2			 = o_item_drop_stackable_stats.setbonus2			;	
setbonus3			 = o_item_drop_stackable_stats.setbonus3			;	
setdescription1		 = o_item_drop_stackable_stats.setdescription1		;	
setdescription2		 = o_item_drop_stackable_stats.setdescription2		;	
setdescription3		 = o_item_drop_stackable_stats.setdescription3		;
statbonus1			 = o_item_drop_stackable_stats.statbonus1			;	
statbonus2			 = o_item_drop_stackable_stats.statbonus2			;	
statbonus3			 = o_item_drop_stackable_stats.statbonus3			;	
evasion				 = o_item_drop_stackable_stats.evasion				;	
	
image_index = index;