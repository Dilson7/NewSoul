/// @description Estados

if global.dialogo == false and obj_Ash.vida >= 1 and instance_exists(obj_Menu) == false{
script_execute(estado);
}

if vida <= 0{
	if obj_Ash.moedas < 200 {
	obj_Ash.moedas += moedas[level];
	}
	if obj_Ash.level < 5 {
	obj_Ash.xp += xp;
	obj_Ash.xp = clamp(obj_Ash.xp, 0, obj_Ash.max_xp[obj_Ash.level]);
	}
	instance_destroy();
}


if y > obj_Ash.y{
	depth = ((obj_Ash.depth) - distance_to_object(obj_Ash)) - 1;
}else if y < obj_Ash.y{
	depth = ((obj_Ash.depth) + distance_to_object(obj_Ash)) + 1;
}
