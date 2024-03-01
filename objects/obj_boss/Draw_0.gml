draw_sprite(spr_sombraGrande, 0, x, y + Dist_S);
draw_self();

if hit == true{
	gpu_set_fog(true, c_red, 0, 0);
	draw_self();
	gpu_set_fog(false, c_red, 0, 0);
}else{
	draw_self();
}

if vida < 1 and tremer == true{
	screenshake(50);
	tremer = false;
}

