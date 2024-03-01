function Boss_EscolherEstado(){
		
		if morreu == true{	
		estado = Boss_final;	
		}else{
		sprite_index = CavaleiroImortal;
		if distance_to_object(obj_Ash) < dist_aggro {
		ataque = true;
		alarm[0] = 20;
		}else{
		alarm[0] = 90;
		}
		}
}

function Boss_Magica(){
	obj_Ash.PodeAtacar = true;
	apareceBarra = true;
	sprite_index = CavaleiroImortalAtaqueM;
	x = Pos_x[P];
	y = Pos_y[P];
	if image_index == 1{
	instance_create_layer(x, y - 10, "Instances_1", obj_Magia);
	obj_Magia.dest_x = obj_Ash.x;
	obj_Magia.dest_y = obj_Ash.y;
	var _dir = point_direction(obj_Magia.x, obj_Magia.y, obj_Magia.dest_x, obj_Magia.dest_y);
	obj_Magia.HSPD = lengthdir_x(obj_Magia.SPD, _dir);
	obj_Magia.VSPD = lengthdir_y(obj_Magia.SPD, _dir);
	}
	if fim_da_animacao(){
		instance_destroy(obj_Magia);
		estado = Boss_EscolherEstado;
	}
}

function Boss_Ataque(){
	if obj_Ash.x < x {
	sprite_index = CavaleiroImortal_AtacandoE;
	if fim_da_animacao(){
	screenshake(20);
	if distance_to_object(obj_Ash) < 10 and obj_Ash.tomarDano == true and obj_Ash.vida > 0{
	var _dir = point_direction(x, y, obj_Ash.x, obj_Ash.y);

	with (obj_Ash){
	empurrar_dir = _dir;
	estado = Ash_hit;
	alarm[2] = 10;
	alarm[3] = 120;
	tomarDano = false;
	}
	
	obj_Ash.vida -= dano;
	
	var _inst = instance_create_layer(x, y, "Instances_1", obj_dano);
	_inst.alvo = obj_Ash;
	_inst.dano = dano;
}
	ataque = false;
	alarm[0] = 30;
	}
	}else{
	sprite_index = CavaleiroImortal_AtacadoD;
	if fim_da_animacao(){
	screenshake(20);
	if distance_to_object(obj_Ash) < 10 and obj_Ash.tomarDano == true and obj_Ash.vida > 0{
	var _dir = point_direction(x, y, obj_Ash.x, obj_Ash.y);

	with (obj_Ash){
	empurrar_dir = _dir;
	estado = Ash_hit;
	alarm[2] = 10;
	alarm[3] = 60;
	tomarDano = false;
	}
	
	obj_Ash.vida -= dano;
	
	var _inst = instance_create_layer(x, y, "Instances_1", obj_dano);
	_inst.alvo = obj_Ash;
	_inst.dano = dano;
}
	ataque = false;
	alarm[0] = 30;
	}
	}
}

function Boss_inicial() {
	obj_Ash.PodeAtacar = false;
	y = 116;
	x = 158;
	sprite_index = CavaleiroImortal;
	if instance_exists(obj_Dialogo) == true {
	alarm[0] = 120;
	}
}

function Boss_final() {
	obj_Ash.PodeAtacar = false;
	alarm[0] = 10;
}

function screenshake(_treme)
{
    var shake = instance_create_layer(0,0,"Instances_1",obj_screenshake);
    shake.shake = _treme;
}