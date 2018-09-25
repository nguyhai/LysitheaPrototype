/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 008DE43E
/// @DnDArgument : "code" "/// Item Drop Code$(13_10)// Item lasts 3 mins$(13_10)alarm[1] = room_speed * 180;$(13_10)$(13_10)stackcounter = -1;$(13_10)// Picked up status  =  false$(13_10)pickedup = false;$(13_10)// Initialize the stats$(13_10)type			=-1;$(13_10)levelreq		=-1;$(13_10)mindamage		=-1;$(13_10)maxdamage		=-1;$(13_10)sockets			=-1;$(13_10)name			=-1;$(13_10)description		=-1;$(13_10)rarity			=-1;$(13_10)stackable		=-1;$(13_10)stackcount		=-1;$(13_10)critical		=-1;$(13_10)upgradelevel	=-1;$(13_10)sprite			=-1;$(13_10)spriteindex		=-1;$(13_10)healamount		=-1;$(13_10)defense			=-1;$(13_10)physresist		=-1;$(13_10)fireresist		=-1;$(13_10)lightningresist	=-1;$(13_10)iceresist		=-1;$(13_10)lightresist		=-1;$(13_10)shadowresist	=-1;$(13_10)allelementresist=-1;$(13_10)subweapon		=-1;$(13_10)socket1			=-1;$(13_10)socket2			=-1;$(13_10)socket3			=-1;$(13_10)abilities		=-1;$(13_10)ability1		=-1;$(13_10)ability2		=-1;$(13_10)ability3		=-1;$(13_10)statbonuses		=-1;$(13_10)strbonus		=-1;$(13_10)dexbonus		=-1;$(13_10)intelbonus		=-1;$(13_10)vitbonus		=-1;$(13_10)physbonus		=-1;$(13_10)firebonus		=-1;$(13_10)lightningbonus	=-1;$(13_10)icebonus		=-1;$(13_10)lightbonus		=-1;$(13_10)shadowbonus		=-1;$(13_10)allelementbonus	=-1;$(13_10)set				=-1;$(13_10)setbonus1		=-1;$(13_10)setbonus2		=-1;$(13_10)setbonus3		=-1;$(13_10)setdescription1	=-1;$(13_10)setdescription2	=-1;$(13_10)setdescription3	=-1;$(13_10)statbonus1		= 0;$(13_10)statbonus2		= 0;$(13_10)statbonus3		= 0;$(13_10)evasion			=-1;$(13_10)$(13_10)// Drop code$(13_10)play_sound = 1;$(13_10)index = irandom_range(6,17);$(13_10)//index = choose(0,8,6,7,9,10,11);$(13_10)//index = choose(1,2);$(13_10)//index = choose(24,25);$(13_10)//index = choose(0,22,6,12);$(13_10)//index = choose(26);$(13_10)//index = irandom_range(16,17);$(13_10)$(13_10)$(13_10)image_speed = 0;$(13_10)image_index = index;$(13_10)$(13_10)// Need vspd/hspd/grav for collision and for it popping out$(13_10)hspd=0;$(13_10)vspd=-6;$(13_10)grav=.6;$(13_10)$(13_10)//Draw stats variable$(13_10)drawstats = false;$(13_10)$(13_10)if index == 0{$(13_10)	type = "Weapon";$(13_10)	levelreq = 5;$(13_10)	mindamage = 10;$(13_10)	maxdamage = 15;$(13_10)	sockets = 0;$(13_10)	name = "Red Katana";$(13_10)	description[0] = "Soaked in blood!";$(13_10)	description[1] = "Lightweight and deadly.";$(13_10)	rarity = choose(1,5,10);$(13_10)	upgradelevel = irandom_range(0,7);$(13_10)	subweapon = "Sword"$(13_10)}$(13_10)$(13_10)if index == 1{$(13_10)	type = "Potion";$(13_10)	levelreq = 1;$(13_10)	sockets = 0;$(13_10)	name = "Health Potion";$(13_10)	description[0] = "Restores some health.";$(13_10)	description[1] = "Not very effective...";$(13_10)	rarity = 1;$(13_10)	stackable = 100;$(13_10)	healamount = 20;$(13_10)	stackcount = 1;$(13_10)}$(13_10)$(13_10)if index == 2{$(13_10)	type = "Potion"$(13_10)	levelreq = 1;$(13_10)	sockets = 0;$(13_10)	name = "Mana Potion";$(13_10)	description[0] = "Restores some mana.";$(13_10)	description[1] = "Not very effective...";$(13_10)	rarity = 1;$(13_10)	stackable = 100;$(13_10)	healamount = 20;$(13_10)	stackcount = 1;$(13_10)}$(13_10)$(13_10)if index == 3{$(13_10)	type = "Weapon";$(13_10)	levelreq = 5;$(13_10)	mindamage = 10;$(13_10)	maxdamage = 20;$(13_10)	sockets = 0;$(13_10)	name = "Steel Sword";$(13_10)	description[0] = "A sword made of steel.";$(13_10)	description[1] = "An excellent weapon.";$(13_10)	rarity = choose(1,5,10);$(13_10)	upgradelevel = irandom_range(0,7);$(13_10)	subweapon = "Sword"$(13_10)}$(13_10)$(13_10)if index == 4{$(13_10)	type = "Weapon"$(13_10)	levelreq = 5;$(13_10)	mindamage =4;$(13_10)	maxdamage =15;$(13_10)	sockets = 0;$(13_10)	name = "Scimitar";$(13_10)	description[0] = "Sword kinda like the";$(13_10)	description[1] = "one in Diablo II";$(13_10)	rarity = 5;$(13_10)	set = true;$(13_10)	subweapon = "Sword"$(13_10)}$(13_10)$(13_10)if index == 5{$(13_10)	type = "Crafting"$(13_10)	levelreq = 10;$(13_10)	sockets = 0;$(13_10)	name = "Diamond";$(13_10)	description[0] = "A rare diamond found";$(13_10)	description[1] = "in the mountains.";$(13_10)	rarity = 1;$(13_10)	stackable = 100;$(13_10)	stackcount = 1;$(13_10)}$(13_10)$(13_10)if index == 6{$(13_10)	type = "Chest Armor"$(13_10)	levelreq = 10;$(13_10)	defense = 10;$(13_10)	sockets = 0;$(13_10)	name = "Heavy Cloak";$(13_10)	description[0] = "A simple cloak, made";$(13_10)	description[1] = "out of leather";$(13_10)	rarity = 10;$(13_10)}$(13_10)$(13_10)if index == 7{$(13_10)	type = "Chest Armor"$(13_10)	levelreq = 10;$(13_10)	sockets = 0;$(13_10)	name = "Plate Armor";$(13_10)	defense = 12;$(13_10)	description[0] = "Made of metal plates";$(13_10)	description[1] = "that are meshed together.";$(13_10)	rarity = 10;$(13_10)}$(13_10)if index == 8{$(13_10)	type = "Bracelet"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Gold Bracelet";$(13_10)	description[0] = "A simple golden bracelet.";$(13_10)	description[1] = "";$(13_10)	rarity = 10;$(13_10)	critical = 5;$(13_10)}$(13_10)$(13_10)if index == 9{$(13_10)	type = "Bracelet"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Silver Bracelet";$(13_10)	description[0] = "A simple silver bracelet.";$(13_10)	description[1] = "";$(13_10)	rarity = 10;$(13_10)	critical = 5;$(13_10)}$(13_10)$(13_10)if index == 10{$(13_10)	type = "Hat"$(13_10)	levelreq = 5;$(13_10)	defense = 1;$(13_10)	sockets = 0;$(13_10)	name = "Red Bandanda";$(13_10)	description[0] = "Harness the power of";$(13_10)	description[1] = "the Hadou.";$(13_10)	rarity = 1;$(13_10)}$(13_10)$(13_10)if index == 11{$(13_10)	type = "Hat"$(13_10)	levelreq = 5;$(13_10)	defense = 3;$(13_10)	sockets = 0;$(13_10)	name = "Wizard Hat";$(13_10)	description[0] = "Not a real wizard hat,";$(13_10)	description[1] = "but it looks like one.";$(13_10)	rarity = 10;$(13_10)}$(13_10)if index == 12{$(13_10)	type = "Pants"$(13_10)	levelreq = 5;$(13_10)	defense = 5;$(13_10)	sockets = 0;$(13_10)	name = "Blue Jeans";$(13_10)	description[0] = "Old pair of Levi's jeans";$(13_10)	description[1] = "that has holes in them";$(13_10)	rarity = 10;$(13_10)}$(13_10)if index == 13{$(13_10)	type = "Pants"$(13_10)	levelreq = 5;$(13_10)	defense = 1;$(13_10)	sockets = 0;$(13_10)	name = "Grey Pants";$(13_10)	description[0] = "Not a brand name";$(13_10)	description[1] = "item.";$(13_10)	rarity = 5;$(13_10)}$(13_10)if index == 14{$(13_10)	type = "Gloves"$(13_10)	levelreq = 5;$(13_10)	defense = 5;$(13_10)	sockets = 0;$(13_10)	name = "Leather Gloves";$(13_10)	description[0] = "Made out of rawhide,";$(13_10)	description[1] = "these gloves are sturdy";$(13_10)	rarity = 10;$(13_10)}$(13_10)if index == 15{$(13_10)	type = "Gloves"$(13_10)	levelreq = 5;$(13_10)	defense = 3;$(13_10)	sockets = 0;$(13_10)	name = "Bloody Gloves";$(13_10)	description[0] = "Gloves that are the";$(13_10)	description[1] = "color of blood";$(13_10)	rarity = 5;$(13_10)}$(13_10)if index == 16{$(13_10)	type = "Boots"$(13_10)	levelreq = 5;$(13_10)	defense = 3;$(13_10)	sockets = 0;$(13_10)	name = "Raggy Sandals";$(13_10)	description[0] = "The sandal straps have";$(13_10)	description[1] = "not fallen off yet";$(13_10)	rarity = 5;$(13_10)}$(13_10)if index == 17{$(13_10)	type = "Boots"$(13_10)	levelreq = 5;$(13_10)	defense = 4;$(13_10)	sockets = 0;$(13_10)	name = "Old Boots";$(13_10)	description[0] = "Old boots. At least";$(13_10)	description[1] = "they dont stink.";$(13_10)	rarity = 10;$(13_10)$(13_10)}$(13_10)if index == 18{$(13_10)	type = "Artifact"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Moonlighter";$(13_10)	description[0] = "Revives you if it";$(13_10)	description[1] = "collects enough souls";$(13_10)	rarity = 10;$(13_10)	strbonus = 15;$(13_10)	dexbonus = 15;$(13_10)	intelbonus = 30 ;$(13_10)	vitbonus = 30;$(13_10)$(13_10)}$(13_10)if index == 19{$(13_10)	type = "Artifact"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Millenium Puzzle";$(13_10)	description[0] = "Use this to get a 100%";$(13_10)	description[1] = "win rate on any game.";$(13_10)	rarity = 10;$(13_10)	strbonus = 30;$(13_10)	dexbonus = 30;$(13_10)	intelbonus = 15 ;$(13_10)	vitbonus = 15;$(13_10)}$(13_10)if index == 20{$(13_10)	type = "Amulet"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Pretty Amulet";$(13_10)	description[0] = "A shiny amulet that was";$(13_10)	description[1] = "sold in a thrift store. ";$(13_10)	rarity = 10;$(13_10)	healamount = 5;$(13_10)$(13_10)}$(13_10)if index == 21{$(13_10)	type = "Amulet"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Thunder Medal";$(13_10)	description[0] = "Charged with electricity.";$(13_10)	description[1] = "Shocking to the touch.";$(13_10)	rarity = 10;$(13_10)	healamount = 10;$(13_10)}$(13_10)if index == 22{$(13_10)	type = "Ring"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Gold Ring";$(13_10)	description[0] = "Made out of gold, this ";$(13_10)	description[1] = "might be worth something.";$(13_10)	rarity = 10;$(13_10)	mindamage = 5;$(13_10)	maxdamage =5;$(13_10)$(13_10)}$(13_10)if index == 23{$(13_10)	type = "Ring"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Silver Ruby Ring";$(13_10)	description[0] = "A silver ring with a";$(13_10)	description[1] = "ruby on top of it.";$(13_10)	rarity = 10;$(13_10)	mindamage = 5;$(13_10)	maxdamage =5;$(13_10)$(13_10)}$(13_10)$(13_10)if index == 24{$(13_10)	type = "Weapon"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Mithril Bow";$(13_10)	description[0] = "Feel the wrath of ";$(13_10)	description[1] = "the Mithril Bow";$(13_10)	rarity = 10;$(13_10)	mindamage = 10;$(13_10)	maxdamage = 12;$(13_10)	subweapon = "Bow"$(13_10)}$(13_10)$(13_10)if index == 25{$(13_10)	type = "Weapon"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Grenade Pistol";$(13_10)	description[0] = "Boom.";$(13_10)	description[1] = "Headshot.";$(13_10)	rarity = 10;$(13_10)	mindamage = 15;$(13_10)	maxdamage = 25;$(13_10)	subweapon = "Rifle"$(13_10)}$(13_10)$(13_10)if index == 26{$(13_10)	type = "Earring"$(13_10)	levelreq = 5;$(13_10)	sockets = 0;$(13_10)	name = "Cheap Earring";$(13_10)	description[0] = "Made out of cheap material";$(13_10)	description[1] = "It looks pretty though.";$(13_10)	rarity = 10;$(13_10)	evasion = 5;$(13_10)}$(13_10)$(13_10)$(13_10)// Testing to see if I can change item stats$(13_10)$(13_10)// ARMOR STATS$(13_10)$(13_10)if type = "Chest Armor" or  type = "Hat" or type = "Pants" or type = "Boots" or type = "Gloves" {$(13_10)$(13_10)	var stat1 = 0;$(13_10)	var stat2 = 0;$(13_10)	var stat3 = 0;$(13_10)	var total_str = 0;$(13_10)	var total_dex = 0;$(13_10)	var total_int = 0;$(13_10)	var total_vit = 0;$(13_10)$(13_10)// We are using the statbonuses property to determine how many bonuses are on the item$(13_10)// FOr every "armor item" we will roll a statbonuses based on rarity, 0 = none, 3 = 3. $(13_10)$(13_10)statbonuses = choose(0,1,2,3);$(13_10)$(13_10)// For magic -----------------------$(13_10)if statbonuses = 1 {$(13_10)	stat1 = choose(1 ,2, 3, 4);$(13_10)}$(13_10)$(13_10)// For rare --------------------------$(13_10)if statbonuses = 2 {$(13_10)	stat1 = choose(1 ,2, 3, 4);$(13_10)	stat2 = choose(1 ,2, 3, 4);$(13_10)}$(13_10)$(13_10)// For Unique items$(13_10)if statbonuses = 3 {$(13_10)	stat1 = choose(1 ,2, 3, 4);$(13_10)	stat2 = choose(1 ,2, 3, 4);$(13_10)	stat3 = choose(1 ,2, 3, 4);$(13_10)}$(13_10)// We can define level req or rarity here for control factors. $(13_10)$(13_10)	if ( stat1 = 1 ) { strbonus = irandom_range(1,7);		statbonus1[0] = "STR";	  statbonus1[1] = strbonus;	    total_str = total_str + statbonus1[1]; }$(13_10)	if ( stat1 = 2 ) {dexbonus = irandom_range(1,7);		statbonus1[0] = "DEX";	  statbonus1[1] = dexbonus;	    total_dex = total_dex + statbonus1[1]; }$(13_10)	if ( stat1 = 3 ) {intelbonus = irandom_range(1,7);		statbonus1[0] = "INT";	  statbonus1[1] = intelbonus;	total_int = total_int + statbonus1[1]; }$(13_10)	if ( stat1 = 4 ) {vitbonus = irandom_range(1,7);		statbonus1[0] = "VIT";	  statbonus1[1] = vitbonus;		total_vit = total_vit + statbonus1[1]; }$(13_10)$(13_10)	if ( stat2 = 1) {strbonus = irandom_range(1,7);		statbonus2[0] = "STR";	  statbonus2[1] = strbonus;		  total_str = total_str + statbonus2[1]; }$(13_10)	if ( stat2 = 2) {dexbonus = irandom_range(1,7);		statbonus2[0] = "DEX";	  statbonus2[1] = dexbonus;		  total_dex = total_dex + statbonus2[1]; }$(13_10)	if ( stat2 = 3) {intelbonus = irandom_range(1,7);	statbonus2[0] = "INT";	  statbonus2[1] = intelbonus;	  total_int = total_int + statbonus2[1]; }$(13_10)	if ( stat2 = 4) {vitbonus = irandom_range(1,7);		statbonus2[0] = "VIT";	  statbonus2[1] = vitbonus;		  total_vit = total_vit + statbonus2[1]; }$(13_10)$(13_10)	if ( stat3 = 1) {strbonus = irandom_range(1,7);		statbonus3[0] = "STR";	  statbonus3[1] = strbonus;		  total_str = total_str + statbonus3[1]; }$(13_10)	if ( stat3 = 2) {dexbonus = irandom_range(1,7);		statbonus3[0] = "DEX";	  statbonus3[1] = dexbonus;		  total_dex = total_dex + statbonus3[1]; }$(13_10)	if ( stat3 = 3) {intelbonus = irandom_range(1,7);	statbonus3[0] = "INT";	  statbonus3[1] = intelbonus;	  total_int = total_int + statbonus3[1]; }$(13_10)	if ( stat3 = 4) {vitbonus = irandom_range(1,7);		statbonus3[0] = "VIT";	  statbonus3[1] = vitbonus;		  total_vit = total_vit + statbonus3[1]; }$(13_10)$(13_10)// Make the stat bonuses equal to total added up$(13_10)strbonus	  = total_str ;$(13_10)dexbonus 	  =	total_dex ;$(13_10)intelbonus	  =	total_int ;$(13_10)vitbonus	  =	total_vit ;$(13_10)$(13_10)$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)if rarity == 5{$(13_10)	maxdamage = round(maxdamage*1.5);$(13_10)}$(13_10)$(13_10)if rarity == 10{$(13_10)	maxdamage = maxdamage*2;$(13_10)}$(13_10)if upgradelevel ==1 {$(13_10)	mindamage=round(mindamage*1.1);$(13_10)	maxdamage=round(maxdamage*1.1);$(13_10)}$(13_10)if upgradelevel ==2 {$(13_10)	mindamage=round(mindamage*1.2);$(13_10)	maxdamage=round(maxdamage*1.2);$(13_10)}$(13_10)if upgradelevel ==3 {$(13_10)	mindamage=round(mindamage*1.3);$(13_10)	maxdamage=round(maxdamage*1.3);$(13_10)}$(13_10)if upgradelevel ==4 {$(13_10)	mindamage=round(mindamage*1.4);$(13_10)	maxdamage=round(maxdamage*1.4);$(13_10)}$(13_10)if upgradelevel ==5 {$(13_10)	mindamage=round(mindamage*1.5);$(13_10)	maxdamage=round(maxdamage*1.5);$(13_10)}$(13_10)if upgradelevel ==6 {$(13_10)	mindamage=round(mindamage*1.6);$(13_10)	maxdamage=round(maxdamage*1.6);$(13_10)}$(13_10)if upgradelevel ==7 {$(13_10)	mindamage=round(mindamage*1.7);$(13_10)	maxdamage=round(maxdamage*1.7);$(13_10)}$(13_10)$(13_10)"
/// Item Drop Code
// Item lasts 3 mins
alarm[1] = room_speed * 180;

