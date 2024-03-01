/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _texto = string_copy(texto[pagina], 0, caractere); 

var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;
draw_set_font(fnt_Dialogo);
draw_rectangle_color(_xx, _yy, _guil, _guia, _c, _c, _c, _c, false);
draw_text_ext(_xx + 32, _yy + 32, _texto, 32, _guil - 64);
draw_text_ext(_xx + 32, _yy - 32, obj_Dialogo.npc_nome, 32, _guil - 64);

if op_draw == true{
	var _opx = _xx + 32;
	var _opy = _yy + 115;
	var _opsep = 42;
	var _opborda = 6;
	
	if gamepad_is_connected(global.controle){
	op_selecionada += (gamepad_axis_value(global.controle, gp_axislv) < -0.25) - (gamepad_axis_value(global.controle, gp_axislv) > 0.25);
	}else{
	op_selecionada += keyboard_check_pressed(ord("W")) -  keyboard_check_pressed(ord("S"));
	}
	op_selecionada = clamp(op_selecionada, 0, op_num - 1);
	
	for (var i = 0; i < op_num; i++){
		var _stringw = string_width(op[i]);
		draw_sprite_ext(spr_HudOpcao, 0, _opx, _opy - (_opsep * i), (_stringw + _opborda * 2)/16, 1, 0, c_white, 1);
		draw_text(_opx + _opborda, _opy - (_opsep * i), op[i]);
	
		if op_selecionada == i {
			draw_sprite(spr_seletor, 0, _xx + 8, _opy - (_opsep * i) + 8);
		}
	}
	
	if global.tecla{
		var _dialogo = instance_create_layer(x, y, "Instances_1", obj_Dialogo);
		_dialogo.npc_nome = op_resposta[op_selecionada];
		instance_destroy();
	}
}