/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F5E32AD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)instance_create_layer(camera_get_view_x(view_camera)+10, camera_get_view_y(view_camera)+30, "Menu", o_load_btn_1);$(13_10)instance_create_layer(camera_get_view_x(view_camera)+10, camera_get_view_y(view_camera)+215,"Menu", o_load_btn_2);$(13_10)instance_create_layer(camera_get_view_x(view_camera)+15, camera_get_view_y(view_camera)+400, "Menu", o_backbtn);$(13_10)instance_create_layer(camera_get_view_x(view_camera), camera_get_view_y(view_camera), "Menu", o_black_screen);$(13_10)$(13_10)$(13_10)instance_deactivate_object(o_savebtn);$(13_10)instance_deactivate_object(o_exitbtn);$(13_10)$(13_10)/*$(13_10)if keyboard_key_press(vk_escape){$(13_10)$(13_10)instance_destroy(o_black_screen);$(13_10)instance_destroy(o_load_btn_1);$(13_10)//instance_destroy();$(13_10)$(13_10)instance_activate_object(o_savebtn);$(13_10)instance_activate_object(o_exitbtn);$(13_10)$(13_10)$(13_10)o_savebtn.image_alpha = 1;$(13_10)o_exitbtn.image_alpha = 1;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// Save the game if clicked$(13_10)/*$(13_10)save_game("save.dat");$(13_10)$(13_10)instance_create_layer(0,0,"Fade", o_game_saved);"
/// @description Execute Code


instance_create_layer(camera_get_view_x(view_camera)+10, camera_get_view_y(view_camera)+30, "Menu", o_load_btn_1);
instance_create_layer(camera_get_view_x(view_camera)+10, camera_get_view_y(view_camera)+215,"Menu", o_load_btn_2);
instance_create_layer(camera_get_view_x(view_camera)+15, camera_get_view_y(view_camera)+400, "Menu", o_backbtn);
instance_create_layer(camera_get_view_x(view_camera), camera_get_view_y(view_camera), "Menu", o_black_screen);


instance_deactivate_object(o_savebtn);
instance_deactivate_object(o_exitbtn);

/*
if keyboard_key_press(vk_escape){

instance_destroy(o_black_screen);
instance_destroy(o_load_btn_1);
//instance_destroy();

instance_activate_object(o_savebtn);
instance_activate_object(o_exitbtn);


o_savebtn.image_alpha = 1;
o_exitbtn.image_alpha = 1;

}



// Save the game if clicked
/*
save_game("save.dat");

instance_create_layer(0,0,"Fade", o_game_saved);/**/