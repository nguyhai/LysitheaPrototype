/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 370938D1
/// @DnDArgument : "code" "/// @description Control Shop Inventory$(13_10)// Lets define the variables for items here. $(13_10)$(13_10)if room = rm_town {$(13_10)	$(13_10)if o_shop_inventory.shop = true {$(13_10)$(13_10)	if o_shop_inventory.shoptype = "Weapons" {$(13_10)		$(13_10)		// SLOT 1$(13_10)		global.shop[0] = 3; // Index$(13_10)		global.shop[1,0] = "Weapon"; $(13_10)		global.shop[1,1] = 75; // Level Req$(13_10)		global.shop[1,2] = 150; // Min Damage$(13_10)		global.shop[1,3] = 205; // Max Damage$(13_10)		global.shop[1,4] = 0; // Sockets$(13_10)		global.shop[1,5] = "Hydra Fang"; // Name$(13_10)		global.shop[1,6] = "A sword made from the fangs of a Fire Drake"; // Description$(13_10)		global.shop[1,7] = 10; // Rarity$(13_10)		global.shop[1,10] = 50; // Critical$(13_10)		global.shop[1,11] = 10; // Upgrade Level$(13_10)		global.shop[1,23] = "Sword"; // Subweapon$(13_10)		$(13_10)		$(13_10)		$(13_10)		// SLOT 2$(13_10)		global.shop[1] = 24; // Index$(13_10)		global.shop[2,0] = "Weapon"; $(13_10)		global.shop[2,1] = 5; // Level Req$(13_10)		global.shop[2,2] = 1; // Min Damage$(13_10)		global.shop[2,3] = 4; // Max Damage$(13_10)		global.shop[2,4] =0; // Sockets$(13_10)		global.shop[2,5] = "Wooden Bow"; // Name$(13_10)		global.shop[2,6] = "A bow made out of wood"; // Description$(13_10)		global.shop[2,7] = 1; // Rarity$(13_10)		global.shop[2,10] = 0; // Critical$(13_10)		global.shop[2,11] = 0; // Upgrade Level$(13_10)		global.shop[2,23] = "Bow"; // Subweapon$(13_10)$(13_10)		// SLOT 3	$(13_10)		$(13_10)		global.shop[2] = 31; // Index$(13_10)		global.shop[3,0] = "Weapon"; $(13_10)		global.shop[3,1] = 5; // Level Req$(13_10)		global.shop[3,2] = 1; // Min Damage$(13_10)		global.shop[3,3] = 4; // Max Damage$(13_10)		global.shop[3,4] =0; // Sockets$(13_10)		global.shop[3,5] = "Stone Knife"; // Name$(13_10)		global.shop[3,6] = "A knife made out of Stone"; // Description$(13_10)		global.shop[3,7] = 1; // Rarity$(13_10)		global.shop[3,10] = 0; // Critical$(13_10)		global.shop[3,11] = 0; // Upgrade Level$(13_10)		global.shop[3,23] = "Dagger"; // Subweapon$(13_10)		$(13_10)		// SLOT 4	$(13_10)		$(13_10)		global.shop[3] = 27; // Index$(13_10)		global.shop[4,0] = "Weapon"; $(13_10)		global.shop[4,1] = 5; // Level Req$(13_10)		global.shop[4,2] = 5; // Min Damage$(13_10)		global.shop[4,3] = 10; // Max Damage$(13_10)		global.shop[4,4] = 0; // Sockets$(13_10)		global.shop[4,5] = "Wooden Wand"; // Name$(13_10)		global.shop[4,6] = "It's basically a stick"; // Description$(13_10)		global.shop[4,7] = 5; // Rarity$(13_10)		global.shop[4,11] = 0; // Upgrade Level$(13_10)		global.shop[4,23] = "Wand"; // Subweapon$(13_10)		$(13_10)	}$(13_10)	$(13_10)$(13_10)	// IMPORTANT - Putting a space before Armor so that it centers, BE SURE TO REMEMBER$(13_10)	if o_shop_inventory.shoptype = " Armor" {$(13_10)	$(13_10)		// SLOT 1$(13_10)		global.shop[0] = 6; // Index$(13_10)		global.shop[1,0] = "Chest Armor"; //Type$(13_10)		global.shop[1,1] = 5; // Level Req$(13_10)		global.shop[1,4] = 0; // Sockets$(13_10)		global.shop[1,15] = 6; // Defense$(13_10)		global.shop[1,5] = "Fur Cloak"; // Name$(13_10)		global.shop[1,6] = "Made out of fur from some animal"; // Description$(13_10)		global.shop[1,7] = 1; // Rarity$(13_10)		global.shop[1,11] = 0; // Upgoirade Level$(13_10)		$(13_10)		// SLOT 2$(13_10)		global.shop[1] = 10; // Index$(13_10)		global.shop[2,0] = "Hat"; //Type$(13_10)		global.shop[2,1] = 5; // Level Req$(13_10)		global.shop[2,4] =0; // Sockets$(13_10)		global.shop[2,15] = 2; // Defense$(13_10)		global.shop[2,5] = "Bandana"; // Name$(13_10)		global.shop[2,6] = "A cheap piece of cloth that wont really protect your head"; // Description$(13_10)		global.shop[2,7] = 1; // Rarity$(13_10)		global.shop[2,11] = 0; // Upgrade Level$(13_10)		$(13_10)		// SLOT 3	$(13_10)		$(13_10)		global.shop[2] = 16; // Index$(13_10)		global.shop[3,0] = "Boots"; //Type$(13_10)		global.shop[3,1] = 5; // Level Req$(13_10)		global.shop[3,4] =0; // Sockets$(13_10)		global.shop[3,15] = 3; // Defense$(13_10)		global.shop[3,5] = "Wooden Sandals"; // Name$(13_10)		global.shop[3,6] = "Super Uncomfortable to wear these things"; // Description$(13_10)		global.shop[3,7] = 1; // Rarity$(13_10)		global.shop[3,11] = 0; // Upgrade Level$(13_10)$(13_10)		$(13_10)	}$(13_10)	$(13_10)$(13_10)	// Again, space before Items$(13_10)	if o_shop_inventory.shoptype = " Items" {$(13_10)$(13_10)	// Slot 1$(13_10)$(13_10)	global.shop[0]		= 1							// Index$(13_10)	global.shop[1,0]	= "Potion"					// Type$(13_10)	global.shop[1,1]	= 1;						// Lvl Req$(13_10)	global.shop[1,5]	= "Health Potion";	// Name$(13_10)	global.shop[1,7]	= 1;						// Rarity$(13_10)	global.shop[1,8]	= 1;						// Stackable$(13_10)	global.shop[1,9]	= 1;						// Stack Count$(13_10)	global.shop[1,14]	= 30;						// Heal Amount$(13_10)	global.shop[1,6]	= "A potion meant for healing wounds. Heals 30% of your max HP.";	// Description$(13_10)$(13_10)	// Slot 2$(13_10)$(13_10)	global.shop[1]		= 2						   // Index$(13_10)	global.shop[2,0]	= "Potion"				   // Type$(13_10)  	global.shop[2,1]	= 1;					   // Lvl Req$(13_10)	global.shop[2,5]	= "Mana Potion";	   // Name$(13_10)	global.shop[2,7]	= 1;					   // Rarity$(13_10)	global.shop[2,8]	= 1;					   // Stackable$(13_10)	global.shop[2,9]	= 1;					   // Stack Count$(13_10)	global.shop[2,14]	= 30;					   // Heal Amount$(13_10)	global.shop[2,6]	= "A potion meant for restoring mana energy. Recovers 30% of your max MP.";$(13_10)$(13_10)	// Slot 3$(13_10)$(13_10)$(13_10)$(13_10)	}$(13_10)$(13_10)	if o_shop_inventory.shoptype = "Accessory" {$(13_10)$(13_10)	global.shop[0]		= 9								// Index$(13_10)	global.shop[1,0]	= "Bracelet"					// Type$(13_10)	global.shop[1,5]	= "Festival Bracelet";			// Name$(13_10)	global.shop[1,1]	= 10								// Lvl$(13_10)	global.shop[1,7]	= 1;							// Rarity$(13_10)	global.shop[1,10]	= 2;							// Crit$(13_10)	global.shop[1,6]	= "A cheap bracelet that was given away at a festival.";$(13_10)	$(13_10)	global.shop[1]			= 26					   // Index$(13_10)	global.shop[2,0]		= "Earring"				   // Type$(13_10)	global.shop[2,5]		= "Festival Earring";	   // Name$(13_10)	global.shop[2,1]		= 10					   // Lvl$(13_10)	global.shop[2,7]		= 1;					   // Rarity$(13_10)	global.shop[2,53]		= 2;					   // Evasion$(13_10)	global.shop[2,6]		= "A cheap earring that was given away at a festival.";$(13_10)	$(13_10)	global.shop[2]		= 21						   // Index$(13_10)	global.shop[3,0]	= "Amulet"					   // Type$(13_10)	global.shop[3,5]	= "Festival Necklace";		   // Name$(13_10)	global.shop[3,1]	= 10							   // Lvl$(13_10)	global.shop[3,7]	= 1;						   // Rarity$(13_10)	global.shop[3,14]	= 2;						   // Heal Amt$(13_10)	global.shop[3,6]	= "A cheap earring that was given away at a festival.";$(13_10)	$(13_10)	global.shop[3]		= 22						   // Index$(13_10)	global.shop[4,0]	= "Ring"					   // Type$(13_10)	global.shop[4,5]	= "Festival Ring";			   // Name$(13_10)	global.shop[4,1]	= 10							   // Lvl$(13_10)	global.shop[4,7]	= 1;						   // Rarity$(13_10)	global.shop[4,2]	= 2;						   // Min Dmg$(13_10)	global.shop[4,3]	= 4;						   // Max Dmg$(13_10)	global.shop[4,6]	= "A cheap earring that was given away at a festival.";$(13_10)$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if o_shop_inventory.shoptype = "Crafting" {$(13_10)	$(13_10)	global.shop[0]		= 5					// Index$(13_10)	global.shop[1,0]	= "Crafting"			// Type$(13_10)	global.shop[1,1]	= 1;				// Lvl Req$(13_10)	global.shop[1,5]	= "Small Diamond"; // Name$(13_10)	global.shop[1,7]	= 5;	// Rarity$(13_10)	global.shop[1,8]	= 1;	// Stackable$(13_10)	global.shop[1,9]	= 1;	// Stack Count$(13_10)	global.shop[1,6]	= "A small Diamond that was found on the mountains";	// Description$(13_10)	$(13_10)$(13_10)	$(13_10)	}$(13_10)	$(13_10)	if o_shop_inventory.shoptype = "Offhands" {$(13_10)	$(13_10)	}$(13_10)	$(13_10)} // End of shop = true$(13_10)$(13_10)if o_shop_inventory.buyback = true {$(13_10)/* Test$(13_10)		// SLOT 1$(13_10)		global.shop[21] = 3; // Index$(13_10)		global.shop[22,0] = "Weapon"; $(13_10)		global.shop[22,1] = 75; // Level Req$(13_10)		global.shop[22,2] = 150; // Min Damage$(13_10)		global.shop[22,3] = 205; // Max Damage$(13_10)		global.shop[22,4] = 0; // Sockets$(13_10)		global.shop[22,5] = "Hydra Fang"; // Name$(13_10)		global.shop[22,6] = "A sword made from the fangs of a Fire Drake"; // Description$(13_10)		global.shop[22,7] = 10; // Rarity$(13_10)		global.shop[22,10] = 50; // Critical$(13_10)		global.shop[22,11] = 10; // Upgrade Level$(13_10)		global.shop[22,23] = "Sword"; // Subweapon$(13_10)*/$(13_10)}$(13_10)$(13_10)}"
/// @description Control Shop Inventory
// Lets define the variables for items here. 

