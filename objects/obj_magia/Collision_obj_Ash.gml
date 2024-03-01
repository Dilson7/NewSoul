/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if other.tomarDano == true and obj_Ash.vida > 0{
	var _dir = point_direction(x, y, other.x, other.y);

	with (other){
	empurrar_dir = _dir;
	estado = Ash_hit;
	alarm[2] = 10;
	alarm[3] = 120;
	tomarDano = false;
	}
	
	obj_Ash.vida -= dano;
	
	var _inst = instance_create_layer(x, y, "Instances_1", obj_dano);
	_inst.alvo = other;
	_inst.dano = dano;
	
	screenshake(15);
	
	instance_destroy();
}



