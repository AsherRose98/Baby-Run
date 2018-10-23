//Check to make sure there aren't already bottles spawned
if(!instance_exists(obj_life)){
	//x and y possition of where bottle should start
	var set_x;
	var set_y = y-sprite_get_height(image_index);
	//Check the Dir value for the level of the object it will be falling fr
	//and set the object to sit in the middle of the object
	if(dir=="left"){
		set_x = x-sprite_get_width(image_index)
	}else{
		set_x = x+sprite_get_width(image_index)
	}
	//spawn bottle
	var bottle = instance_create_layer(set_x,set_y,1,obj_life)
	//Set bottle to sit under the object that spawned it
	bottle.depth = 32
}
