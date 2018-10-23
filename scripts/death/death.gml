//Open player object
with(obj_baby){
	//Check that death has not already occured
	//And that the game hasn't ended
	if(!is_dead&&!game_over){
	
		//Take away one health point
		health-=1;
		//Declare baby dead
		is_dead = true;
	
		//Set the baby's sprite to dead
		sprite_index = spr_babyDead;
		//Set the layer to "DeadBaby" so that waggons roll over the sprite
		layer = layer_get_id("DeadBaby");
		//Set the image speed to 1/4 of the room
		image_speed = 0.25
		
		//Set the respawn alarm
		alarm[0] = 1.5*room_speed
		//Play death sound
		play_sound(wav_death);
	}
}