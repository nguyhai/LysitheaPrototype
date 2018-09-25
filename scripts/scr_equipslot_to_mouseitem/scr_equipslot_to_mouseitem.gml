/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27B8F601
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// argument0 = the equip slot$(13_10)$(13_10)o_mouseitem.type				= global.inventory[argument0,0];$(13_10)o_mouseitem.levelreq			= global.inventory[argument0,1];$(13_10)o_mouseitem.mindamage			= global.inventory[argument0,2];$(13_10)o_mouseitem.maxdamage			= global.inventory[argument0,3];$(13_10)o_mouseitem.sockets				= global.inventory[argument0,4];$(13_10)o_mouseitem.name				= global.inventory[argument0,5];$(13_10)o_mouseitem.description			= global.inventory[argument0,6];$(13_10)o_mouseitem.rarity				= global.inventory[argument0,7];$(13_10)o_mouseitem.stackable			= global.inventory[argument0,8];	$(13_10)o_mouseitem.stackcount			= global.inventory[argument0,9];$(13_10)o_mouseitem.critical			= global.inventory[argument0,10];	$(13_10)o_mouseitem.upgradelevel		= global.inventory[argument0,11];	$(13_10)o_mouseitem.sprite				= global.inventory[argument0,12];$(13_10)o_mouseitem.spriteindex			= global.inventory[argument0,13];$(13_10)o_mouseitem.healamount			= global.inventory[argument0,14];$(13_10)o_mouseitem.defense				= global.inventory[argument0,15];$(13_10)o_mouseitem.physresist			= global.inventory[argument0,16];$(13_10)o_mouseitem.fireresist			= global.inventory[argument0,17];$(13_10)o_mouseitem.lightningresist		= global.inventory[argument0,18];$(13_10)o_mouseitem.iceresist			= global.inventory[argument0,19];	$(13_10)o_mouseitem.lightresist			= global.inventory[argument0,20];$(13_10)o_mouseitem.shadowresist		= global.inventory[argument0,21];	$(13_10)o_mouseitem.allelementresist	= global.inventory[argument0,22];	$(13_10)o_mouseitem.subweapon			= global.inventory[argument0,23];	$(13_10)o_mouseitem.socket1				= global.inventory[argument0,24];$(13_10)o_mouseitem.socket2				= global.inventory[argument0,25];$(13_10)o_mouseitem.socket3				= global.inventory[argument0,26];$(13_10)o_mouseitem.abilities			= global.inventory[argument0,27];	$(13_10)o_mouseitem.ability1			= global.inventory[argument0,28];	$(13_10)o_mouseitem.ability2			= global.inventory[argument0,29];	$(13_10)o_mouseitem.ability3			= global.inventory[argument0,30];	$(13_10)o_mouseitem.statbonuses			= global.inventory[argument0,31];$(13_10)o_mouseitem.strbonus			= global.inventory[argument0,32];	$(13_10)o_mouseitem.dexbonus			= global.inventory[argument0,33];	$(13_10)o_mouseitem.intelbonus			= global.inventory[argument0,34];$(13_10)o_mouseitem.vitbonus			= global.inventory[argument0,35];	$(13_10)o_mouseitem.physbonus			= global.inventory[argument0,36];	$(13_10)o_mouseitem.firebonus			= global.inventory[argument0,37];	$(13_10)o_mouseitem.lightningbonus		= global.inventory[argument0,38];$(13_10)o_mouseitem.icebonus			= global.inventory[argument0,39];	$(13_10)o_mouseitem.lightbonus			= global.inventory[argument0,40];$(13_10)o_mouseitem.shadowbonus			= global.inventory[argument0,41];$(13_10)o_mouseitem.allelementbonus		= global.inventory[argument0,42];$(13_10)o_mouseitem.set					= global.inventory[argument0,43];$(13_10)o_mouseitem.setbonus1			= global.inventory[argument0,44];	$(13_10)o_mouseitem.setbonus2			= global.inventory[argument0,45];	$(13_10)o_mouseitem.setbonus3			= global.inventory[argument0,46];	$(13_10)o_mouseitem.setdescription1		= global.inventory[argument0,47];$(13_10)o_mouseitem.setdescription2		= global.inventory[argument0,48];$(13_10)o_mouseitem.setdescription3		= global.inventory[argument0,49];$(13_10)o_mouseitem.statbonus1			= global.inventory[argument0,50];$(13_10)o_mouseitem.statbonus2			= global.inventory[argument0,51];$(13_10)o_mouseitem.statbonus3			= global.inventory[argument0,52];$(13_10)o_mouseitem.evasion				= global.inventory[argument0,53];"
/// @description Execute Code
// argument0 = the equip slot

