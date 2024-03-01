if global.dialogo == false and alarm[0] <= 0 and obj_Ash.vida > 1 and LigarEstado == true and instance_exists(obj_Menu) == false{
script_execute(estado);
}

if y > obj_Ash.y{
	depth = (obj_Ash.depth) - 10;
}else if y < obj_Ash.y{
	depth = (obj_Ash.depth) + 10;
}

if vida <= 0{
	LigarEstado = false;
	obj_Ash.PodeAtacar = false;
	image_index = 0;
	obj_Ash.Dial_ligar = false;
	if JaFalou == true{
	if obj_Ash.moedas < 200 {
	obj_Ash.moedas += 250;
	}
	if obj_Ash.level <= 5 {
	obj_Ash.xp += 500;
	obj_Ash.xp = clamp(obj_Ash.xp, 0, obj_Ash.max_xp[obj_Ash.level]);
	}
	morreu = true;
	obj_Ash.Dial_ligar = true;
	estado = Boss_final;
	LigarEstado = true;
	}
}

if obj_Ash.vida < 1 {
	sprite_index = CavaleiroImortal;
}

if instance_exists(obj_Menu) == true {
	image_index = 0;
	if obj_Ash.PodeAtacar == true{
	estado = Boss_EscolherEstado;
	}
}

