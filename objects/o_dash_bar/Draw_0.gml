/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 154F33A0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if showDash = true and o_player.cutscene = false {$(13_10)$(13_10)// Draw dash bar$(13_10)//draw_set_alpha(alpha_fade)$(13_10)draw_sprite(spr_dash_bar,0,x,y,)$(13_10)$(13_10)// Draw the sword and dash icon on the left$(13_10)$(13_10)if o_player.in_combat = true {$(13_10)	draw_sprite(spr_cross_sword,0,x-68,y-8)$(13_10)} else{$(13_10)	draw_sprite(spr_sprint,0,x-68,y-8)$(13_10)}$(13_10)$(13_10)// Draw top bar$(13_10)draw_sprite(spr_grey_bar,0,x-43,y-8)$(13_10)draw_sprite_ext(spr_yellow_bar,0,x-43,y-8,dash/maxdash,1,0,c_white,1)$(13_10)// Draw stamina bar$(13_10)draw_sprite_ext(spr_grey_bar,0,x-43,y+2,1,1.5,0,c_white,1)$(13_10)draw_sprite_ext(spr_green_bar,0,x-43,y+2,o_player.stamina/o_player.maxstamina,1.5,0,c_white,1)$(13_10)$(13_10)}"
/// @description Execute Code

if showDash = true and o_player.cutscene = false {

// Draw dash bar
//draw_set_alpha(alpha_fade)
draw_sprite(spr_dash_bar,0,x,y,)

// Draw the sword and dash icon on the left

if o_player.in_combat = true {
	draw_sprite(spr_cross_sword,0,x-68,y-8)
} else{
	draw_sprite(spr_sprint,0,x-68,y-8)
}

// Draw top bar
draw_sprite(spr_grey_bar,0,x-43,y-8)
draw_sprite_ext(spr_yellow_bar,0,x-43,y-8,dash/maxdash,1,0,c_white,1)
// Draw stamina bar
draw_sprite_ext(spr_grey_bar,0,x-43,y+2,1,1.5,0,c_white,1)
draw_sprite_ext(spr_green_bar,0,x-43,y+2,o_player.stamina/o_player.maxstamina,1.5,0,c_white,1)

}