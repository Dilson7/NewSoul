
if obj_Ash.vida >= 1 and room != SalaFinal and instance_exists(obj_Menu) == false{
/// Desenharhud
var _escala = 3;
var _guia = display_get_gui_height();
var _guiaxp = display_get_gui_height();
var _spra = sprite_get_height(spr_hud_vida) * _escala;
var _xpa = sprite_get_height(spr_hud_exp) * _escala;
var _huda = (_guia/6) - _spra;
var _hudx = display_get_gui_width();

var _vida = obj_Ash.vida;
var _maxvida = obj_Ash.max_vida[obj_Ash.level];

var _estamina = obj_Ash.estamina;
var _maxestamina = obj_Ash.max_estamina[obj_Ash.level];

var _xp = obj_Ash.xp;
var _maxxp = obj_Ash.max_xp[obj_Ash.level];

//Barra vida
draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);

//Barra stamina
draw_sprite_ext(spr_hud_barra_estamina, 0, 0, _huda + 24, (_estamina/_maxestamina) * _escala, _escala, 0, c_white, 1);

//HUD
draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

//Barra de XP
draw_set_font(fnt_dano);
if obj_Ash.xp < 10 {
draw_text(_hudx/2 - 45, (_guiaxp/1.09) - _xpa, obj_Ash.xp);
}else if obj_Ash.xp >= 10 && obj_Ash.xp < 100 {
draw_text(_hudx/2 - 60, (_guiaxp/1.09) - _xpa, obj_Ash.xp);
}else{
draw_text(_hudx/2 - 70, (_guiaxp/1.09) - _xpa, obj_Ash.xp);
}
draw_text(_hudx/2 - 20, (_guiaxp/1.09) - _xpa, "/");
draw_text(_hudx/2 - 5, (_guiaxp/1.09) - _xpa, obj_Ash.max_xp[obj_Ash.level]);
draw_sprite_ext(spr_hud_exp_barra, 0, _hudx/4, (_guiaxp/1.05) - _xpa + 9, (_xp/_maxxp) * (_escala / 2), _escala, 0, c_white, 1);
draw_sprite_ext(spr_hud_exp, 0, _hudx/4, (_guiaxp/1.05) - _xpa, _escala / 2, _escala, 0, c_white, 1);

//Contagens

draw_sprite_ext(Ash, 0, _hudx / 1.07, _guia / 15, 3, 3, 0, c_white, 1);
draw_text(_hudx/1.04, _guia / 20, obj_Ash.Nmortes);
draw_sprite_ext(spr_Moeda, 0, 10, _guia / 5 - 55, 2, 2, 0, c_white, 1);
draw_text(50, _guia / 5 - 50, obj_Ash.moedas);
draw_sprite_ext(spr_Guarana, 0, 10, _guia / 5 - 14, 2, 2, 0, c_white, 1);
draw_text(50, _guia / 5 - 9, obj_Ash.Guarana);
draw_sprite_ext(spr_Torta, 0, 10, _guia / 5 + 25, 2, 2, 0, c_white, 1);
draw_text(50, _guia / 5 + 30, obj_Ash.Torta);

//Barra do Boss

var _gl = display_get_gui_width();
if instance_exists(obj_Boss) and obj_Boss.apareceBarra == true{
	var _sprw = sprite_get_width(spr_boss_hud) * _escala;
	draw_sprite_ext(spr_boss_vida, 0, _gl/2 - _sprw/2 + 6, 40, obj_Boss.vida / obj_Boss.max_vida * _escala, _escala, 0, c_white, 1);
	draw_sprite_ext(spr_boss_hud, 0, _gl/2 - _sprw/2, 40, _escala, _escala, 0, c_white, 1);
}
}
