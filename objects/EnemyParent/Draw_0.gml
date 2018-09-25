/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70DA8866
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self();$(13_10)$(13_10)// Draw the Health Bars above enemy$(13_10)var x1 = x-33;$(13_10)var y1 = y-(sprite_height/2) - 30 ;$(13_10)var x2 = x+33;$(13_10)var y2 = y-(sprite_height/2) - 13;$(13_10)$(13_10)if hp < maxhp and maxhp <100 {$(13_10)	draw_healthbar(x1, y1, x2, y2, (hp/maxhp)*100, c_black, c_red, c_green, 0, true, true);$(13_10)	draw_text(x-30,y1, string(hp)+"/"+string(maxhp));$(13_10)}$(13_10)// Bigger number, so expand the width of the hp bar$(13_10)$(13_10)if hp < maxhp and maxhp >=100 {$(13_10)	draw_healthbar(x1-15, y1, x2+25, y2, (hp/maxhp)*100, c_black, c_red, c_green, 0, true, true);$(13_10)	draw_text(x-30,y1, string(hp)+"/"+string(maxhp));$(13_10)}$(13_10)$(13_10)// Draw the enemy Level next to health bar"
/// @description Execute Code
draw_self();

// Draw the Health Bars above enemy
var x1 = x-33;
var y1 = y-(sprite_height/2) - 30 ;
var x2 = x+33;
var y2 = y-(sprite_height/2) - 13;

if hp < maxhp and maxhp <100 {
	draw_healthbar(x1, y1, x2, y2, (hp/maxhp)*100, c_black, c_red, c_green, 0, true, true);
	draw_text(x-30,y1, string(hp)+"/"+string(maxhp));
}
// Bigger number, so expand the width of the hp bar

if hp < maxhp and maxhp >=100 {
	draw_healthbar(x1-15, y1, x2+25, y2, (hp/maxhp)*100, c_black, c_red, c_green, 0, true, true);
	draw_text(x-30,y1, string(hp)+"/"+string(maxhp));
}

// Draw the enemy Level next to health bar