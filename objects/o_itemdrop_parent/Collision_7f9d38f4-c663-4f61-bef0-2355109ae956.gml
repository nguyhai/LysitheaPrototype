/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79AEE9B4
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// If you want a timer on downclick, use below$(13_10)if o_inventory.down_click_timer = 10{$(13_10)	var downclick = keyboard_check_pressed(vk_down);$(13_10)} else{$(13_10)	var downclick = noone;$(13_10)}$(13_10)$(13_10)if downclick and o_player.canpickup == true and itempickedup = false and pickedup = false {$(13_10)$(13_10)var fullinventory = script_execute(scr_check_inventory_full);$(13_10)var pickupitem = 0;$(13_10)var pickupstackable;$(13_10)$(13_10)$(13_10)if fullinventory = 1 { // If inventory is NOT full, pick up item, check for any items and add to them first$(13_10)$(13_10)// Variables for single pickup$(13_10)itempickedup = true;$(13_10)other.canpickup = false;$(13_10)	$(13_10)// Play some sound on pickup			$(13_10)audio_play_sound(snd_pop, 9, false);$(13_10)$(13_10)// Need to do by STACKABLE/NON STACKABLE ITEMS$(13_10)$(13_10)if stackcount > 0 {$(13_10)$(13_10)pickupstackable = scr_itemcheck_stackable( // This just adds to all available items and returns any remainder$(13_10)	index, $(13_10)	stackcount$(13_10));$(13_10)$(13_10)$(13_10)if pickupstackable > 0 {	// If there is a remainder, create a new item$(13_10)// Press down to pickup this item$(13_10)$(13_10)scr_itempickup(	   	$(13_10)	index,		    // index	$(13_10)	type,			// Type$(13_10)	levelreq, 		// Level Req$(13_10)	mindamage, 		// Min Damage$(13_10)	maxdamage,		// Max Damage$(13_10)	sockets,		// Sockets$(13_10)	name,			// Name	$(13_10)	description,	// Description$(13_10)	rarity,			// Rarity$(13_10)	stackable,$(13_10)	pickupstackable,$(13_10)	critical,$(13_10)	upgradelevel,$(13_10)	sprite,$(13_10)	spriteindex,$(13_10)	healamount$(13_10));$(13_10)$(13_10)scr_itempickup1($(13_10)	defense,		$(13_10)	physresist,$(13_10)	fireresist,$(13_10)	lightningresist,$(13_10)	iceresist,$(13_10)	lightresist,$(13_10)	shadowresist,$(13_10)	allelementresist,$(13_10)	subweapon,$(13_10)	socket1,$(13_10)	socket2,$(13_10)	socket3,$(13_10)	abilities,$(13_10)	ability1,$(13_10)	ability2,$(13_10)	ability3$(13_10));$(13_10)$(13_10)scr_itempickup2($(13_10)	statbonuses		  ,$(13_10)	strbonus		  ,$(13_10)	dexbonus		  ,$(13_10)	intelbonus		  ,$(13_10)	vitbonus		  ,$(13_10)	physbonus		  ,$(13_10)	firebonus		  ,$(13_10)	lightningbonus	  ,$(13_10)	icebonus		  ,$(13_10)	lightbonus		  ,$(13_10)	shadowbonus		  ,$(13_10)	allelementbonus	  ,$(13_10)	set				  ,$(13_10)	setbonus1		  ,$(13_10)	setbonus2		  ,$(13_10)	setbonus3		  $(13_10));$(13_10)$(13_10)scr_itempickup3($(13_10)	setdescription1,$(13_10)	setdescription2,$(13_10)	setdescription3,$(13_10)	statbonus1,$(13_10)	statbonus2,$(13_10)	statbonus3,$(13_10)	evasion,$(13_10)$(13_10));$(13_10)$(13_10)// Destroy the picked up item$(13_10)pickupitem = 1;$(13_10)$(13_10)}	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// If not a stackable item, just pick it up normally$(13_10)if stackcount < 1 {	$(13_10)$(13_10)scr_itempickup(	   	$(13_10)	index,		    // index	$(13_10)	type,			// Type$(13_10)	levelreq, 		// Level Req$(13_10)	mindamage, 		// Min Damage$(13_10)	maxdamage,		// Max Damage$(13_10)	sockets,		// Sockets$(13_10)	name,			// Name	$(13_10)	description,	// Description$(13_10)	rarity,			// Rarity$(13_10)	stackable,$(13_10)	stackcount,$(13_10)	critical,$(13_10)	upgradelevel,$(13_10)	sprite,$(13_10)	spriteindex,$(13_10)	healamount$(13_10));$(13_10)$(13_10)scr_itempickup1($(13_10)	defense,		$(13_10)	physresist,$(13_10)	fireresist,$(13_10)	lightningresist,$(13_10)	iceresist,$(13_10)	lightresist,$(13_10)	shadowresist,$(13_10)	allelementresist,$(13_10)	subweapon,$(13_10)	socket1,$(13_10)	socket2,$(13_10)	socket3,$(13_10)	abilities,$(13_10)	ability1,$(13_10)	ability2,$(13_10)	ability3$(13_10));$(13_10)$(13_10)scr_itempickup2($(13_10)	statbonuses		  ,$(13_10)	strbonus		  ,$(13_10)	dexbonus		  ,$(13_10)	intelbonus		  ,$(13_10)	vitbonus		  ,$(13_10)	physbonus		  ,$(13_10)	firebonus		  ,$(13_10)	lightningbonus	  ,$(13_10)	icebonus		  ,$(13_10)	lightbonus		  ,$(13_10)	shadowbonus		  ,$(13_10)	allelementbonus	  ,$(13_10)	set				  ,$(13_10)	setbonus1		  ,$(13_10)	setbonus2		  ,$(13_10)	setbonus3		  $(13_10));$(13_10)$(13_10)scr_itempickup3($(13_10)	setdescription1,$(13_10)	setdescription2,$(13_10)	setdescription3,$(13_10)	statbonus1,$(13_10)	statbonus2,$(13_10)	statbonus3,$(13_10)	evasion,$(13_10)$(13_10)$(13_10));$(13_10)$(13_10)	pickupitem = 1;$(13_10)	}$(13_10)		$(13_10)} // End of fullinventory = 1$(13_10)$(13_10)$(13_10)// If inventory has no more slots$(13_10)if fullinventory = 0 {$(13_10)	$(13_10)	// If inventory is FULL, we still need to check to see if the item we are picking up is stackable or not$(13_10)	if stackcount < 1 {$(13_10)		audio_play_sound(snd_alert1,9,false);$(13_10)		instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)$(13_10)	}$(13_10)	$(13_10)	// if stackcount is greater than 1, pick up what we can, if there is an item of same type$(13_10)	// If there is remainder, create a new item. $(13_10)	// If nothing of same type or everything is full, give full inventory message.$(13_10)	 $(13_10)	if stackcount > 0 {$(13_10)		// Fill up inventory if there is item of same type$(13_10)		pickupstackable = scr_itemcheck_stackable_fullinv (	$(13_10)			index, $(13_10)			stackcount$(13_10)		);$(13_10)		$(13_10)		//var stackcountdisplay = stackcount - pickupstackable;$(13_10)$(13_10)		if pickupstackable = 0  { // If no remainder, no need to create new item, just play pickup sound	$(13_10)			audio_play_sound(snd_pop, 9, false);$(13_10)			//pickupitem = 1$(13_10)			pickedup = true;$(13_10)			image_alpha =0;$(13_10)			alarm[0] = 60; 	$(13_10)		}$(13_10)		 $(13_10)		// Use it's remainder and create a new item$(13_10)		if (pickupstackable > 0) {$(13_10)			pickedup = true;$(13_10)			image_alpha =0;$(13_10)			alarm[0] = 60;	$(13_10)			//var fullstackinv = script_execute(scr_check_inventory_full_stackable)$(13_10)				$(13_10)			script_execute(scr_stackable_stats_clear);$(13_10)			stackcount = pickupstackable;$(13_10)			script_execute(scr_stackable_stats_add);$(13_10)			// Create the new item$(13_10)			//instance_create_depth(x,y,0,o_item_drop_stackable);$(13_10)			alarm[2] = 1;$(13_10)			audio_play_sound(snd_alert1,9,false);$(13_10)			instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)		$(13_10)$(13_10)$(13_10)$(13_10)		}$(13_10)$(13_10)	}	$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)} // End of fullinventory = 0$(13_10)$(13_10)$(13_10)if pickupitem == 1 {$(13_10)pickedup = true;$(13_10)alarm[0] = 60;	$(13_10)$(13_10)// Loop through the pickup display array and add the item name rarity and stackcount to it$(13_10)for (i = 0; i < 30; i++){$(13_10)$(13_10)	if global.showPickup[i] = -1 {$(13_10)		global.showPickup[i] = 1;$(13_10)		global.showPickup[i+1,0] = name; $(13_10)		global.showPickup[i+1,1] = upgradelevel; $(13_10)		global.showPickup[i+1,2] = stackcount;$(13_10)		return(1);$(13_10)	}	$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)} $(13_10)$(13_10)"
/// @description Execute Code