if room = rm_town {
	
if o_shop_inventory.shop = true {

	if o_shop_inventory.shoptype = "Weapons" {
		
		// SLOT 1
		global.shop[0] = 3; // Index
		global.shop[1,0] = "Weapon"; 
		global.shop[1,1] = 75; // Level Req
		global.shop[1,2] = 150; // Min Damage
		global.shop[1,3] = 205; // Max Damage
		global.shop[1,4] = 0; // Sockets
		global.shop[1,5] = "Hydra Fang"; // Name
		global.shop[1,6] = "A sword made from the fangs of a Fire Drake"; // Description
		global.shop[1,7] = 10; // Rarity
		global.shop[1,10] = 50; // Critical
		global.shop[1,11] = 10; // Upgrade Level
		global.shop[1,23] = "Sword"; // Subweapon
		
		
		
		// SLOT 2
		global.shop[1] = 24; // Index
		global.shop[2,0] = "Weapon"; 
		global.shop[2,1] = 5; // Level Req
		global.shop[2,2] = 1; // Min Damage
		global.shop[2,3] = 4; // Max Damage
		global.shop[2,4] =0; // Sockets
		global.shop[2,5] = "Wooden Bow"; // Name
		global.shop[2,6] = "A bow made out of wood"; // Description
		global.shop[2,7] = 1; // Rarity
		global.shop[2,10] = 0; // Critical
		global.shop[2,11] = 0; // Upgrade Level
		global.shop[2,23] = "Bow"; // Subweapon

		// SLOT 3	
		
		global.shop[2] = 31; // Index
		global.shop[3,0] = "Weapon"; 
		global.shop[3,1] = 5; // Level Req
		global.shop[3,2] = 1; // Min Damage
		global.shop[3,3] = 4; // Max Damage
		global.shop[3,4] =0; // Sockets
		global.shop[3,5] = "Stone Knife"; // Name
		global.shop[3,6] = "A knife made out of Stone"; // Description
		global.shop[3,7] = 1; // Rarity
		global.shop[3,10] = 0; // Critical
		global.shop[3,11] = 0; // Upgrade Level
		global.shop[3,23] = "Dagger"; // Subweapon
		
		// SLOT 4	
		
		global.shop[3] = 27; // Index
		global.shop[4,0] = "Weapon"; 
		global.shop[4,1] = 5; // Level Req
		global.shop[4,2] = 5; // Min Damage
		global.shop[4,3] = 10; // Max Damage
		global.shop[4,4] = 0; // Sockets
		global.shop[4,5] = "Wooden Wand"; // Name
		global.shop[4,6] = "It's basically a stick"; // Description
		global.shop[4,7] = 5; // Rarity
		global.shop[4,11] = 0; // Upgrade Level
		global.shop[4,23] = "Wand"; // Subweapon
		
	}
	

	// IMPORTANT - Putting a space before Armor so that it centers, BE SURE TO REMEMBER
	if o_shop_inventory.shoptype = " Armor" {
	
		// SLOT 1
		global.shop[0] = 6; // Index
		global.shop[1,0] = "Chest Armor"; //Type
		global.shop[1,1] = 5; // Level Req
		global.shop[1,4] = 0; // Sockets
		global.shop[1,15] = 6; // Defense
		global.shop[1,5] = "Fur Cloak"; // Name
		global.shop[1,6] = "Made out of fur from some animal"; // Description
		global.shop[1,7] = 1; // Rarity
		global.shop[1,11] = 0; // Upgoirade Level
		
		// SLOT 2
		global.shop[1] = 10; // Index
		global.shop[2,0] = "Hat"; //Type
		global.shop[2,1] = 5; // Level Req
		global.shop[2,4] =0; // Sockets
		global.shop[2,15] = 2; // Defense
		global.shop[2,5] = "Bandana"; // Name
		global.shop[2,6] = "A cheap piece of cloth that wont really protect your head"; // Description
		global.shop[2,7] = 1; // Rarity
		global.shop[2,11] = 0; // Upgrade Level
		
		// SLOT 3	
		
		global.shop[2] = 16; // Index
		global.shop[3,0] = "Boots"; //Type
		global.shop[3,1] = 5; // Level Req
		global.shop[3,4] =0; // Sockets
		global.shop[3,15] = 3; // Defense
		global.shop[3,5] = "Wooden Sandals"; // Name
		global.shop[3,6] = "Super Uncomfortable to wear these things"; // Description
		global.shop[3,7] = 1; // Rarity
		global.shop[3,11] = 0; // Upgrade Level

		
	}
	

	// Again, space before Items
	if o_shop_inventory.shoptype = " Items" {

	// Slot 1

	global.shop[0]		= 1							// Index
	global.shop[1,0]	= "Potion"					// Type
	global.shop[1,1]	= 1;						// Lvl Req
	global.shop[1,5]	= "Health Potion";	// Name
	global.shop[1,7]	= 1;						// Rarity
	global.shop[1,8]	= 1;						// Stackable
	global.shop[1,9]	= 1;						// Stack Count
	global.shop[1,14]	= 30;						// Heal Amount
	global.shop[1,6]	= "A potion meant for healing wounds. Heals 30% of your max HP.";	// Description

	// Slot 2

	global.shop[1]		= 2						   // Index
	global.shop[2,0]	= "Potion"				   // Type
  	global.shop[2,1]	= 1;					   // Lvl Req
	global.shop[2,5]	= "Mana Potion";	   // Name
	global.shop[2,7]	= 1;					   // Rarity
	global.shop[2,8]	= 1;					   // Stackable
	global.shop[2,9]	= 1;					   // Stack Count
	global.shop[2,14]	= 30;					   // Heal Amount
	global.shop[2,6]	= "A potion meant for restoring mana energy. Recovers 30% of your max MP.";

	// Slot 3



	}

	if o_shop_inventory.shoptype = "Accessory" {

	global.shop[0]		= 9								// Index
	global.shop[1,0]	= "Bracelet"					// Type
	global.shop[1,5]	= "Festival Bracelet";			// Name
	global.shop[1,1]	= 10								// Lvl
	global.shop[1,7]	= 1;							// Rarity
	global.shop[1,10]	= 2;							// Crit
	global.shop[1,6]	= "A cheap bracelet that was given away at a festival.";
	
	global.shop[1]			= 26					   // Index
	global.shop[2,0]		= "Earring"				   // Type
	global.shop[2,5]		= "Festival Earring";	   // Name
	global.shop[2,1]		= 10					   // Lvl
	global.shop[2,7]		= 1;					   // Rarity
	global.shop[2,53]		= 2;					   // Evasion
	global.shop[2,6]		= "A cheap earring that was given away at a festival.";
	
	global.shop[2]		= 21						   // Index
	global.shop[3,0]	= "Amulet"					   // Type
	global.shop[3,5]	= "Festival Necklace";		   // Name
	global.shop[3,1]	= 10							   // Lvl
	global.shop[3,7]	= 1;						   // Rarity
	global.shop[3,14]	= 2;						   // Heal Amt
	global.shop[3,6]	= "A cheap earring that was given away at a festival.";
	
	global.shop[3]		= 22						   // Index
	global.shop[4,0]	= "Ring"					   // Type
	global.shop[4,5]	= "Festival Ring";			   // Name
	global.shop[4,1]	= 10							   // Lvl
	global.shop[4,7]	= 1;						   // Rarity
	global.shop[4,2]	= 2;						   // Min Dmg
	global.shop[4,3]	= 4;						   // Max Dmg
	global.shop[4,6]	= "A cheap earring that was given away at a festival.";

	}
	
	
	if o_shop_inventory.shoptype = "Crafting" {
	
	global.shop[0]		= 5					// Index
	global.shop[1,0]	= "Crafting"			// Type
	global.shop[1,1]	= 1;				// Lvl Req
	global.shop[1,5]	= "Small Diamond"; // Name
	global.shop[1,7]	= 5;	// Rarity
	global.shop[1,8]	= 1;	// Stackable
	global.shop[1,9]	= 1;	// Stack Count
	global.shop[1,6]	= "A small Diamond that was found on the mountains";	// Description
	

	
	}
	
	if o_shop_inventory.shoptype = "Offhands" {
	
	}
	
} // End of shop = true

if o_shop_inventory.buyback = true {
/* Test
		// SLOT 1
		global.shop[21] = 3; // Index
		global.shop[22,0] = "Weapon"; 
		global.shop[22,1] = 75; // Level Req
		global.shop[22,2] = 150; // Min Damage
		global.shop[22,3] = 205; // Max Damage
		global.shop[22,4] = 0; // Sockets
		global.shop[22,5] = "Hydra Fang"; // Name
		global.shop[22,6] = "A sword made from the fangs of a Fire Drake"; // Description
		global.shop[22,7] = 10; // Rarity
		global.shop[22,10] = 50; // Critical
		global.shop[22,11] = 10; // Upgrade Level
		global.shop[22,23] = "Sword"; // Subweapon
*/
}

}/**/