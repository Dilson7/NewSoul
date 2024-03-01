/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_color(c_white);

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
x1 = gui_largura/2;
y1 = gui_altura/2;

if obj_Controle.pausa == false{
draw_text_transformed(x1, y1/1.25, "Derrota", 3, 3, 0);
}else{
draw_text_transformed(x1, y1/1.25, "Pausa", 3, 3, 0);
}

for (var i = 0; i < op_max; i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	if (in == i){
	draw_set_color(c_yellow);
	}else{
	draw_set_color(c_white);
	}
	
	draw_text(x1, y1 + (dist*i), opcoes[i]);
}




