/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Inherit the parent event
event_inherited();

if alarm[3] >= 0{
draw_sprite_ext(spr_level[level], 0, x, y - 18, 0.6, 0.6, 0, c_white, 1);
}else{
draw_sprite_ext(spr_level[level], 0, x, y - 13, 0.6, 0.6, 0, c_white, 1);
}

if hit == true{
	gpu_set_fog(true, c_red, 0, 0);
	draw_self();
	gpu_set_fog(false, c_red, 0, 0);
}else{
	draw_self();
}

if alarm[3] >= 0{
	var _sprw = sprite_get_width(spr_inimigo_hud_vida);
	var _sprh = sprite_get_height(tamanhoy);
	draw_sprite_ext(spr_inimigo_hud_vida, 0, x - _sprw /2.5, y - _sprh/3.8, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_inimigo_barra_vida, 0, x - _sprw /2.5, y - _sprh/3.8, vida/max_vida[level], 1, 0, c_white, 1);
}

	