stackcounter = -1;
// Picked up status  =  false
pickedup = false;
// Initialize the stats
type			=-1;
levelreq		=-1;
mindamage		=-1;
maxdamage		=-1;
sockets			=-1;
name			=-1;
description		=-1;
rarity			=-1;
stackable		=-1;
stackcount		=-1;
critical		=-1;
upgradelevel	=-1;
sprite			=-1;
spriteindex		=-1;
healamount		=-1;
defense			=-1;
physresist		=-1;
fireresist		=-1;
lightningresist	=-1;
iceresist		=-1;
lightresist		=-1;
shadowresist	=-1;
allelementresist=-1;
subweapon		=-1;
socket1			=-1;
socket2			=-1;
socket3			=-1;
abilities		=-1;
ability1		=-1;
ability2		=-1;
ability3		=-1;
statbonuses		=-1;
strbonus		=-1;
dexbonus		=-1;
intelbonus		=-1;
vitbonus		=-1;
physbonus		=-1;
firebonus		=-1;
lightningbonus	=-1;
icebonus		=-1;
lightbonus		=-1;
shadowbonus		=-1;
allelementbonus	=-1;
set				=-1;
setbonus1		=-1;
setbonus2		=-1;
setbonus3		=-1;
setdescription1	=-1;
setdescription2	=-1;
setdescription3	=-1;
statbonus1		= 0;
statbonus2		= 0;
statbonus3		= 0;
evasion			=-1;

