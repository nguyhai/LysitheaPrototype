/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B34F3D7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (pause == 1){$(13_10)draw_text(camera_get_view_x(o_view)+ 305, camera_get_view_y(o_view)+90, "Game Paused");$(13_10)//draw_nine_slice(s_textbox, 241, 120, 446, 367);$(13_10)/*$(13_10)draw_set_alpha(.5);$(13_10)draw_set_color(c_black);$(13_10)draw_rectangle(0,0,room_width, room_height,0);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)$(13_10)draw_set_color(c_black);$(13_10)$(13_10)*/$(13_10)$(13_10)// Draw the sprites over the buttons so alpha looks ok$(13_10)/*$(13_10)draw_set_alpha(1);	$(13_10)draw_sprite(spr_load, 0, camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+130);	$(13_10)draw_sprite(spr_save, 0, camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+180);	$(13_10)draw_sprite(spr_exitbutton, 0, camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+230);	$(13_10)*/$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)draw_set_alpha(1);$(13_10)$(13_10)"
/// @description Execute Code
if (pause == 1){
draw_text(camera_get_view_x(o_view)+ 305, camera_get_view_y(o_view)+90, "Game Paused");
//draw_nine_slice(s_textbox, 241, 120, 446, 367);
/*
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height,0);
draw_set_halign(fa_center);
draw_set_color(c_white);


draw_set_color(c_black);

*/

// Draw the sprites over the buttons so alpha looks ok
/*
draw_set_alpha(1);	
draw_sprite(spr_load, 0, camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+130);	
draw_sprite(spr_save, 0, camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+180);	
draw_sprite(spr_exitbutton, 0, camera_get_view_x(o_view)+ 320, camera_get_view_y(o_view)+230);	
*/


}

draw_set_alpha(1);

/**/