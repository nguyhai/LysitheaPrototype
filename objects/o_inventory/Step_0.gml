/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7BE9E31B
/// @DnDArgument : "code" "/// @description Click Timers$(13_10)$(13_10)if left_click_timer < 10{$(13_10)	left_click_timer +=1;$(13_10)}$(13_10)$(13_10)if right_click_timer < 10{$(13_10)	right_click_timer +=1;$(13_10)}$(13_10)$(13_10)if down_click_timer < 10{$(13_10)	down_click_timer +=1;$(13_10)}$(13_10)$(13_10)if quickdiv = true {$(13_10)	$(13_10)	if quickdivstart > 60 {$(13_10)		quickdivtimer +=1;$(13_10)	}$(13_10)$(13_10)	quickdivtimer +=1;$(13_10)	$(13_10)	if quickdivtimer > 20 {$(13_10)		quickadd = true$(13_10)	}$(13_10)	$(13_10)} else {$(13_10)	quickadd = false;$(13_10)	quickdivtimer = 0;$(13_10)	quickdivstart = 0;$(13_10)}"
/// @description Click Timers

if left_click_timer < 10{
	left_click_timer +=1;
}

if right_click_timer < 10{
	right_click_timer +=1;
}

if down_click_timer < 10{
	down_click_timer +=1;
}

if quickdiv = true {
	
	if quickdivstart > 60 {
		quickdivtimer +=1;
	}

	quickdivtimer +=1;
	
	if quickdivtimer > 20 {
		quickadd = true
	}
	
} else {
	quickadd = false;
	quickdivtimer = 0;
	quickdivstart = 0;
}