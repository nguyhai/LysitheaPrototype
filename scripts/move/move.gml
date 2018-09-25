/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7DC45083
/// @DnDArgument : "code" "///move(collision_object$(13_10)var collision_object = argument0;$(13_10)$(13_10)// Horizontal Collisions$(13_10)$(13_10)//If place meeting is hspd, you stop. $(13_10)if (place_meeting (x+hspd, y, collision_object)){$(13_10)$(13_10)	// Add logic to scale slopes-------------------$(13_10)	$(13_10)	yplus = 0; // variable for how much space we can check$(13_10)	// If we found somehwere that is free.... This should allow us to go 45 degree angle, if you change the 1 to higher, can go up steeper. $(13_10)	while (place_meeting (x+hspd, y-yplus, collision_object) && yplus <= abs(1.5*hspd)){$(13_10)		yplus +=1;$(13_10)	}$(13_10)	// Check to see if the wall is too steep (yplus is too big)$(13_10)	if place_meeting (x+hspd,y-yplus, collision_object) {$(13_10)		while (!place_meeting(x + sign(hspd), y, collision_object)){$(13_10)			x += sign(hspd);$(13_10)		}$(13_10)		hspd=0;$(13_10)	} else {$(13_10)		y-= yplus;$(13_10)	}$(13_10)$(13_10)	// End slope logic -------------------------$(13_10)}$(13_10)x+=hspd;$(13_10)$(13_10)$(13_10)// This code is for downward slopes, it's so your player doesn't keep "falling" when going downward slope. $(13_10)if !place_meeting(x,y,collision_object) && vspd >= 0 && place_meeting(x,y+2+abs(hspd),collision_object){$(13_10)	while(!place_meeting(x,y+1,collision_object)) {$(13_10)		y += 1;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Vertical Collisions - This is if u jump and land on a solid$(13_10)if (place_meeting (x, y+vspd, collision_object)){$(13_10)	while (!place_meeting(x, y + sign(vspd), collision_object)){$(13_10)		y += sign(vspd);$(13_10)		}$(13_10)	vspd=0;$(13_10)}$(13_10)y+=vspd;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
///move(collision_object
var collision_object = argument0;

// Horizontal Collisions

//If place meeting is hspd, you stop. 
if (place_meeting (x+hspd, y, collision_object)){

	// Add logic to scale slopes-------------------
	
	yplus = 0; // variable for how much space we can check
	// If we found somehwere that is free.... This should allow us to go 45 degree angle, if you change the 1 to higher, can go up steeper. 
	while (place_meeting (x+hspd, y-yplus, collision_object) && yplus <= abs(1.5*hspd)){
		yplus +=1;
	}
	// Check to see if the wall is too steep (yplus is too big)
	if place_meeting (x+hspd,y-yplus, collision_object) {
		while (!place_meeting(x + sign(hspd), y, collision_object)){
			x += sign(hspd);
		}
		hspd=0;
	} else {
		y-= yplus;
	}

	// End slope logic -------------------------
}
x+=hspd;


// This code is for downward slopes, it's so your player doesn't keep "falling" when going downward slope. 
if !place_meeting(x,y,collision_object) && vspd >= 0 && place_meeting(x,y+2+abs(hspd),collision_object){
	while(!place_meeting(x,y+1,collision_object)) {
		y += 1;
	}
}

// Vertical Collisions - This is if u jump and land on a solid
if (place_meeting (x, y+vspd, collision_object)){
	while (!place_meeting(x, y + sign(vspd), collision_object)){
		y += sign(vspd);
		}
	vspd=0;
}
y+=vspd;