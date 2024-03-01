/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
depth = 0;

if inicializar == false {
	scr_textos();
	inicializar = true;
}

	if caractere < string_length(texto[pagina]){
		if global.tecla{
		caractere = string_length(texto[pagina]);
		}
	}else{
	if pagina < array_length_1d(texto) - 1{
		if global.tecla{
		alarm[0] = 1;
		caractere = 0;
		pagina++;
		}
	}else{
		if op_num != 0{
			op_draw = true;
		}else{
			if global.tecla{
			global.dialogo = false;
			instance_destroy();
			TemDialogo = false;
			}
		}
	}
}
