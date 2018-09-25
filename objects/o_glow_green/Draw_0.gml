/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5626E4E4
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)gpu_set_blendmode(bm_add)$(13_10)draw_sprite_ext(spr_orb, 0,x,y,1,1,0,c_green,image_alpha);$(13_10)draw_set_alpha(1)$(13_10)gpu_set_blendmode(bm_normal)$(13_10)"
/// @description Execute Code

gpu_set_blendmode(bm_add)
draw_sprite_ext(spr_orb, 0,x,y,1,1,0,c_green,image_alpha);
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)