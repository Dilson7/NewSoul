/// @description HUD

if morreu == false {
draw_sprite(spr_sombra_Ash, 0, x, y+6);
draw_self();
draw_sprite_ext(spr_level[level], 0, x, y - 12, 0.6, 0.6, 0, c_white, 1);
}

if alarm[3] > 0 and vida >= 1{
	if image_alpha >= 1 {
		dano_alfa = -0.05;
	}else if image_alpha <= 0{
		dano_alfa = 0.05;
	}
	
	image_alpha += dano_alfa;
	
}else{
	image_alpha = 1;
}