o_mouseitem.type				= global.inventory[argument0,0];
o_mouseitem.levelreq			= global.inventory[argument0,1];
o_mouseitem.mindamage			= global.inventory[argument0,2];
o_mouseitem.maxdamage			= global.inventory[argument0,3];
o_mouseitem.sockets				= global.inventory[argument0,4];
o_mouseitem.name				= global.inventory[argument0,5];
o_mouseitem.description			= global.inventory[argument0,6];
o_mouseitem.rarity				= global.inventory[argument0,7];
o_mouseitem.stackable			= global.inventory[argument0,8];	
o_mouseitem.stackcount			= global.inventory[argument0,9];
o_mouseitem.critical			= global.inventory[argument0,10];	
o_mouseitem.upgradelevel		= global.inventory[argument0,11];	
o_mouseitem.sprite				= global.inventory[argument0,12];
o_mouseitem.spriteindex			= global.inventory[argument0,13];
o_mouseitem.healamount			= global.inventory[argument0,14];
o_mouseitem.defense				= global.inventory[argument0,15];
o_mouseitem.physresist			= global.inventory[argument0,16];
o_mouseitem.fireresist			= global.inventory[argument0,17];
o_mouseitem.lightningresist		= global.inventory[argument0,18];
o_mouseitem.iceresist			= global.inventory[argument0,19];	
o_mouseitem.lightresist			= global.inventory[argument0,20];
o_mouseitem.shadowresist		= global.inventory[argument0,21];	
o_mouseitem.allelementresist	= global.inventory[argument0,22];	
o_mouseitem.subweapon			= global.inventory[argument0,23];	
o_mouseitem.socket1				= global.inventory[argument0,24];
o_mouseitem.socket2				= global.inventory[argument0,25];
o_mouseitem.socket3				= global.inventory[argument0,26];
o_mouseitem.abilities			= global.inventory[argument0,27];	
o_mouseitem.ability1			= global.inventory[argument0,28];	
o_mouseitem.ability2			= global.inventory[argument0,29];	
o_mouseitem.ability3			= global.inventory[argument0,30];	
o_mouseitem.statbonuses			= global.inventory[argument0,31];
o_mouseitem.strbonus			= global.inventory[argument0,32];	
o_mouseitem.dexbonus			= global.inventory[argument0,33];	
o_mouseitem.intelbonus			= global.inventory[argument0,34];
o_mouseitem.vitbonus			= global.inventory[argument0,35];	
o_mouseitem.physbonus			= global.inventory[argument0,36];	
o_mouseitem.firebonus			= global.inventory[argument0,37];	
o_mouseitem.lightningbonus		= global.inventory[argument0,38];
o_mouseitem.icebonus			= global.inventory[argument0,39];	
o_mouseitem.lightbonus			= global.inventory[argument0,40];
o_mouseitem.shadowbonus			= global.inventory[argument0,41];
o_mouseitem.allelementbonus		= global.inventory[argument0,42];
o_mouseitem.set					= global.inventory[argument0,43];
o_mouseitem.setbonus1			= global.inventory[argument0,44];	
o_mouseitem.setbonus2			= global.inventory[argument0,45];	
o_mouseitem.setbonus3			= global.inventory[argument0,46];	
o_mouseitem.setdescription1		= global.inventory[argument0,47];
o_mouseitem.setdescription2		= global.inventory[argument0,48];
o_mouseitem.setdescription3		= global.inventory[argument0,49];
o_mouseitem.statbonus1			= global.inventory[argument0,50];
o_mouseitem.statbonus2			= global.inventory[argument0,51];
o_mouseitem.statbonus3			= global.inventory[argument0,52];
o_mouseitem.evasion				= global.inventory[argument0,53];