// Drop code
play_sound = 1;
index = irandom_range(6,17);
//index = choose(0,8,6,7,9,10,11);
//index = choose(1,2);
//index = choose(24,25);
//index = choose(0,22,6,12);
//index = choose(26);
//index = irandom_range(16,17);


image_speed = 0;
image_index = index;

// Need vspd/hspd/grav for collision and for it popping out
hspd=0;
vspd=-6;
grav=.6;

//Draw stats variable
drawstats = false;

if index == 0{
	type = "Weapon";
	levelreq = 5;
	mindamage = 10;
	maxdamage = 15;
	sockets = 0;
	name = "Red Katana";
	description[0] = "Soaked in blood!";
	description[1] = "Lightweight and deadly.";
	rarity = choose(1,5,10);
	upgradelevel = irandom_range(0,7);
	subweapon = "Sword"
}

if index == 1{
	type = "Potion";
	levelreq = 1;
	sockets = 0;
	name = "Health Potion";
	description[0] = "Restores some health.";
	description[1] = "Not very effective...";
	rarity = 1;
	stackable = 100;
	healamount = 20;
	stackcount = 1;
}

if index == 2{
	type = "Potion"
	levelreq = 1;
	sockets = 0;
	name = "Mana Potion";
	description[0] = "Restores some mana.";
	description[1] = "Not very effective...";
	rarity = 1;
	stackable = 100;
	healamount = 20;
	stackcount = 1;
}

