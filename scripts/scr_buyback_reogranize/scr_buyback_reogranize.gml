/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 046925F9
/// @DnDArgument : "code" "/// @description Sort the buyback inventory everytime you click the buyback button$(13_10)// Check for open slots$(13_10)var slotcheck;$(13_10)slotcheck = script_execute(scr_buyback_check);$(13_10)$(13_10)if slotcheck = 1 { // If there is an open slot, reorganize the inventory$(13_10)$(13_10)for (j = 0; j < 16; j++) {$(13_10)$(13_10)for (i=21;i<36;i++) {$(13_10)$(13_10)	if global.shop[i] = -1 { // finds the empty slot$(13_10)	$(13_10)global.shop[i]		 = global.shop[i+1]		 ;$(13_10)global.shop[i+1,0]	 = global.shop[i+2,0]	 ;$(13_10)global.shop[i+1,1]	 = global.shop[i+2,1]	 ;$(13_10)global.shop[i+1,2]	 = global.shop[i+2,2]	 ;$(13_10)global.shop[i+1,3]	 = global.shop[i+2,3]	 ;$(13_10)global.shop[i+1,4]	 = global.shop[i+2,4]	 ;$(13_10)global.shop[i+1,5]	 = global.shop[i+2,5]	 ;$(13_10)global.shop[i+1,6]	 = global.shop[i+2,6]	 ;$(13_10)global.shop[i+1,7]	 = global.shop[i+2,7]	 ;$(13_10)global.shop[i+1,8]	 = global.shop[i+2,8]	 ;$(13_10)global.shop[i+1,9]	 = global.shop[i+2,9]	 ;$(13_10)global.shop[i+1,10]	 = global.shop[i+2,10]	 ;$(13_10)global.shop[i+1,11]	 = global.shop[i+2,11]	 ;$(13_10)global.shop[i+1,12]	 = global.shop[i+2,12]	 ;$(13_10)global.shop[i+1,13]	 = global.shop[i+2,13]	 ;$(13_10)global.shop[i+1,14]	 = global.shop[i+2,14]	 ;$(13_10)global.shop[i+1,15]	 = global.shop[i+2,15]	 ;$(13_10)global.shop[i+1,16]	 = global.shop[i+2,16]	 ;$(13_10)global.shop[i+1,17]	 = global.shop[i+2,17]	 ;$(13_10)global.shop[i+1,18]	 = global.shop[i+2,18]	 ;$(13_10)global.shop[i+1,19]	 = global.shop[i+2,19]	 ;$(13_10)global.shop[i+1,20]	 = global.shop[i+2,20]	 ;$(13_10)global.shop[i+1,21]	 = global.shop[i+2,21]	 ;$(13_10)global.shop[i+1,22]	 = global.shop[i+2,22]	 ;$(13_10)global.shop[i+1,23]	 = global.shop[i+2,23]	 ;$(13_10)global.shop[i+1,24]	 = global.shop[i+2,24]	 ;$(13_10)global.shop[i+1,25]	 = global.shop[i+2,25]	 ;$(13_10)global.shop[i+1,26]	 = global.shop[i+2,26]	 ;$(13_10)global.shop[i+1,27]	 = global.shop[i+2,27]	 ;$(13_10)global.shop[i+1,28]	 = global.shop[i+2,28]	 ;$(13_10)global.shop[i+1,29]	 = global.shop[i+2,29]	 ;$(13_10)global.shop[i+1,30]	 = global.shop[i+2,30]	 ;$(13_10)global.shop[i+1,31]	 = global.shop[i+2,31]	 ;$(13_10)global.shop[i+1,32]	 = global.shop[i+2,32]	 ;$(13_10)global.shop[i+1,33]	 = global.shop[i+2,33]	 ;$(13_10)global.shop[i+1,34]	 = global.shop[i+2,34]	 ;$(13_10)global.shop[i+1,35]	 = global.shop[i+2,35]	 ;$(13_10)global.shop[i+1,36]	 = global.shop[i+2,36]	 ;$(13_10)global.shop[i+1,37]	 = global.shop[i+2,37]	 ;$(13_10)global.shop[i+1,38]	 = global.shop[i+2,38]	 ;$(13_10)global.shop[i+1,39]	 = global.shop[i+2,39]	 ;$(13_10)global.shop[i+1,40]	 = global.shop[i+2,40]	 ;$(13_10)global.shop[i+1,41]	 = global.shop[i+2,41]	 ;$(13_10)global.shop[i+1,42]	 = global.shop[i+2,42]	 ;$(13_10)global.shop[i+1,43]	 = global.shop[i+2,43]	 ;$(13_10)global.shop[i+1,44]	 = global.shop[i+2,44]	 ;$(13_10)global.shop[i+1,45]	 = global.shop[i+2,45]	 ;$(13_10)global.shop[i+1,46]	 = global.shop[i+2,46]	 ;$(13_10)global.shop[i+1,47]	 = global.shop[i+2,47]	 ;$(13_10)global.shop[i+1,48]	 = global.shop[i+2,48]	 ;$(13_10)global.shop[i+1,49]	 = global.shop[i+2,49]	 ;$(13_10)global.shop[i+1,50]	 = global.shop[i+2,50]	 ;$(13_10)global.shop[i+1,51]	 = global.shop[i+2,51]	 ;$(13_10)global.shop[i+1,52]	 = global.shop[i+2,52]	 ;$(13_10)global.shop[i+1,53]	 = global.shop[i+2,53]	 ;$(13_10)$(13_10)$(13_10)	global.shop[i+1]	= -1;$(13_10)	global.shop[i+2,0]	= -1;$(13_10)	global.shop[i+2,1]	= -1;$(13_10)	global.shop[i+2,2]	= -1;$(13_10)	global.shop[i+2,3]	= -1;$(13_10)	global.shop[i+2,4]	= -1;$(13_10)	global.shop[i+2,5]	= -1;$(13_10)	global.shop[i+2,6]	= -1;$(13_10)	global.shop[i+2,7]	= -1;$(13_10)	global.shop[i+2,8]	= -1;$(13_10)	global.shop[i+2,9]	= -1;$(13_10)	global.shop[i+2,10]	= -1;$(13_10)	global.shop[i+2,11]	= -1;$(13_10)	global.shop[i+2,12]	= -1;$(13_10)	global.shop[i+2,13]	= -1;$(13_10)	global.shop[i+2,14]	= -1;$(13_10)	global.shop[i+2,15]	= -1;$(13_10)	global.shop[i+2,16]	= -1;$(13_10)	global.shop[i+2,17]	= -1;$(13_10)	global.shop[i+2,18]	= -1;$(13_10)	global.shop[i+2,19]	= -1;$(13_10)	global.shop[i+2,20]	= -1;$(13_10)	global.shop[i+2,21]	= -1;$(13_10)	global.shop[i+2,22]	= -1;$(13_10)	global.shop[i+2,23]	= -1;$(13_10)	global.shop[i+2,24]	= -1;$(13_10)	global.shop[i+2,25]	= -1;$(13_10)	global.shop[i+2,26]	= -1;$(13_10)	global.shop[i+2,27]	= -1;$(13_10)	global.shop[i+2,28]	= -1;$(13_10)	global.shop[i+2,29]	= -1;$(13_10)	global.shop[i+2,30]	= -1;$(13_10)	global.shop[i+2,31]	= -1;$(13_10)	global.shop[i+2,32]	= -1;$(13_10)	global.shop[i+2,33]	= -1;$(13_10)	global.shop[i+2,34]	= -1;$(13_10)	global.shop[i+2,35]	= -1;$(13_10)	global.shop[i+2,36]	= -1;$(13_10)	global.shop[i+2,37]	= -1;$(13_10)	global.shop[i+2,38]	= -1;$(13_10)	global.shop[i+2,39]	= -1;$(13_10)	global.shop[i+2,40]	= -1;$(13_10)	global.shop[i+2,41]	= -1;$(13_10)	global.shop[i+2,42]	= -1;$(13_10)	global.shop[i+2,43]	= -1;$(13_10)	global.shop[i+2,44]	= -1;$(13_10)	global.shop[i+2,45]	= -1;$(13_10)	global.shop[i+2,46]	= -1;$(13_10)	global.shop[i+2,47]	= -1;$(13_10)	global.shop[i+2,48]	= -1;$(13_10)	global.shop[i+2,49]	= -1;$(13_10)	global.shop[i+2,50]	= -1;$(13_10)	global.shop[i+2,51]	= -1;$(13_10)	global.shop[i+2,52]	= -1;$(13_10)	global.shop[i+2,53]	= -1;$(13_10)							$(13_10)						$(13_10)		}		$(13_10)	}			$(13_10)}				$(13_10)$(13_10)}	$(13_10)							"
/// @description Sort the buyback inventory everytime you click the buyback button
// Check for open slots
var slotcheck;
slotcheck = script_execute(scr_buyback_check);

