/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C593FC0
/// @DnDArgument : "var" "alpha"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(alpha <= 1)
{
	

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 6637C957
	/// @DnDParent : 5C593FC0
	/// @DnDArgument : "alpha" "alpha + 0.02"
	/// @DnDArgument : "alpha_relative" "1"
	
	{
		image_alpha += alpha + 0.02;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F90D548
	/// @DnDParent : 5C593FC0
	/// @DnDArgument : "var" "oFade.image_alpha"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(oFade.image_alpha >= 1)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 431471A7
			/// @DnDParent : 6F90D548
			instance_destroy();
	
	
	}


}

