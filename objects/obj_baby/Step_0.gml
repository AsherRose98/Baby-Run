///@description Movememnt and safezone collison

//Play movement sound variable
var playsound = false;

//Check to make sure player isn't dead or otherwise unable to move
if(!is_dead&&!disable){

//Left Movement
	if(keyboard_check_pressed(ord("A"))||keyboard_check_pressed(vk_left)){
		image_index = 0
		image_xscale = 1;
		x-=GRIDSIZE;
		playsound = true;
	}
//Right Movement
	else if(keyboard_check_pressed(ord("D"))||keyboard_check_pressed(vk_right)){
		image_index = 0
		image_xscale = -1;
		x+=GRIDSIZE;
		playsound = true;
	}
//Up Movemment
	else if (keyboard_check_pressed(ord("W"))||keyboard_check_pressed(vk_up)){
		image_index = 1
		y-=GRIDSIZE;
		playsound = true;
		//Add 10 Points if you move forward successfully
		if(	y<best_y&&
			!place_meeting(x,y,obj_obstacles)&&
			!place_meeting(x,y,obj_bush)&&
			(!place_meeting(x,y,floorIsLava) or is_safe)){
				best_y = y;
				Points+=10;
		}
	}
//Down Movement
	else if (keyboard_check_pressed(ord("S"))||keyboard_check_pressed(vk_down)){
		image_index = 2
		y+=GRIDSIZE;
		playsound = true;
	}
//Play movement sound
	if(playsound){
		play_sound(wav_move);
	}
//Move player with safe zone if touching a safe zone 
//And is not dead or the game is over
	if(is_safe&&(x>0&&x<room_width)&&!is_dead&&!game_over){
		var safezone = instance_place(x,y,obj_safe_zone);
		if(safezone!=noone){
			if(safezone.dir = "right"){
				x -= safezone.spd
			}else{
				x += safezone.spd
			}
		}
	}
}

//Reload the game on game over
if(game_over){
	if(keyboard_check(vk_anykey)){
		room_restart();
	}
}

//Keep Player Inside Screen
if(bbox_left<0||bbox_right>room_width||bbox_bottom>room_height||bbox_top<0){
	x = xprevious;
	y = yprevious;
}

//Check if on safe zone
is_safe = place_meeting(x,y,obj_safe_zone) ? true: false;