if index == 3{
	type = "Weapon";
	levelreq = 5;
	mindamage = 10;
	maxdamage = 20;
	sockets = 0;
	name = "Steel Sword";
	description[0] = "A sword made of steel.";
	description[1] = "An excellent weapon.";
	rarity = choose(1,5,10);
	upgradelevel = irandom_range(0,7);
	subweapon = "Sword"
}

if index == 4{
	type = "Weapon"
	levelreq = 5;
	mindamage =4;
	maxdamage =15;
	sockets = 0;
	name = "Scimitar";
	description[0] = "Sword kinda like the";
	description[1] = "one in Diablo II";
	rarity = 5;
	set = true;
	subweapon = "Sword"
}

if index == 5{
	type = "Crafting"
	levelreq = 10;
	sockets = 0;
	name = "Diamond";
	description[0] = "A rare diamond found";
	description[1] = "in the mountains.";
	rarity = 1;
	stackable = 100;
	stackcount = 1;
}

if index == 6{
	type = "Chest Armor"
	levelreq = 10;
	defense = 10;
	sockets = 0;
	name = "Heavy Cloak";
	description[0] = "A simple cloak, made";
	description[1] = "out of leather";
	rarity = 10;
}

if index == 7{
	type = "Chest Armor"
	levelreq = 10;
	sockets = 0;
	name = "Plate Armor";
	defense = 12;
	description[0] = "Made of metal plates";
	description[1] = "that are meshed together.";
	rarity = 10;
}
if index == 8{
	type = "Bracelet"
	levelreq = 5;
	sockets = 0;
	name = "Gold Bracelet";
	description[0] = "A simple golden bracelet.";
	description[1] = "";
	rarity = 10;
	critical = 5;
}

