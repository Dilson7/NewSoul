/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
if global.dialogo == true {
	depth = 0;
	sprite_index = Astolfo_falando;
}else{
	depth = 0;
	sprite_index = Astolfo;
}
if obj_Ash.Nmortes >= 1 {
	JaFalou = true;
}
