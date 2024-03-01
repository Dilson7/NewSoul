
if obj_Ash.ataqueC == false{
other.vida -= obj_Ash.dano;
}else{
other.vida -= obj_Ash.danoC;
}

var _dir = point_direction(obj_Ash.x, obj_Ash.y, other.x, other.y);
other.empurrar_dir = _dir;
other.empurrar_SPD = 6;
other.estado = Javali_hit;

other.alarm[1] = 5;
other.hit = true;

var _inst = instance_create_layer(x, y, "Instances_1", obj_dano);
_inst.alvo = other;
_inst.dano = obj_Ash.dano;
