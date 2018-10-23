///@description spawn_safezone(grid, dir, obj, odds)

//Give a 1/x chance of a safezone not spawning
if(!round(random(argument3))==0){

	//Set Variables
	grid_pos = argument0*GRIDSIZE;
	dir = argument1;
	obj = argument2;
	//Get the width of the sprite so that the spawner can spawn them in the correct places
	image_width = sprite_get_width(object_get_sprite(obj));

	//Set the side that the safezone will spawn on
	if(dir == "right"){
		side = room_width+image_width;
	}else{
		side = image_width-1
	}

	//Create Safezone
	instance_create_layer(side,grid_pos,2, obj);
}