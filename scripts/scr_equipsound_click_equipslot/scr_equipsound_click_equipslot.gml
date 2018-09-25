/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 095D5F5A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// For Left Clicking the equipment slots$(13_10)var item = global.inventory[slot];$(13_10)$(13_10)if mouseItem != -1 {$(13_10)$(13_10)if o_mouseitem.subweapon == "2H Sword" {$(13_10)	audio_play_sound(snd_2hsword_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.subweapon == "Dagger" {$(13_10)	audio_play_sound(snd_dagger_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.subweapon == "Bracer" {$(13_10)	audio_play_sound(snd_bracer_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.subweapon == "Wand" {$(13_10)	audio_play_sound(snd_wand_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.subweapon == "Staff" {$(13_10)	audio_play_sound(snd_staff_equip, 9, false);$(13_10)}$(13_10)$(13_10)$(13_10)if o_mouseitem.subweapon == "Sword" {$(13_10)	audio_play_sound(snd_sword_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.subweapon == "Bow" {$(13_10)	audio_play_sound(snd_bow_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.subweapon == "Rifle" {$(13_10)	audio_play_sound(snd_gun_equip, 9, false);$(13_10)}$(13_10)	$(13_10)if o_mouseitem.type == "Ring" {$(13_10)	audio_play_sound(snd_ring_equip, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Chest Armor" {$(13_10)	audio_play_sound(snd_armor, 9, false);$(13_10)}$(13_10)if o_mouseitem.type == "Pants" {$(13_10)	audio_play_sound(snd_armor, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Hat" {$(13_10)	audio_play_sound(snd_hat, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Boots" {$(13_10)	audio_play_sound(snd_bootsgloves, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Gloves" {$(13_10)	audio_play_sound(snd_bootsgloves, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Bracelet" {$(13_10)	audio_play_sound(snd_bracelet, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Artifact" {$(13_10)	audio_play_sound(snd_artifact, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Amulet" {$(13_10)	audio_play_sound(snd_amulet, 9, false);$(13_10)}$(13_10)$(13_10)if o_mouseitem.type == "Earring" {$(13_10)	audio_play_sound(snd_earring, 9, false);$(13_10)}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//------------------------------------------------$(13_10)if item != -1 {$(13_10)$(13_10)if subweapon == "2H Sword" {$(13_10)	audio_play_sound(snd_2hsword_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Dagger" {$(13_10)	audio_play_sound(snd_dagger_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Bracer" {$(13_10)	audio_play_sound(snd_bracer_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Wand" {$(13_10)	audio_play_sound(snd_wand_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Staff" {$(13_10)	audio_play_sound(snd_staff_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Sword" {$(13_10)	audio_play_sound(snd_sword_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Bow" {$(13_10)	audio_play_sound(snd_bow_equip, 9, false);$(13_10)}$(13_10)$(13_10)if subweapon == "Rifle" {$(13_10)	audio_play_sound(snd_gun_equip, 9, false);$(13_10)}$(13_10)$(13_10)	$(13_10)if type == "Ring" {$(13_10)	audio_play_sound(snd_ring_equip, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Chest Armor" {$(13_10)	audio_play_sound(snd_armor, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Pants" {$(13_10)	audio_play_sound(snd_armor, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Hat" {$(13_10)	audio_play_sound(snd_hat, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Boots" {$(13_10)	audio_play_sound(snd_bootsgloves, 9, false);$(13_10)}$(13_10)if type == "Gloves" {$(13_10)	audio_play_sound(snd_bootsgloves, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Bracelet" {$(13_10)	audio_play_sound(snd_bracelet, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Artifact" {$(13_10)	audio_play_sound(snd_artifact, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Amulet" {$(13_10)	audio_play_sound(snd_amulet, 9, false);$(13_10)}$(13_10)$(13_10)if type == "Earring" {$(13_10)	audio_play_sound(snd_earring, 9, false);$(13_10)}$(13_10)$(13_10)}"
/// @description Execute Code
// For Left Clicking the equipment slots
var item = global.inventory[slot];

