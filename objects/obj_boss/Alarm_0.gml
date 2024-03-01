/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if morreu == false{
image_index = 0;
obj_Ash.Dial_ligar = true;
if ataque = true{
ataque = false;
estado = Boss_Ataque;
}else{
P = choose(1, 2, 3, 4);
estado = Boss_Magica;
}
}else{
	
	if  i < 20 {
	sprite_index = CavaleiroImortal_dano2;
	screenshake(10);
	alarm[2] = 3;
	i++;
	}else{
	apareceBarra = false;
	obj_Ash.PodeAtacar = true;
	instance_destroy();
	}
}




