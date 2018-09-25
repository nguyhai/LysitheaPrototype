/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63A0361C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/*$(13_10)Inventory Items$(13_10)$(13_10)0 = sword$(13_10)1 = red poition$(13_10)2 = blue potion$(13_10)4 = key$(13_10)*/$(13_10)// Timers for click$(13_10)left_click_timer = 0;$(13_10)right_click_timer = 0;$(13_10)down_click_timer = 0;$(13_10)$(13_10)// Fast divide$(13_10)$(13_10)quickdiv = false;$(13_10)quickdivstart = 0;$(13_10)quickdivtimer = 0;$(13_10)quickadd = false;$(13_10)$(13_10)globalvar showInv; // Display the inventory$(13_10)showInv = false;$(13_10)globalvar maxItems; // Total Item slots$(13_10)maxItems = 81; // Set to 81 because slot array is slot+1, might get out of index error if +1 not added$(13_10)// Space will determine how spaced apart the boxes are$(13_10)space = 39;$(13_10)rows = 6;$(13_10)columns = 10;$(13_10)maxproperties = 55;$(13_10)$(13_10)// We're gonna use arrays, and -1 is gonna be no items$(13_10)for (i = 0; i < maxItems; i+=1){$(13_10)	//Create the slots$(13_10)	global.inventory[i] = -1;$(13_10)	$(13_10)	button[i] = instance_create_depth(0,0,0,o_invbutton); //Create inventory buttons for each slot$(13_10)	button[i].slot = i;//Assign slot a variable so we can track it$(13_10)	$(13_10)	// Need these next coordinates so we can draw our item grid$(13_10)    coordx[i] = 0;$(13_10)    coordy[i] = 0;$(13_10)	$(13_10)	// Need a slot for properties, i = slot$(13_10)	// j = slot's properties$(13_10)	for (j = 0; j < maxproperties; j++){$(13_10)		global.inventory[i,j] = -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Need glboal mouse item to track what is carried by the mouse$(13_10)globalvar mouseItem;$(13_10)mouseItem = -1;$(13_10)$(13_10)instance_create_depth(0,0,-1000,o_mouseitem);$(13_10)$(13_10)// Need something for inventory stats$(13_10)inventorystats = -1;$(13_10)statrows = 4;$(13_10)statcolumns = -1;$(13_10)statspace = 44;$(13_10)// Creating another array to add some buttons for stats on the inventory screen$(13_10)for (i = 0; i < 8; i+=1){$(13_10)	//Create the slots$(13_10)	inventorystats[i] = -1;$(13_10)	$(13_10)	stat_button[i] = instance_create_depth(0,0,0,o_inv_stats_button); //Create inventory buttons for each slot$(13_10)	stat_button[i].statslot = i;//Assign slot a variable so we can track it$(13_10)	$(13_10)	// Need these next coordinates so we can draw our item grid$(13_10)    stat_coordx[i] = 0;$(13_10)    stat_coordy[i] = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)// OK so this changes the slot [1.0's properties]$(13_10)// [1,j] where 1 is the slot, j is the property$(13_10)// Testing type global.inventory[1,0] = string("Type");$(13_10)$(13_10)//This is how to add item to the slot: global.inventory[2] = 3;$(13_10)$(13_10)// Pick up an item : scr_itempickup(0);$(13_10)// Lets say there is sword on ground, you call this script and it will pick it up $(13_10)/*$(13_10)Check script is useful for either crafting or if you're holding a quest item$(13_10)swordcheck = scr_itemcheck(0);$(13_10)if swordcheck == 1{$(13_10)	// That means we have a sword$(13_10)	$(13_10)}$(13_10)*/$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
/*
Inventory Items

0 = sword
1 = red poition
2 = blue potion
4 = key
*/
// Timers for click
left_click_timer = 0;
right_click_timer = 0;
down_click_timer = 0;

// Fast divide

quickdiv = false;
quickdivstart = 0;
quickdivtimer = 0;
quickadd = false;

globalvar showInv; // Display the inventory
showInv = false;
globalvar maxItems; // Total Item slots
maxItems = 81; // Set to 81 because slot array is slot+1, might get out of index error if +1 not added
// Space will determine how spaced apart the boxes are
space = 39;
rows = 6;
columns = 10;
maxproperties = 55;

// We're gonna use arrays, and -1 is gonna be no items
for (i = 0; i < maxItems; i+=1){
	//Create the slots
	global.inventory[i] = -1;
	
	button[i] = instance_create_depth(0,0,0,o_invbutton); //Create inventory buttons for each slot
	button[i].slot = i;//Assign slot a variable so we can track it
	
	// Need these next coordinates so we can draw our item grid
    coordx[i] = 0;
    coordy[i] = 0;
	
	// Need a slot for properties, i = slot
	// j = slot's properties
	for (j = 0; j < maxproperties; j++){
		global.inventory[i,j] = -1;
	}
}

// Need glboal mouse item to track what is carried by the mouse
globalvar mouseItem;
mouseItem = -1;

instance_create_depth(0,0,-1000,o_mouseitem);

// Need something for inventory stats
inventorystats = -1;
statrows = 4;
statcolumns = -1;
statspace = 44;
// Creating another array to add some buttons for stats on the inventory screen
for (i = 0; i < 8; i+=1){
	//Create the slots
	inventorystats[i] = -1;
	
	stat_button[i] = instance_create_depth(0,0,0,o_inv_stats_button); //Create inventory buttons for each slot
	stat_button[i].statslot = i;//Assign slot a variable so we can track it
	
	// Need these next coordinates so we can draw our item grid
    stat_coordx[i] = 0;
    stat_coordy[i] = 0;
	
}






// OK so this changes the slot [1.0's properties]
// [1,j] where 1 is the slot, j is the property
// Testing type global.inventory[1,0] = string("Type");

//This is how to add item to the slot: global.inventory[2] = 3;

// Pick up an item : scr_itempickup(0);
// Lets say there is sword on ground, you call this script and it will pick it up 
/*
Check script is useful for either crafting or if you're holding a quest item
swordcheck = scr_itemcheck(0);
if swordcheck == 1{
	// That means we have a sword
	
}
*/


/**/