if mouseItem != -1 {

if o_mouseitem.subweapon == "2H Sword" {
	audio_play_sound(snd_2hsword_equip, 9, false);
}

if o_mouseitem.subweapon == "Dagger" {
	audio_play_sound(snd_dagger_equip, 9, false);
}

if o_mouseitem.subweapon == "Bracer" {
	audio_play_sound(snd_bracer_equip, 9, false);
}

if o_mouseitem.subweapon == "Wand" {
	audio_play_sound(snd_wand_equip, 9, false);
}

if o_mouseitem.subweapon == "Staff" {
	audio_play_sound(snd_staff_equip, 9, false);
}


if o_mouseitem.subweapon == "Sword" {
	audio_play_sound(snd_sword_equip, 9, false);
}

if o_mouseitem.subweapon == "Bow" {
	audio_play_sound(snd_bow_equip, 9, false);
}

if o_mouseitem.subweapon == "Rifle" {
	audio_play_sound(snd_gun_equip, 9, false);
}
	
if o_mouseitem.type == "Ring" {
	audio_play_sound(snd_ring_equip, 9, false);
}

if o_mouseitem.type == "Chest Armor" {
	audio_play_sound(snd_armor, 9, false);
}
if o_mouseitem.type == "Pants" {
	audio_play_sound(snd_armor, 9, false);
}

if o_mouseitem.type == "Hat" {
	audio_play_sound(snd_hat, 9, false);
}

if o_mouseitem.type == "Boots" {
	audio_play_sound(snd_bootsgloves, 9, false);
}

if o_mouseitem.type == "Gloves" {
	audio_play_sound(snd_bootsgloves, 9, false);
}

if o_mouseitem.type == "Bracelet" {
	audio_play_sound(snd_bracelet, 9, false);
}

if o_mouseitem.type == "Artifact" {
	audio_play_sound(snd_artifact, 9, false);
}

if o_mouseitem.type == "Amulet" {
	audio_play_sound(snd_amulet, 9, false);
}

if o_mouseitem.type == "Earring" {
	audio_play_sound(snd_earring, 9, false);
}


}






//------------------------------------------------
if item != -1 {

if subweapon == "2H Sword" {
	audio_play_sound(snd_2hsword_equip, 9, false);
}

if subweapon == "Dagger" {
	audio_play_sound(snd_dagger_equip, 9, false);
}

if subweapon == "Bracer" {
	audio_play_sound(snd_bracer_equip, 9, false);
}

if subweapon == "Wand" {
	audio_play_sound(snd_wand_equip, 9, false);
}

if subweapon == "Staff" {
	audio_play_sound(snd_staff_equip, 9, false);
}

if subweapon == "Sword" {
	audio_play_sound(snd_sword_equip, 9, false);
}

if subweapon == "Bow" {
	audio_play_sound(snd_bow_equip, 9, false);
}

if subweapon == "Rifle" {
	audio_play_sound(snd_gun_equip, 9, false);
}

	
if type == "Ring" {
	audio_play_sound(snd_ring_equip, 9, false);
}

if type == "Chest Armor" {
	audio_play_sound(snd_armor, 9, false);
}

if type == "Pants" {
	audio_play_sound(snd_armor, 9, false);
}

if type == "Hat" {
	audio_play_sound(snd_hat, 9, false);
}

if type == "Boots" {
	audio_play_sound(snd_bootsgloves, 9, false);
}
if type == "Gloves" {
	audio_play_sound(snd_bootsgloves, 9, false);
}

if type == "Bracelet" {
	audio_play_sound(snd_bracelet, 9, false);
}

if type == "Artifact" {
	audio_play_sound(snd_artifact, 9, false);
}

if type == "Amulet" {
	audio_play_sound(snd_amulet, 9, false);
}

if type == "Earring" {
	audio_play_sound(snd_earring, 9, false);
}

}