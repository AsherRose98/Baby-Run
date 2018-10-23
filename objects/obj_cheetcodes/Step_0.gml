/// @description Create Cheetcode


//Teleport Key
if(keyboard_check_pressed(vk_numpad0)){
	obj_baby.y = 10*GRIDSIZE;
}
//Max Out Health
if(keyboard_check_pressed(vk_numpad1)){
	with(obj_baby){
		health = max_health;
	}
}
//Go up a level
if(keyboard_check_pressed(vk_numpad2)){
	level_up();
}
//Fill Up a House
if(keyboard_check_pressed(vk_numpad3)){
	with(obj_houses){
		if(!is_full){
			obj_baby.x = x+30;
			obj_baby.y = y;
			break;
		}
	}
}