
if obj_Ash.ataqueC == false{
other.vida -= obj_Ash.dano;
other.vida = clamp(other.vida, 0, other.max_vida);
}else{
other.vida -= obj_Ash.danoC;
other.vida = clamp(other.vida, 0, other.max_vida);
}

other.alarm[1] = 3;
other.hit = true;

var _inst = instance_create_layer(x, y, "Instances_1", obj_dano);
_inst.alvo = other;
_inst.dano = obj_Ash.dano;


