/// @description Ações
if global.dialogo == false and vida >= 1 and instance_exists(obj_Menu) == false{
script_execute(estado);
}

if vida < 1 and morreu == false {
	morreu = true;
	instance_create_layer(1, 1, "Instances_1", obj_Menu);
}

if morreu == true {
	image_alpha = 0;
}else{
	image_alpha = 1;
}

if (keyboard_check_pressed(ord("T")) or gamepad_button_check_pressed(global.controle, gp_padr)) and global.dialogo == false and Torta > 0 and vida < max_vida[level]{
	vida += max_vida[level]/3;
	vida = clamp(vida, 0, max_vida[level]);
	Torta--;
}


if (keyboard_check_pressed(ord("G")) or gamepad_button_check_pressed(global.controle, gp_padl)) and global.dialogo == false and Guarana > 0 and estamina < max_estamina[level]{
	estamina += max_estamina[level]/3;
	estamina = clamp(estamina, 0, max_estamina[level]);
	Guarana--;
}

if alarm[1] <=-0 {
	estamina += 0.2;
}

estamina = clamp(estamina, 0, max_estamina[level]);

if xp >= max_xp[level] && level < 5{
	
	xp = xp - max_xp[level];
	level += 1;
	vida = max_vida[level];
	estamina = max_estamina[level];
	dano = max_dano[level];
	danoC = dano * 2;
	
}

#region Dialogo

if distance_to_object(par_npcs) <= 10 and Dial_ligar == false and estado != ataque_carregado and estado != Ash_atancando and instance_exists(obj_Menu) == false{
	if (global.tecla and global.dialogo == false){
		var _npc = instance_nearest(x, y, par_npcs);
		var _dialogo = instance_create_layer(x, y, "Instances_1", obj_Dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}

#endregion

if cafezin == true {
	estamina = max_estamina[level];
}