/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05049787
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Set timer for buyback expiration$(13_10)timeron = false;$(13_10)timer = 0;$(13_10)$(13_10)type = -1$(13_10)globalvar showShop; // Display the shop screen$(13_10)showShop = false; // Displays the shop screen$(13_10)shoptype = -1; // This is for item controller to determine what items are being sold$(13_10)$(13_10)shop = true; // This is for buying items$(13_10)buyback = false; // This is for item buyback$(13_10)$(13_10)$(13_10)// Need invisible buttons so we can hover over a stat and see it's information$(13_10)$(13_10)colspace = 50;$(13_10)columns = 1$(13_10)$(13_10)// We will need a 16 button 2d array to hold items and stats$(13_10)maxproperties = 55$(13_10)$(13_10)for (i = 0; i < 38; i+=1){$(13_10)$(13_10)	//Create the slots$(13_10)	global.shop[i] = -1;$(13_10)	$(13_10)	button[i] = instance_create_depth(0,0,0,o_shop_item_button); $(13_10)	button[i].slot = i;//Assign slot a variable so we can track it$(13_10)	$(13_10)    coordx[i] = 0;$(13_10)    coordy[i] = 0;$(13_10)$(13_10)	// Max Properties$(13_10)	for (j = 0; j < maxproperties; j++){$(13_10)		global.shop[i,j] = -1;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Set timer for buyback expiration
timeron = false;
timer = 0;

type = -1
globalvar showShop; // Display the shop screen
showShop = false; // Displays the shop screen
shoptype = -1; // This is for item controller to determine what items are being sold

shop = true; // This is for buying items
buyback = false; // This is for item buyback


// Need invisible buttons so we can hover over a stat and see it's information

colspace = 50;
columns = 1

// We will need a 16 button 2d array to hold items and stats
maxproperties = 55

for (i = 0; i < 38; i+=1){

	//Create the slots
	global.shop[i] = -1;
	
	button[i] = instance_create_depth(0,0,0,o_shop_item_button); 
	button[i].slot = i;//Assign slot a variable so we can track it
	
    coordx[i] = 0;
    coordy[i] = 0;

	// Max Properties
	for (j = 0; j < maxproperties; j++){
		global.shop[i,j] = -1;
	}
	
}