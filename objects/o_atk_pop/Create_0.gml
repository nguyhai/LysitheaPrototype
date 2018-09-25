/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165E02AD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)depth = -1;$(13_10)critx = x;$(13_10)crity = y;$(13_10)critical_hit = false;$(13_10)damage = round(scr_calc_atk_dmg());$(13_10)totaldamage = scr_critical_hit(damage);$(13_10)audio_em = audio_emitter_create();"
/// @description Execute Code
depth = -1;
critx = x;
crity = y;
critical_hit = false;
damage = round(scr_calc_atk_dmg());
totaldamage = scr_critical_hit(damage);
audio_em = audio_emitter_create();