if index == 9{
	type = "Bracelet"
	levelreq = 5;
	sockets = 0;
	name = "Silver Bracelet";
	description[0] = "A simple silver bracelet.";
	description[1] = "";
	rarity = 10;
	critical = 5;
}

if index == 10{
	type = "Hat"
	levelreq = 5;
	defense = 1;
	sockets = 0;
	name = "Red Bandanda";
	description[0] = "Harness the power of";
	description[1] = "the Hadou.";
	rarity = 1;
}

if index == 11{
	type = "Hat"
	levelreq = 5;
	defense = 3;
	sockets = 0;
	name = "Wizard Hat";
	description[0] = "Not a real wizard hat,";
	description[1] = "but it looks like one.";
	rarity = 10;
}
if index == 12{
	type = "Pants"
	levelreq = 5;
	defense = 5;
	sockets = 0;
	name = "Blue Jeans";
	description[0] = "Old pair of Levi's jeans";
	description[1] = "that has holes in them";
	rarity = 10;
}
if index == 13{
	type = "Pants"
	levelreq = 5;
	defense = 1;
	sockets = 0;
	name = "Grey Pants";
	description[0] = "Not a brand name";
	description[1] = "item.";
	rarity = 5;
}
if index == 14{
	type = "Gloves"
	levelreq = 5;
	defense = 5;
	sockets = 0;
	name = "Leather Gloves";
	description[0] = "Made out of rawhide,";
	description[1] = "these gloves are sturdy";
	rarity = 10;
}
if index == 15{
	type = "Gloves"
	levelreq = 5;
	defense = 3;
	sockets = 0;
	name = "Bloody Gloves";
	description[0] = "Gloves that are the";
	description[1] = "color of blood";
	rarity = 5;
}
if index == 16{
	type = "Boots"
	levelreq = 5;
	defense = 3;
	sockets = 0;
	name = "Raggy Sandals";
	description[0] = "The sandal straps have";
	description[1] = "not fallen off yet";
	rarity = 5;
}
if index == 17{
	type = "Boots"
	levelreq = 5;
	defense = 4;
	sockets = 0;
	name = "Old Boots";
	description[0] = "Old boots. At least";
	description[1] = "they dont stink.";
	rarity = 10;

}
if index == 18{
	type = "Artifact"
	levelreq = 5;
	sockets = 0;
	name = "Moonlighter";
	description[0] = "Revives you if it";
	description[1] = "collects enough souls";
	rarity = 10;
	strbonus = 15;
	dexbonus = 15;
	intelbonus = 30 ;
	vitbonus = 30;

}
if index == 19{
	type = "Artifact"
	levelreq = 5;
	sockets = 0;
	name = "Millenium Puzzle";
	description[0] = "Use this to get a 100%";
	description[1] = "win rate on any game.";
	rarity = 10;
	strbonus = 30;
	dexbonus = 30;
	intelbonus = 15 ;
	vitbonus = 15;
}
if index == 20{
	type = "Amulet"
	levelreq = 5;
	sockets = 0;
	name = "Pretty Amulet";
	description[0] = "A shiny amulet that was";
	description[1] = "sold in a thrift store. ";
	rarity = 10;
	healamount = 5;

}
if index == 21{
	type = "Amulet"
	levelreq = 5;
	sockets = 0;
	name = "Thunder Medal";
	description[0] = "Charged with electricity.";
	description[1] = "Shocking to the touch.";
	rarity = 10;
	healamount = 10;
}
if index == 22{
	type = "Ring"
	levelreq = 5;
	sockets = 0;
	name = "Gold Ring";
	description[0] = "Made out of gold, this ";
	description[1] = "might be worth something.";
	rarity = 10;
	mindamage = 5;
	maxdamage =5;

}
if index == 23{
	type = "Ring"
	levelreq = 5;
	sockets = 0;
	name = "Silver Ruby Ring";
	description[0] = "A silver ring with a";
	description[1] = "ruby on top of it.";
	rarity = 10;
	mindamage = 5;
	maxdamage =5;

}

