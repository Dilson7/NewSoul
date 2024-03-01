/// @description Inserir descrição aqui
// Você pode escrever seu código neste edi

if place_meeting(x, y + 5, obj_Ash){
if BlocoPorta == true and obj_Ash.TemChave == true{
	instance_destroy()
}
}

if BlocoEscada == true and obj_Mortem.JaFalou == true {
	instance_destroy()
}

if BlocoPonte == true and obj_Astolfo.JaFalou == true {
	instance_destroy()
}

if BlocoFinal == true and obj_Boss.morreu == true {
	instance_destroy()
}

if BlocoEaster == true and obj_Ash.TemCafe == true {
	instance_destroy()
}




