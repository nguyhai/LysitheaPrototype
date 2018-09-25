/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66BA76D5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)switch (room) {$(13_10)	case rm_load_screen: $(13_10)$(13_10)	draw_text_color(400,75, "Level:" +" "+ string(level),c_black,c_black,c_black,c_black, 1 );$(13_10)$(13_10)	//Draw HP$(13_10)	draw_text_color(400,95,"HP:" +" "+  string(stats[? "health"]) + "/" + string(stats[? "maxhealth"]), c_black,c_black,c_black,c_black, 1);$(13_10)	$(13_10)	break;$(13_10)}$(13_10)$(13_10)$(13_10)if instance_exists(o_backbtn){$(13_10)$(13_10)	draw_text_color(camera_get_view_x(view_camera)+250,camera_get_view_y(view_camera)+35, "Level:" +" "+ string(level),c_black,c_black,c_black,c_black, 1 );$(13_10)	draw_text_color(camera_get_view_x(view_camera)+250,camera_get_view_y(view_camera)+55,"HP:" +" "+  string(stats[? "health"]) + "/" + string(stats[? "maxhealth"]), c_black,c_black,c_black,c_black, 1);$(13_10)}$(13_10)	$(13_10)"
/// @description Execute Code
switch (room) {
	case rm_load_screen: 

	draw_text_color(400,75, "Level:" +" "+ string(level),c_black,c_black,c_black,c_black, 1 );

	//Draw HP
	draw_text_color(400,95,"HP:" +" "+  string(stats[? "health"]) + "/" + string(stats[? "maxhealth"]), c_black,c_black,c_black,c_black, 1);
	
	break;
}


if instance_exists(o_backbtn){

	draw_text_color(camera_get_view_x(view_camera)+250,camera_get_view_y(view_camera)+35, "Level:" +" "+ string(level),c_black,c_black,c_black,c_black, 1 );
	draw_text_color(camera_get_view_x(view_camera)+250,camera_get_view_y(view_camera)+55,"HP:" +" "+  string(stats[? "health"]) + "/" + string(stats[? "maxhealth"]), c_black,c_black,c_black,c_black, 1);
}