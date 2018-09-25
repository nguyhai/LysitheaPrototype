/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 542917A8
/// @DnDArgument : "code" "/// @ Get the direction and move that way$(13_10)if (!place_meeting(x,y+1,o_solid)) {$(13_10)	vspd +=grav; //vspd = gravity speed$(13_10)	}$(13_10)move(o_solid);$(13_10)sprite_index = spr_run;$(13_10)dashcd = 1;$(13_10)jumps =1; //  Make jump 1 so you cant double jump after air dash$(13_10)var dash_distance = 10; //distance to move$(13_10)var dash_resolution = 2; //distance of each step (higher = less CPU usage, but crappier resolution)$(13_10)$(13_10)for (var i = 0; i < dash_distance; i += dash_resolution) $(13_10){	$(13_10)	$(13_10)	if (!place_meeting(x + dash_resolution, y, o_solid))$(13_10)        {	$(13_10)			$(13_10)            //no wall, so keep moving forward$(13_10)            x += dash_resolution;$(13_10)        }$(13_10)        else$(13_10)        {$(13_10)            //if we found a wall, stop moving$(13_10)			hspd = 7;$(13_10)	$(13_10)            break;$(13_10)        }$(13_10)    }$(13_10)$(13_10)//-----------------------------------$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @ Get the direction and move that way
if (!place_meeting(x,y+1,o_solid)) {
	vspd +=grav; //vspd = gravity speed
	}
move(o_solid);
sprite_index = spr_run;
dashcd = 1;
jumps =1; //  Make jump 1 so you cant double jump after air dash
var dash_distance = 10; //distance to move
var dash_resolution = 2; //distance of each step (higher = less CPU usage, but crappier resolution)

for (var i = 0; i < dash_distance; i += dash_resolution) 
{	
	
	if (!place_meeting(x + dash_resolution, y, o_solid))
        {	
			
            //no wall, so keep moving forward
            x += dash_resolution;
        }
        else
        {
            //if we found a wall, stop moving
			hspd = 7;
	
            break;
        }
    }

//-----------------------------------