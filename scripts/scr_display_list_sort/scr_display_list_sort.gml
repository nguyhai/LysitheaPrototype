/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71033CCF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Loop through this 30 times to sort the inventory$(13_10)var slotcheck;$(13_10)slotcheck = script_execute(scr_check_display_list);$(13_10)$(13_10)if slotcheck = 1 { // If there is an open slot, reorganize the inventory$(13_10)$(13_10)for (j = 0; j < 30; j++) {$(13_10)$(13_10)for (i=0;i<28;i++) {$(13_10)$(13_10)	if global.showPickup[i] = -1 { // finds the empty slot$(13_10)		// If the slot is empty, take the stats in next slot$(13_10)		global.showPickup[i]		 = global.showPickup[i+1]	 ;$(13_10)		global.showPickup[i+1,0]	 = global.showPickup[i+2,0]	 ;$(13_10)		global.showPickup[i+1,1]	 = global.showPickup[i+2,1]	 ;$(13_10)		global.showPickup[i+1,2]	 = global.showPickup[i+2,2]	 ;$(13_10)		// Delete stats in next slot$(13_10)		global.showPickup[i+1]		= -1;$(13_10)		global.showPickup[i+2,0]	= -1;$(13_10)		global.showPickup[i+2,1]	= -1;$(13_10)		global.showPickup[i+2,2]	= -1;$(13_10)					$(13_10)		}		$(13_10)	}$(13_10)}	$(13_10)}							"
/// @description Execute Code

// Loop through this 30 times to sort the inventory
var slotcheck;
slotcheck = script_execute(scr_check_display_list);

if slotcheck = 1 { // If there is an open slot, reorganize the inventory

for (j = 0; j < 30; j++) {

for (i=0;i<28;i++) {

	if global.showPickup[i] = -1 { // finds the empty slot
		// If the slot is empty, take the stats in next slot
		global.showPickup[i]		 = global.showPickup[i+1]	 ;
		global.showPickup[i+1,0]	 = global.showPickup[i+2,0]	 ;
		global.showPickup[i+1,1]	 = global.showPickup[i+2,1]	 ;
		global.showPickup[i+1,2]	 = global.showPickup[i+2,2]	 ;
		// Delete stats in next slot
		global.showPickup[i+1]		= -1;
		global.showPickup[i+2,0]	= -1;
		global.showPickup[i+2,1]	= -1;
		global.showPickup[i+2,2]	= -1;
					
		}		
	}
}	
}