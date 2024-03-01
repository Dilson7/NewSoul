function Ash_colisao(){

if place_meeting(x + HSPD, y, obj_Parede) {
	while !place_meeting(x + sign(HSPD), y, obj_Parede) {
		x += sign(HSPD);
	}
	HSPD = 0;
}

x += HSPD;

if place_meeting(x, y + VSPD, obj_Parede) {
	while !place_meeting(x,  y+ sign(VSPD), obj_Parede) {
		y += sign(VSPD);
	}
	VSPD = 0;
}

y += VSPD;
}

function andar(){
gamepad_set_axis_deadzone(global.controle, 0.25);

esquerda = keyboard_check(ord("A")) or gamepad_axis_value(global.controle, gp_axislh) < -0.25;
direita = keyboard_check(ord("D")) or gamepad_axis_value(global.controle, gp_axislh) > 0.25;
cima = keyboard_check(ord("W")) or gamepad_axis_value(global.controle, gp_axislv) < -0.25;
baixo = keyboard_check(ord("S")) or gamepad_axis_value(global.controle, gp_axislv) > 0.25;

HSPD = (direita - esquerda);
VSPD = (baixo - cima);

SPD_dir = point_direction(x, y, x + HSPD, y + VSPD);

if HSPD != 0 or VSPD != 0 {
	SPD = 1.5;
	
}else{
	SPD = 0;
}

HSPD = lengthdir_x(SPD, SPD_dir);
VSPD = lengthdir_y(SPD, SPD_dir);

Ash_colisao();

if gamepad_is_connected(global.controle){
	
esquerdaC = gamepad_axis_value(global.controle, gp_axislh) < -0.25;
direitaC = gamepad_axis_value(global.controle, gp_axislh) > 0.25;
cimaC = gamepad_axis_value(global.controle, gp_axislv) < -0.25;
baixoC =  gamepad_axis_value(global.controle, gp_axislv) > 0.25;

if esquerdaC {
	dir = 2;
}else if direitaC {
	dir = 0;
}else if cimaC {
	dir = 1;
}else if baixoC {
	dir = 3;
}
	
}else{
	
	dir = floor((point_direction(x, y, mouse_x, mouse_y)+ 45)/90);
}

switch (dir){
default:
sprite_index = Ash_direita;
break;
case 1:
sprite_index = Ash_cima;
break;
case 2:
sprite_index = Ash_esquerda;
break;
case 3:
sprite_index = Ash_baixo;
break;
}

#region ataqueC

if mouse_check_button_pressed(mb_right) or gamepad_button_check_pressed(global.controle, gp_face2){
if estamina >= 25{
	if PodeAtacar == true {
	estamina -= 25;
	image_index = 0;
	alarm[1] = 180;
	alarm[0] = 20;
	estado = ataque_carregado;
	}
}
}
#endregion

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.controle, gp_face3){
if estamina >= 5{
	if PodeAtacar == true {
	estamina -= 5;
	image_index = 0;
	alarm[1] = 90;
	switch (dir){
	default:
	sprite_index = Ash_atacando_direita;
	break;
	case 1:
	sprite_index = Ash_atacando_cima;
	break;
	case 2:
	sprite_index = Ash_atacando_esquerda;
	break;
	case 3:
	sprite_index = Ash_atacando_baixo;
	break;
	}
	estado = Ash_atancando;
	}
}
}
}

function ataque_carregado(){

	sprite_index = Ash_ataque_carregado;
	if image_index >= 2{
	if atacar == false{
		ataqueC = true;
		instance_create_layer(x + 15, y, "Instances_1", obj_hitbox);
		instance_create_layer(x, y - 15, "Instances_1", obj_hitbox);
		instance_create_layer(x - 15, y, "Instances_1", obj_hitbox);
		instance_create_layer(x, y + 15, "Instances_1", obj_hitbox);
	
	atacar = true;
	}
	}
	if fim_da_animacao(){
		estado = andar;
		atacar = false;
	}
	}

function Ash_atancando(){
	ataqueC = false;
	if image_index >= 4{
	if atacar == false{
	switch (dir){
	default:
		instance_create_layer(x + 15, y, "Instances_1", obj_hitbox);
	break;
	case 1:
		instance_create_layer(x, y - 15, "Instances_1", obj_hitbox);
	break;
	case 2:
		instance_create_layer(x - 15, y, "Instances_1", obj_hitbox);
	break;
	case 3:
		instance_create_layer(x, y + 15, "Instances_1", obj_hitbox);
	break;
	}
	atacar = true;
	}
	}
	if fim_da_animacao(){
		estado = andar;
		atacar = false;
	}
}
	
function Ash_hit(){
	
	if alarm[2] > 0 {
	
	HSPD = lengthdir_x(3, empurrar_dir);
	VSPD = lengthdir_y(3, empurrar_dir);
	Ash_colisao();
	
	}else{
		estado = andar;
	}
}

