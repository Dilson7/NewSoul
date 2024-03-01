// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_textos(){
	switch npc_nome{
		case "Mortem":
			if obj_Ash.Nmortes < 1 {
			texto[0] = "Ora, ora, ora! Parece que um novo visitante chegou neste mundo de uma maneira inusitada...";
			texto[1] = "Hã, quem sou eu? Perdão, esqueci de me apresentar. Eu sou a representação fisica da morte deste mundo, mas você pode me chamar de Mortem. Só não me chame de 'Puro Osso', pois este é o nome do meu pai.";
			texto[2] = "Mas agora, como você se chama?";
			texto[3] = "Ash? Acho que já ouvi esse nome antes!";
			texto[4] = "Muito bem, Ash, você está no mundo de Midgard, mais especificamente falando, no salão das almas, onde toda alma estrangeira igual a você vem quando morre.";
			texto[5] = "E falando nisso, este mundo é repleto de magia e aventuras... e talvez monstros que podem te comer em uma abocanhada, como se fosse uma criança comendo doces em uma festa.";
			texto[6] = "Pois bem, seu objetivo neste mundo será derrotar um monstro que vive em uma torre, a qual você será instruido por um amigo meu para encontrá-la.";
			texto[7] = "Subindo essas escadas você chegará ao seu primeiro destino.";
			texto[8] = "Uma grande aventura a espera!";
			texto[9] = "Ok, isto é tudo, até a próxima rsrsrsrs...";
			obj_Mortem.JaFalou = true;
			}else if obj_Ash.Nmortes < 2{
			texto[0] = "Tu tá aqui denovo!?";
			}else{
			texto[0] = "Mas tu tá que tá em! Depois são os homens que vivem menos...";
			}
		break;
		case "Astolfo":
			if obj_Ash.Nmortes < 1 {
			texto[0] = "Opa! Como vai?";
			texto[1] = "Eu me chamo Astolfo. E estou aqui para instruí-lo neste novo mundo.";
			texto[2] = "Como pode percerber, há monstros por perto. Para derrotá-los, basta usar o botão 'Esquerdo' do seu mouse.";
			texto[3] = "Assim você irá desferir um golpe leve contra ele. Apertando o botão 'Direito' do seu mouse, você conseguirá usar o 'golpe giratório'.";
			texto[4] = "Este golpe causará mais dano ao inimigo, e dependendo do ângulo, ele causará dano adicional.";
			texto[5] = "Mas tome cuidado! Ao desferir qualquer golpe, sua estamina diminuirá. E para recuperá-la você deverá descançar um pouco... ou tomar um guaraná.";
			texto[6] = "Partindo para a parte do seu objetivo, basta você se dirigir ao oeste, para obter mais informações em uma vila.";
			texto[7] = "Bom, isso é tudo! Boa sorte em sua aventura! Grahhhaaaa";
			obj_Astolfo.JaFalou = true;
			}else if obj_Ash.Nmortes < 2{
			texto[0] = "Oxi! Denovo? Grahhhaaaa.";
			}else{
			texto[0] = "Que que tu quer aqui denovo carrapicho?";
			}
		break;
		case "Gilberto":
			if obj_Ash.TemPendrive == false{
			texto[0] = "Olá, tudo bem?";
			texto[1] = "Me chamo Gilberto, e estou procurando alguém que encontre meu pendrive de músicas.";
			texto[2] = "Acabei perdendo-o quando tive que fugir de um porco gigantesco que me atacou enquanto caminhava pela floresta sombria.";
			texto[3] = "...";
			texto[4] = "O que? Me pergunta o que fazia por lá?";
			texto[5] = "Bem... estava a procura de um café lendário que dizem estar escondido em algum lugar da floresta.";
			texto[6] = "Bom... se encontrar meu pendrive eu a recompensarei com algo muito valioso!";
			texto[7] = "Tenha cuidado ao entrar na floresta! Existem animais bastante casca-grossa lá dentro!";
			texto[8] = "Isso é tudo, falou.";
			}else if obj_Ash.TemChave == false{
			texto[0] = "Nossa! você encontrou meu pendrive... estou calvo de felicidade!";
			texto[1] = "Agora fique com isso! (Você recebeu uma chave estranha).";
			obj_Ash.TemChave = true;
			}else{
			texto[0] = "Calorzin da bexiga né?";
			}
		break;
		case "Jorge":
			texto[0] = "...";
			texto[1] = "UI!";
			texto[2] = "Me desculpe. Não consegui te escutar por causa dos fones novos que comprei na loja do mestre André.";
			texto[3] = "Ela fica no oeste da praia do rodo, no sul de MidGard.";
			texto[4] = "Dê uma passada por lá, você irá encontrar muita coisa útil, isso eu te garanto.";
		break;
		case "MarcosJr":
			if obj_Ash.FoiEnganado == false {
			texto[0] = "Não fale com aquele menino que não possuí cabelo, ele me enganou!";
			}else{
			texto[0] = "Ele conseguiu te enganar também?";
			}
		break;
		case "GilbertoJr":
			if obj_Ash.FoiEnganado == false {
			texto[0] = "Boa tarde senhorita, gostaria de fazer uma aposta?";
			add_op("Não", "Não");
			add_op("Sim", "Sim");
			}else{
			texto[0] = "Meu pai perdeu seu pendrive na floresta, espero que encontre...";
			}
		break;
		case "Sim":
			texto[0] = "Pois bem, quem tiver menos fios de cabelo ganha.";
			texto[1] = "...";
			texto[2] = "Ganhei! HAHAHAHA.";
			texto[3] = "Agora me pague 10 conto.";
			obj_Ash.FoiEnganado = true;
			if obj_Ash.moedas >= 10 {
			obj_Ash.moedas = obj_Ash.moedas - 10;
			}else{
			texto[5] = "Droga! Você não tem dinheiro.";
			}
		break;
		case "Não":
			texto[0] = "Que chato.";
		break;
		case "Arbusto":
			if obj_Ash.TemCafe == false{
				texto[0] = "Parabéns!";
				texto[1] = "Você encontrou o café lendário.";
				obj_Ash.TemCafe = true;
				texto[2] = "Uma porta se abriu...";
			}else{
				texto[0] = "Nada aqui.";
			}
		break;
		case "Rebeca":
			texto[0] = "Olá, seja bem-vinda a Vila Margoso!";
			texto[1] = "Eu juro que já te vi antes em algum lugar...";
			texto[2] = "Pois bem, dê uma conversada com os moradores, eu juro que não irá se arrepender!";
			texto[3] = "Eu acho...";
		break;
		case "RebecaJr":
			texto[0] = "Minha mãe disse para eu não entrar no cemitério.";
			texto[1] = "Mas estou só esperando o 'Artesão' terminar de reparar os estragos da chuva, que eu entro sem pensar duas vezes!";
			texto[2] = "Sai fora fi, não vivo sem minhas goiabas.";
		break;
		case "Marcos":
			texto[0] = "As crianças são o futuro deste reino!";
			texto[1] = "Não concorda?";
		break;
		case "JorgeJr":
			texto[0] = "Meu pai conseguiu comprar fones na loja do mestre André pelo menor preço possível!";
			texto[1] = "Um dia quero ser sortudo igual ele.";
		break;
		case "Carlos":
			texto[0] = "Desde que meu irmão comprou aqueles fones, ele não escuta mais ninguém.";
			texto[1] = "É como se eu estivesse falando com uma porta!";
		break;
		case "Espantalho":
			texto[0] = "Buh!";
			texto[1] = "HAHAHAHAHAHAHAHAHA!";
			texto[2] = "Boa tarde! sou Chico, o espantalho. Gostaria ouvir algo muito curioso?";
			add_op("Negativo", "Negativo");
			add_op("Positivo", "Positivo");
		break;
		case "Negativo":
			texto[0] = "Ok, até mais.";
		break;
		case "Positivo":
			texto[0] = "Uma fonte confiável me contou que existe uma sala secreta em alguma parede de MidGard. Lá habita o maior poder deste reino!";
			texto[1] = "Mas como abri-lá? Tente descobrir por sí própria.";
		break;
		case "MestreAndre":
			texto[0] = "O que vai comprar?";
			add_op("Guaraná", "Guaraná");
			add_op("Torta", "Torta");
		break;
		case "Guaraná":
			if obj_Ash.moedas >= 5 {
			texto[0] = "Você comprou guaraná.";
			obj_Ash.Guarana++;
			obj_Ash.moedas -= 5;
			}else{
			texto[0] = "Você não tem dinheiro suficiente."
			}
		break;
		case "Torta":
			if obj_Ash.moedas >= 10 {
			texto[0] = "Você comprou torta.";
			obj_Ash.Torta++;
			obj_Ash.moedas -= 10;
			}else{
			texto[0] = "Você não tem dinheiro suficiente."
			}
		break;
		case "Pedro":
			texto[0] = "Essa foto vai fica midia.";
		break;
		case "Elivelton":
			texto[0] = "Cafezin do bom...";
		break;
		case "Rhuan":
			if obj_Ash.cafezin == false{
			texto[0] = "Vai um cafezin?";
			texto[1] = "Você recebeu o café lendário!";
			texto[2] = "Este café lhe dará estamina ilimitada.";
			obj_Ash.cafezin = true;
			}else{
			texto[0] = "Esse miopia é comédia demais...";
			}
		break;
		case "Placa1":
			texto[0] = "Bem-vindo a Midgard!";
		break;
		case "Placa2":
			texto[0] = "<-- Vila Margoso";
			texto[1] = "Floresta Sombria -->";
		break;
		case "Placa3":
			texto[0] = "Floresta Sombria.";
			texto[1] = "CUIDADO!";
		break;
		case "Placa4":
			texto[0] = "Entrada Vila Margoso.";
		break;
		case "Placa5":
			texto[0] = "Saimos para vender leite!";
			texto[1] = "Volte depois...";
		break;
		case "Placa6":
			texto[0] = "Rancho Pato-Manco.";
			texto[1] = "Vende-se galo!";
		break;
		case "Placa7":
			texto[0] = "Praia do rodo.";
			texto[1] = "<-- Loja do mestre André";
		break;
		case "Placa8":
			texto[0] = "Loja do mestre André.";
			texto[1] = "Vende-se guaraná e torta de peixe.";
		break;
		case "Placa9":
			texto[0] = "Torre Maldita.";
			texto[1] = "CUIDADO!";
		break;
		case "Placa10":
			texto[0] = "Atenção!";
			texto[1] = "Obrigado pela atenção!"
		break;
		case "Placa11":
			texto[0] = "Cemitério.";
			texto[1] = "Interditado por motivos de alto sigilo.";
		break;
		case "Placa12":
			texto[0] = "Lista de preços: ";
			texto[1] = "Guaraná - 15R$.";
			texto[2] = "Torta - 15R$"
		break;
		case "Cavaleiro Imortal":
			if obj_Boss.vida > 1{
			texto[0] = "HAHAHA.";
			texto[1] = "Bem-Vinda.";
			texto[2] = "Morra!";
			}else{
			texto[0] = "Não...";
			texto[1] = "É...";
			texto[2] = "Possível!";
			obj_Boss.JaFalou = true;
			}
		break;
	}
}

function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}
	