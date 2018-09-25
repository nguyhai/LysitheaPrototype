/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42D9297E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if global.inventory[63,23] == "Bow" {$(13_10)	draw_sprite(spr_arrow_ammo,0,camera_get_view_x(view_camera)+190, camera_get_view_y(view_camera)+ 75)$(13_10)	if o_player.arrows > 0 {$(13_10)		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, +" x "+string(o_player.arrows))$(13_10)	} else {$(13_10)		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, "  Reloading!")$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if global.inventory[63,23] == "Rifle" {$(13_10)	draw_sprite(spr_bullet_ammo,0,camera_get_view_x(view_camera)+190, camera_get_view_y(view_camera)+ 75)$(13_10)	if o_player.bullets > 0 {$(13_10)		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, +" x "+string(o_player.bullets))$(13_10)	} else {$(13_10)		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, "  Reloading!")$(13_10)	}$(13_10)	$(13_10)}"
/// @description Execute Code
if global.inventory[63,23] == "Bow" {
	draw_sprite(spr_arrow_ammo,0,camera_get_view_x(view_camera)+190, camera_get_view_y(view_camera)+ 75)
	if o_player.arrows > 0 {
		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, +" x "+string(o_player.arrows))
	} else {
		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, "  Reloading!")
	}
	
}

if global.inventory[63,23] == "Rifle" {
	draw_sprite(spr_bullet_ammo,0,camera_get_view_x(view_camera)+190, camera_get_view_y(view_camera)+ 75)
	if o_player.bullets > 0 {
		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, +" x "+string(o_player.bullets))
	} else {
		draw_text(camera_get_view_x(view_camera)+210, camera_get_view_y(view_camera)+ 70, "  Reloading!")
	}
	
}