function Javali_colisao(){
	
if place_meeting(x + HSPD, y, obj_Parede){
	while !place_meeting(x + sign(HSPD), y, obj_Parede){
		x += sign(HSPD);
	}
	HSPD = 0;
}

x += HSPD;

if place_meeting(x, y + VSPD, obj_Parede){
	while !place_meeting(x,  y+ sign(VSPD), obj_Parede){
		y += sign(VSPD);
	}
	VSPD = 0;
}

y += VSPD;
}
	
function Javali_tem_Ash(){

	if distance_to_object(obj_Ash) <= dist_aggro{
		estado = Javali_perseguindo;
	}

}

function Javali_escolher_estado(){
	
	alarm[2] = irandom_range(60, 240);
	
	Javali_tem_Ash();
	prox_estado = choose(Javali_andar, Javali_parado);
	
	if prox_estado == Javali_andar{
		
		estado = Javali_andar
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
		
		
	}else if prox_estado == Javali_parado{
		estado = Javali_parado;
	}
}

function Javali_andar(){
	
	Javali_tem_Ash();
	image_speed = 1;
	
	dir = floor((point_direction(x, y, dest_x, dest_y) + 45)/90);
	switch (dir){
	default:
	sprite_index = esquerda;
	break;
	case 1:
	sprite_index = cima;
	break;
	case 2:
	sprite_index = direita;
	break;
	case 3:
	sprite_index = baixo;
	break;
	}
	
	if distance_to_point(dest_x, dest_y) > SPD {
	var _dir = point_direction(x, y, dest_x, dest_y);
	HSPD = lengthdir_x(SPD, _dir);
	VSPD = lengthdir_y(SPD, _dir);
	
	Javali_colisao();
	}else{
		x = dest_x;
		y = dest_y;
}
}

function Javali_parado(){
	Javali_tem_Ash();
	image_speed = 0.5;
}

function Javali_perseguindo(){
	image_speed = 1.5;
	
	dir = floor((point_direction(x, y, obj_Ash.x, obj_Ash.y)+ 45)/90);
	switch (dir){
	default:
	sprite_index = esquerda;
	break;
	case 1:
	sprite_index = cima;
	break;
	case 2:
	sprite_index = direita;
	break;
	case 3:
	sprite_index = baixo;
	break;
	}
	
	dest_x = obj_Ash.x;
	dest_y = obj_Ash.y;
	
	var _dir = point_direction(x, y, dest_x, dest_y);
	HSPD = lengthdir_x(SPD_perseg, _dir);
	VSPD = lengthdir_y(SPD_perseg, _dir);
	
	Javali_colisao();
	
	if distance_to_object(obj_Ash) >= dist_desaggro{
		estado = Javali_escolher_estado;
		alarm[0] = irandom_range(120, 240);
	}
	
}
	
function Javali_hit(){
	alarm[3] = 180;
	empurrar_SPD = lerp(empurrar_SPD, 0, 0.2);
	HSPD = lengthdir_x(empurrar_SPD, empurrar_dir);
	VSPD = lengthdir_y(empurrar_SPD, empurrar_dir);
	
	Javali_colisao();
}
	
function level2(){
level = 2;
vida = max_vida[level];
dano = max_dano[level];
xp = max_xp[level];

}

function level3(){
level = 3;
vida = max_vida[level];
dano = max_dano[level];
xp = max_xp[level];

}

function level4(){
level = 4;
vida = max_vida[level];
dano = max_dano[level];
xp = max_xp[level];

}

function level5(){
level = 5;
vida = max_vida[level];
dano = max_dano[level];
xp = max_xp[level];

}
