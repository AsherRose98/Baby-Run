//Check for a chance to spawn a bottle ontop of a waggon
if(round(random(BOTTLEODDS))==0){
	//Check to make sure there aren't already bottles spawned
	if(!instance_exists(obj_life)){
		//x and y possition of where bottle should start
		var set_x;
		var set_y = y-sprite_get_height(image_index)*3/2
		//Check the Dir value for the level of the object it will be riding
		//and set the bottle to sit in the middle of the object
		if(Dir[Level]=="left"){
			set_x = x-sprite_get_width(image_index)
		}else{
			set_x = x+sprite_get_width(image_index)
		}
		//Create a bottle and set it's variables
		var bottle = instance_create_layer(set_x,set_y,2,obj_life)
		//Tell the bottle to move
		bottle.moving = true;
		//Set its speed to the wagon's speed
		bottle.Speed = Speed;
		//Set its direction to the wagon's direction
		bottle.Dir = Dir;
		//Make sure the bottle sits on top of the waggon
		bottle.depth = -32
	}
}