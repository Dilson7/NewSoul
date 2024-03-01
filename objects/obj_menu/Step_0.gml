/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(global.controle, gp_padu){
	in--;
	if in < 0 {
		in = op_max - 1;
	}
}

if keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(global.controle, gp_padd){
	in++;
	if in > op_max - 1{
		in = 0;
	}
}

if global.tecla{
	if in == 0{
		
	if obj_Ash.morreu == true{
	with (obj_Ash){
	Nmortes += 1;
	moedas = 0;
	Guarana = 0;
	Torta = 0;
	vida = max_vida[level];
	room_goto(SalaoDasAlmas);
	x = 110;
	y = 670;
	obj_Camera.x = 110;
	obj_Camera.y = 670;
	global.dialogo = false;
	obj_Ash.morreu = false;
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	instance_destroy();
	}else{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	obj_Controle.pausa = false;
	instance_destroy();
	}
	}else if in == 1 {
		game_restart()
	}else if in == 2 {
		game_end()
	}
	}



