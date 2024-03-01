/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.tecla = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(global.controle, gp_face1);

if instance_exists(obj_Dialogo){
	global.dialogo = true;
}

if ((keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(global.controle, gp_start)) and global.dialogo == false) and instance_exists(obj_Menu) == false and obj_Ash.estado != ataque_carregado and obj_Ash.estado != Ash_atancando{
	instance_create_layer(1, 1, "Instances_1", obj_Menu);
	pausa = true;
}