if slotcheck = 1 { // If there is an open slot, reorganize the inventory

for (j = 0; j < 16; j++) {

for (i=21;i<36;i++) {

	if global.shop[i] = -1 { // finds the empty slot
	
global.shop[i]		 = global.shop[i+1]		 ;
global.shop[i+1,0]	 = global.shop[i+2,0]	 ;
global.shop[i+1,1]	 = global.shop[i+2,1]	 ;
global.shop[i+1,2]	 = global.shop[i+2,2]	 ;
global.shop[i+1,3]	 = global.shop[i+2,3]	 ;
global.shop[i+1,4]	 = global.shop[i+2,4]	 ;
global.shop[i+1,5]	 = global.shop[i+2,5]	 ;
global.shop[i+1,6]	 = global.shop[i+2,6]	 ;
global.shop[i+1,7]	 = global.shop[i+2,7]	 ;
global.shop[i+1,8]	 = global.shop[i+2,8]	 ;
global.shop[i+1,9]	 = global.shop[i+2,9]	 ;
global.shop[i+1,10]	 = global.shop[i+2,10]	 ;
global.shop[i+1,11]	 = global.shop[i+2,11]	 ;
global.shop[i+1,12]	 = global.shop[i+2,12]	 ;
global.shop[i+1,13]	 = global.shop[i+2,13]	 ;
global.shop[i+1,14]	 = global.shop[i+2,14]	 ;
global.shop[i+1,15]	 = global.shop[i+2,15]	 ;
global.shop[i+1,16]	 = global.shop[i+2,16]	 ;
global.shop[i+1,17]	 = global.shop[i+2,17]	 ;
global.shop[i+1,18]	 = global.shop[i+2,18]	 ;
global.shop[i+1,19]	 = global.shop[i+2,19]	 ;
global.shop[i+1,20]	 = global.shop[i+2,20]	 ;
global.shop[i+1,21]	 = global.shop[i+2,21]	 ;
global.shop[i+1,22]	 = global.shop[i+2,22]	 ;
global.shop[i+1,23]	 = global.shop[i+2,23]	 ;
global.shop[i+1,24]	 = global.shop[i+2,24]	 ;
global.shop[i+1,25]	 = global.shop[i+2,25]	 ;
global.shop[i+1,26]	 = global.shop[i+2,26]	 ;
global.shop[i+1,27]	 = global.shop[i+2,27]	 ;
global.shop[i+1,28]	 = global.shop[i+2,28]	 ;
global.shop[i+1,29]	 = global.shop[i+2,29]	 ;
global.shop[i+1,30]	 = global.shop[i+2,30]	 ;
global.shop[i+1,31]	 = global.shop[i+2,31]	 ;
global.shop[i+1,32]	 = global.shop[i+2,32]	 ;
global.shop[i+1,33]	 = global.shop[i+2,33]	 ;
global.shop[i+1,34]	 = global.shop[i+2,34]	 ;
global.shop[i+1,35]	 = global.shop[i+2,35]	 ;
global.shop[i+1,36]	 = global.shop[i+2,36]	 ;
global.shop[i+1,37]	 = global.shop[i+2,37]	 ;
global.shop[i+1,38]	 = global.shop[i+2,38]	 ;
global.shop[i+1,39]	 = global.shop[i+2,39]	 ;
global.shop[i+1,40]	 = global.shop[i+2,40]	 ;
global.shop[i+1,41]	 = global.shop[i+2,41]	 ;
global.shop[i+1,42]	 = global.shop[i+2,42]	 ;
global.shop[i+1,43]	 = global.shop[i+2,43]	 ;
global.shop[i+1,44]	 = global.shop[i+2,44]	 ;
global.shop[i+1,45]	 = global.shop[i+2,45]	 ;
global.shop[i+1,46]	 = global.shop[i+2,46]	 ;
global.shop[i+1,47]	 = global.shop[i+2,47]	 ;
global.shop[i+1,48]	 = global.shop[i+2,48]	 ;
global.shop[i+1,49]	 = global.shop[i+2,49]	 ;
global.shop[i+1,50]	 = global.shop[i+2,50]	 ;
global.shop[i+1,51]	 = global.shop[i+2,51]	 ;
global.shop[i+1,52]	 = global.shop[i+2,52]	 ;
global.shop[i+1,53]	 = global.shop[i+2,53]	 ;


	global.shop[i+1]	= -1;
	global.shop[i+2,0]	= -1;
	global.shop[i+2,1]	= -1;
	global.shop[i+2,2]	= -1;
	global.shop[i+2,3]	= -1;
	global.shop[i+2,4]	= -1;
	global.shop[i+2,5]	= -1;
	global.shop[i+2,6]	= -1;
	global.shop[i+2,7]	= -1;
	global.shop[i+2,8]	= -1;
	global.shop[i+2,9]	= -1;
	global.shop[i+2,10]	= -1;
	global.shop[i+2,11]	= -1;
	global.shop[i+2,12]	= -1;
	global.shop[i+2,13]	= -1;
	global.shop[i+2,14]	= -1;
	global.shop[i+2,15]	= -1;
	global.shop[i+2,16]	= -1;
	global.shop[i+2,17]	= -1;
	global.shop[i+2,18]	= -1;
	global.shop[i+2,19]	= -1;
	global.shop[i+2,20]	= -1;
	global.shop[i+2,21]	= -1;
	global.shop[i+2,22]	= -1;
	global.shop[i+2,23]	= -1;
	global.shop[i+2,24]	= -1;
	global.shop[i+2,25]	= -1;
	global.shop[i+2,26]	= -1;
	global.shop[i+2,27]	= -1;
	global.shop[i+2,28]	= -1;
	global.shop[i+2,29]	= -1;
	global.shop[i+2,30]	= -1;
	global.shop[i+2,31]	= -1;
	global.shop[i+2,32]	= -1;
	global.shop[i+2,33]	= -1;
	global.shop[i+2,34]	= -1;
	global.shop[i+2,35]	= -1;
	global.shop[i+2,36]	= -1;
	global.shop[i+2,37]	= -1;
	global.shop[i+2,38]	= -1;
	global.shop[i+2,39]	= -1;
	global.shop[i+2,40]	= -1;
	global.shop[i+2,41]	= -1;
	global.shop[i+2,42]	= -1;
	global.shop[i+2,43]	= -1;
	global.shop[i+2,44]	= -1;
	global.shop[i+2,45]	= -1;
	global.shop[i+2,46]	= -1;
	global.shop[i+2,47]	= -1;
	global.shop[i+2,48]	= -1;
	global.shop[i+2,49]	= -1;
	global.shop[i+2,50]	= -1;
	global.shop[i+2,51]	= -1;
	global.shop[i+2,52]	= -1;
	global.shop[i+2,53]	= -1;
							
						
		}		
	}			
}				

}