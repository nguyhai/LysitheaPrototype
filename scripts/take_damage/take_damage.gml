/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 790D3017
/// @DnDArgument : "code" "/// Hurt Stat when you take dmg$(13_10)$(13_10)	if (state != hurt_state){$(13_10)$(13_10)		if (instance_exists(o_player_stats)){$(13_10)		$(13_10)			if (!recently_hit){$(13_10)			$(13_10)				$(13_10)				o_player_stats.stats[? "health"] -= o_player.hurt;$(13_10)				instance_create_depth(x, y-12, 0, o_hurt_pop);$(13_10)				$(13_10)				// Turn invincile for 2 seconds if hurt$(13_10)				recently_hit = true;$(13_10)				alarm[0] = 2*room_speed;$(13_10)				alarm[1] = 1;$(13_10)				$(13_10)				sprite_index = spr_hurt;$(13_10)				image_index = 0;$(13_10)				image_speed = 1;$(13_10)				$(13_10)				//audio_emitter_pitch(audio_em, 1.6);$(13_10)				//audio_emitter_gain(audio_em, 1.4);$(13_10)				audio_play_sound(snd_hurt_sound, 8, false);$(13_10)$(13_10)				$(13_10)				// Makes you fly up a little$(13_10)				vspd = -9;$(13_10)		$(13_10)				// Knockback when hurt$(13_10)				hspd = (sign(x-other.x)*2);$(13_10)				$(13_10)				// Only go into hurt state if you're not dead$(13_10)				if o_player_stats.stats[? "health"] > 0 {$(13_10)					state = hurt_state;$(13_10)				}$(13_10)				$(13_10)				// Make it so I can move again$(13_10)				move(o_solid);$(13_10)$(13_10)			}$(13_10)$(13_10)		}$(13_10)}$(13_10)	//state = hurt_state;$(13_10)"
/// Hurt Stat when you take dmg

	if (state != hurt_state){

		if (instance_exists(o_player_stats)){
		
			if (!recently_hit){
			
				
				o_player_stats.stats[? "health"] -= o_player.hurt;
				instance_create_depth(x, y-12, 0, o_hurt_pop);
				
				// Turn invincile for 2 seconds if hurt
				recently_hit = true;
				alarm[0] = 2*room_speed;
				alarm[1] = 1;
				
				sprite_index = spr_hurt;
				image_index = 0;
				image_speed = 1;
				
				//audio_emitter_pitch(audio_em, 1.6);
				//audio_emitter_gain(audio_em, 1.4);
				audio_play_sound(snd_hurt_sound, 8, false);

				
				// Makes you fly up a little
				vspd = -9;
		
				// Knockback when hurt
				hspd = (sign(x-other.x)*2);
				
				// Only go into hurt state if you're not dead
				if o_player_stats.stats[? "health"] > 0 {
					state = hurt_state;
				}
				
				// Make it so I can move again
				move(o_solid);

			}

		}
}
	//state = hurt_state;