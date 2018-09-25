/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 553132D1
/// @DnDArgument : "code" "if hp_potion < 3600 {$(13_10)	hp_potion +=1;$(13_10)}$(13_10)$(13_10)if mp_potion < 3600 {$(13_10)	mp_potion +=1;$(13_10)}"
if hp_potion < 3600 {
	hp_potion +=1;
}

if mp_potion < 3600 {
	mp_potion +=1;
}