// If you want a timer on downclick, use below
if o_inventory.down_click_timer = 10{
	var downclick = keyboard_check_pressed(vk_down);
} else{
	var downclick = noone;
}

if downclick and o_player.canpickup == true and itempickedup = false and pickedup = false {

var fullinventory = script_execute(scr_check_inventory_full);
var pickupitem = 0;
var pickupstackable;


if fullinventory = 1 { // If inventory is NOT full, pick up item, check for any items and add to them first

// Variables for single pickup
itempickedup = true;
other.canpickup = false;
	
// Play some sound on pickup			
audio_play_sound(snd_pop, 9, false);

// Need to do by STACKABLE/NON STACKABLE ITEMS

if stackcount > 0 {

pickupstackable = scr_itemcheck_stackable( // This just adds to all available items and returns any remainder
	index, 
	stackcount
);


if pickupstackable > 0 {	// If there is a remainder, create a new item
// Press down to pickup this item

scr_itempickup(	   	
	index,		    // index	
	type,			// Type
	levelreq, 		// Level Req
	mindamage, 		// Min Damage
	maxdamage,		// Max Damage
	sockets,		// Sockets
	name,			// Name	
	description,	// Description
	rarity,			// Rarity
	stackable,
	pickupstackable,
	critical,
	upgradelevel,
	sprite,
	spriteindex,
	healamount
);

scr_itempickup1(
	defense,		
	physresist,
	fireresist,
	lightningresist,
	iceresist,
	lightresist,
	shadowresist,
	allelementresist,
	subweapon,
	socket1,
	socket2,
	socket3,
	abilities,
	ability1,
	ability2,
	ability3
);

scr_itempickup2(
	statbonuses		  ,
	strbonus		  ,
	dexbonus		  ,
	intelbonus		  ,
	vitbonus		  ,
	physbonus		  ,
	firebonus		  ,
	lightningbonus	  ,
	icebonus		  ,
	lightbonus		  ,
	shadowbonus		  ,
	allelementbonus	  ,
	set				  ,
	setbonus1		  ,
	setbonus2		  ,
	setbonus3		  
);

scr_itempickup3(
	setdescription1,
	setdescription2,
	setdescription3,
	statbonus1,
	statbonus2,
	statbonus3,
	evasion,

);

// Destroy the picked up item
pickupitem = 1;

}	
}



// If not a stackable item, just pick it up normally
if stackcount < 1 {	

scr_itempickup(	   	
	index,		    // index	
	type,			// Type
	levelreq, 		// Level Req
	mindamage, 		// Min Damage
	maxdamage,		// Max Damage
	sockets,		// Sockets
	name,			// Name	
	description,	// Description
	rarity,			// Rarity
	stackable,
	stackcount,
	critical,
	upgradelevel,
	sprite,
	spriteindex,
	healamount
);

scr_itempickup1(
	defense,		
	physresist,
	fireresist,
	lightningresist,
	iceresist,
	lightresist,
	shadowresist,
	allelementresist,
	subweapon,
	socket1,
	socket2,
	socket3,
	abilities,
	ability1,
	ability2,
	ability3
);

scr_itempickup2(
	statbonuses		  ,
	strbonus		  ,
	dexbonus		  ,
	intelbonus		  ,
	vitbonus		  ,
	physbonus		  ,
	firebonus		  ,
	lightningbonus	  ,
	icebonus		  ,
	lightbonus		  ,
	shadowbonus		  ,
	allelementbonus	  ,
	set				  ,
	setbonus1		  ,
	setbonus2		  ,
	setbonus3		  
);

scr_itempickup3(
	setdescription1,
	setdescription2,
	setdescription3,
	statbonus1,
	statbonus2,
	statbonus3,
	evasion,


);

	pickupitem = 1;
	}
		
} // End of fullinventory = 1


// If inventory has no more slots
if fullinventory = 0 {
	
	// If inventory is FULL, we still need to check to see if the item we are picking up is stackable or not
	if stackcount < 1 {
		audio_play_sound(snd_alert1,9,false);
		instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)
	}
	
	// if stackcount is greater than 1, pick up what we can, if there is an item of same type
	// If there is remainder, create a new item. 
	// If nothing of same type or everything is full, give full inventory message.
	 
	if stackcount > 0 {
		// Fill up inventory if there is item of same type
		pickupstackable = scr_itemcheck_stackable_fullinv (	
			index, 
			stackcount
		);
		
		//var stackcountdisplay = stackcount - pickupstackable;

		if pickupstackable = 0  { // If no remainder, no need to create new item, just play pickup sound	
			audio_play_sound(snd_pop, 9, false);
			//pickupitem = 1
			pickedup = true;
			image_alpha =0;
			alarm[0] = 60; 	
		}
		 
		// Use it's remainder and create a new item
		if (pickupstackable > 0) {
			pickedup = true;
			image_alpha =0;
			alarm[0] = 60;	
			//var fullstackinv = script_execute(scr_check_inventory_full_stackable)
				
			script_execute(scr_stackable_stats_clear);
			stackcount = pickupstackable;
			script_execute(scr_stackable_stats_add);
			// Create the new item
			//instance_create_depth(x,y,0,o_item_drop_stackable);
			alarm[2] = 1;
			audio_play_sound(snd_alert1,9,false);
			instance_create_depth(x-250,y-100,0,o_shop_message_inventoryfull)		



		}

	}	
	
	
	
	
} // End of fullinventory = 0


if pickupitem == 1 {
pickedup = true;
alarm[0] = 60;	

// Loop through the pickup display array and add the item name rarity and stackcount to it
for (i = 0; i < 30; i++){

	if global.showPickup[i] = -1 {
		global.showPickup[i] = 1;
		global.showPickup[i+1,0] = name; 
		global.showPickup[i+1,1] = upgradelevel; 
		global.showPickup[i+1,2] = stackcount;
		return(1);
	}	
}
}





}