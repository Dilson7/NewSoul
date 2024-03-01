/// @description Insert description here

if other.tomarDano == true{
	var _dir = point_direction(x, y, other.x, other.y);

	with (other){
	empurrar_dir = _dir;
	estado = Ash_hit;
	alarm[2] = 10;
	alarm[3] = 120;
	tomarDano = false;
	vida -= 4;
	}
	
	var _inst = instance_create_layer(x, y, "Instances_1", obj_dano);
	_inst.alvo = other;
	_inst.dano = 4;
}