if index == 24{
	type = "Weapon"
	levelreq = 5;
	sockets = 0;
	name = "Mithril Bow";
	description[0] = "Feel the wrath of ";
	description[1] = "the Mithril Bow";
	rarity = 10;
	mindamage = 10;
	maxdamage = 12;
	subweapon = "Bow"
}

if index == 25{
	type = "Weapon"
	levelreq = 5;
	sockets = 0;
	name = "Grenade Pistol";
	description[0] = "Boom.";
	description[1] = "Headshot.";
	rarity = 10;
	mindamage = 15;
	maxdamage = 25;
	subweapon = "Rifle"
}

if index == 26{
	type = "Earring"
	levelreq = 5;
	sockets = 0;
	name = "Cheap Earring";
	description[0] = "Made out of cheap material";
	description[1] = "It looks pretty though.";
	rarity = 10;
	evasion = 5;
}


// Testing to see if I can change item stats

// ARMOR STATS

if type = "Chest Armor" or  type = "Hat" or type = "Pants" or type = "Boots" or type = "Gloves" {

	var stat1 = 0;
	var stat2 = 0;
	var stat3 = 0;
	var total_str = 0;
	var total_dex = 0;
	var total_int = 0;
	var total_vit = 0;

// We are using the statbonuses property to determine how many bonuses are on the item
// FOr every "armor item" we will roll a statbonuses based on rarity, 0 = none, 3 = 3. 

statbonuses = choose(0,1,2,3);

// For magic -----------------------
if statbonuses = 1 {
	stat1 = choose(1 ,2, 3, 4);
}

// For rare --------------------------
if statbonuses = 2 {
	stat1 = choose(1 ,2, 3, 4);
	stat2 = choose(1 ,2, 3, 4);
}

// For Unique items
if statbonuses = 3 {
	stat1 = choose(1 ,2, 3, 4);
	stat2 = choose(1 ,2, 3, 4);
	stat3 = choose(1 ,2, 3, 4);
}
// We can define level req or rarity here for control factors. 

	if ( stat1 = 1 ) { strbonus = irandom_range(1,7);		statbonus1[0] = "STR";	  statbonus1[1] = strbonus;	    total_str = total_str + statbonus1[1]; }
	if ( stat1 = 2 ) {dexbonus = irandom_range(1,7);		statbonus1[0] = "DEX";	  statbonus1[1] = dexbonus;	    total_dex = total_dex + statbonus1[1]; }
	if ( stat1 = 3 ) {intelbonus = irandom_range(1,7);		statbonus1[0] = "INT";	  statbonus1[1] = intelbonus;	total_int = total_int + statbonus1[1]; }
	if ( stat1 = 4 ) {vitbonus = irandom_range(1,7);		statbonus1[0] = "VIT";	  statbonus1[1] = vitbonus;		total_vit = total_vit + statbonus1[1]; }

	if ( stat2 = 1) {strbonus = irandom_range(1,7);		statbonus2[0] = "STR";	  statbonus2[1] = strbonus;		  total_str = total_str + statbonus2[1]; }
	if ( stat2 = 2) {dexbonus = irandom_range(1,7);		statbonus2[0] = "DEX";	  statbonus2[1] = dexbonus;		  total_dex = total_dex + statbonus2[1]; }
	if ( stat2 = 3) {intelbonus = irandom_range(1,7);	statbonus2[0] = "INT";	  statbonus2[1] = intelbonus;	  total_int = total_int + statbonus2[1]; }
	if ( stat2 = 4) {vitbonus = irandom_range(1,7);		statbonus2[0] = "VIT";	  statbonus2[1] = vitbonus;		  total_vit = total_vit + statbonus2[1]; }

	if ( stat3 = 1) {strbonus = irandom_range(1,7);		statbonus3[0] = "STR";	  statbonus3[1] = strbonus;		  total_str = total_str + statbonus3[1]; }
	if ( stat3 = 2) {dexbonus = irandom_range(1,7);		statbonus3[0] = "DEX";	  statbonus3[1] = dexbonus;		  total_dex = total_dex + statbonus3[1]; }
	if ( stat3 = 3) {intelbonus = irandom_range(1,7);	statbonus3[0] = "INT";	  statbonus3[1] = intelbonus;	  total_int = total_int + statbonus3[1]; }
	if ( stat3 = 4) {vitbonus = irandom_range(1,7);		statbonus3[0] = "VIT";	  statbonus3[1] = vitbonus;		  total_vit = total_vit + statbonus3[1]; }

// Make the stat bonuses equal to total added up
strbonus	  = total_str ;
dexbonus 	  =	total_dex ;
intelbonus	  =	total_int ;
vitbonus	  =	total_vit ;


} 



if rarity == 5{
	maxdamage = round(maxdamage*1.5);
}

if rarity == 10{
	maxdamage = maxdamage*2;
}
if upgradelevel ==1 {
	mindamage=round(mindamage*1.1);
	maxdamage=round(maxdamage*1.1);
}
if upgradelevel ==2 {
	mindamage=round(mindamage*1.2);
	maxdamage=round(maxdamage*1.2);
}
if upgradelevel ==3 {
	mindamage=round(mindamage*1.3);
	maxdamage=round(maxdamage*1.3);
}
if upgradelevel ==4 {
	mindamage=round(mindamage*1.4);
	maxdamage=round(maxdamage*1.4);
}
if upgradelevel ==5 {
	mindamage=round(mindamage*1.5);
	maxdamage=round(maxdamage*1.5);
}
if upgradelevel ==6 {
	mindamage=round(mindamage*1.6);
	maxdamage=round(maxdamage*1.6);
}
if upgradelevel ==7 {
	mindamage=round(mindamage*1.7);
	maxdamage=round(maxdamage*1.7);
}