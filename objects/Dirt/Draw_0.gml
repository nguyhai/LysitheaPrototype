/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78C94966
/// @DnDArgument : "code" "/// @description Execute Code\n$(13_10)$(13_10)draw_self();$(13_10)$(13_10)// check for edges$(13_10)var right = place_meeting(x+1, y, o_solid);$(13_10)var left = place_meeting(x-1, y, o_solid);$(13_10)var up = place_meeting(x, y-1, o_solid);$(13_10)var down = place_meeting(x, y+1, o_solid);$(13_10)$(13_10)if (!up){$(13_10)	draw_sprite_ext(spr_dirt_top, 0, x, y-4, 1, 1, 0, c_white, 1);$(13_10)	$(13_10)}$(13_10)"

{
	/// @description Execute Code\n

draw_self();

// check for edges
var right = place_meeting(x+1, y, o_solid);
var left = place_meeting(x-1, y, o_solid);
var up = place_meeting(x, y-1, o_solid);
var down = place_meeting(x, y+1, o_solid);

if (!up){
	draw_sprite_ext(spr_dirt_top, 0, x, y-4, 1, 1, 0, c_white, 1);
	
}

}

