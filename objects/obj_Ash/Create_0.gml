/// @description Atributos
//movimentação

HSPD = 0;
VSPD = 0;
SPD = 1;
Dial_ligar = false;

dir = 1;
SPD_dir = -1;

//combate
level = 1;
xp = 0;

max_xp[1] = 100;
max_xp[2] = 250;
max_xp[3] = 400;
max_xp[4] = 550;
max_xp[5] = 700;

spr_level[1] = Level1;
spr_level[2] = Level2;
spr_level[3] = Level3;
spr_level[4] = Level4;
spr_level[5] = Level5;

max_estamina[1]= 75;
max_estamina[2]= 100;
max_estamina[3]= 125;
max_estamina[4]= 150;
max_estamina[5]= 175;
estamina = max_estamina[level];

max_dano[1] = 1;
max_dano[2] = 2;
max_dano[3] = 3;
max_dano[4] = 4;
max_dano[5] = 5;

dano = max_dano[level];

ataqueC = false;
danoC = dano * 2;

atacar = false

max_vida[1] = 5;
max_vida[2] = 10;
max_vida[3] = 15;
max_vida[4] = 20;
max_vida[5] = 25;
vida = max_vida[level];

tomarDano = true;
empurrar_dir = 0;

dano_alfa = -1;

//estado
estado = andar;
PodeAtacar = false;

//Itens

moedas = 0;
TemChave = false;
TemPendrive = false;
Guarana = 0;
Torta = 0;
cafezin = false;

//Contagens

TemCafe = false;
Nmortes = 0;
FoiEnganado = false;
morreu = false;


