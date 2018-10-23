//Open the baby object
with(obj_baby){
	//Make sure the sprite is set to it's normal state
	sprite_index = spr_baby;
	//Set the image speed to 0
	image_speed = 0;
	//Set the sprite facing forward
	image_index = 1;
	//Set the player to the player layer (hehehe rhymes)
	layer = layer_get_id("Player")
	//Set the player to default depth
	depth = 0;

	//Set the player back to their starting position
	x = room_width/2;
	y = room_height-GRIDSIZE;
	//Set the best_y score counter back to 0
	best_y = room_height;
	//Set is dead to false
	is_dead = false;
}