/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B5FD975
/// @DnDArgument : "code" "/// @description Execute Ccre$(13_10)if !instance_exists(o_skill_window){$(13_10)$(13_10)	instance_create_layer(x,y,"Fade", o_skill_window);$(13_10)	$(13_10)	instance_create_depth(x,y,-9999, o_lightning_skillbox);$(13_10)	instance_create_depth(x,y,-9999, o_sword_skillbox);$(13_10)	instance_create_depth(x,y,-9999, o_multislash_skillbox);$(13_10)	$(13_10)	$(13_10)	} else{$(13_10)		instance_destroy(o_skill_window);$(13_10)		$(13_10)		instance_destroy(o_lightning_skillbox);$(13_10)		instance_destroy(o_sword_skillbox);$(13_10)		instance_destroy(o_multislash_skillbox);$(13_10)	}"
/// @description Execute Ccre
if !instance_exists(o_skill_window){

	instance_create_layer(x,y,"Fade", o_skill_window);
	
	instance_create_depth(x,y,-9999, o_lightning_skillbox);
	instance_create_depth(x,y,-9999, o_sword_skillbox);
	instance_create_depth(x,y,-9999, o_multislash_skillbox);
	
	
	} else{
		instance_destroy(o_skill_window);
		
		instance_destroy(o_lightning_skillbox);
		instance_destroy(o_sword_skillbox);
		instance_destroy(o_multislash_skillbox);
	}