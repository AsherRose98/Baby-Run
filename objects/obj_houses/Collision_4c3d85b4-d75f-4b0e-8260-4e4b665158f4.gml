/// @description Fill Home With Baby

//Get the baby instance
var baby = instance_nearest(x,y,obj_baby)

//If the house is empy
if(!is_full){
	//If the baby isn't already dead
	if(baby.is_dead = false){
		//Set the house to full when filled
		is_full = true;
		
		//Cycle through the houses to check if they are full or not
		//If they are all full all_houses_full = true
		//And the win_message is displayed
		var all_houses_full = true;
		with (obj_houses) {
			if(!is_full){
				all_houses_full = false;
				break;
			}
		}
		
		//If the player has yet to fill all the houses
		if(!all_houses_full){
			//Give them 50 points and send them back to the start of the level
			Points+=50;
			play_sound(wav_house_hit);
			reload();
			//Remove the baby as the target for the camera
			camera_set_view_target(view_get_camera(0), -1);
			//Set the camera to slide back
			slide_camera = true;
		}else{
		//If the player HAS filled all the houses
			//Give them 1000 points and show win message
			Points+=1000;
			show_win_message = true;
			//Make it so the baby cant move or be seen but is not despawned
			baby.disable = true;
			//Play level up sound
			play_sound(wav_level_up);
		}
	}
//If they player tries to get onto a house with a baby already on it
}else if(!baby.disable){
	//Kill the baby
	with(baby){
		death();
	}
	/*
	My interpritation of this is that one baby eats the other.
	There is obviously some serious negect going on here
	*/
}