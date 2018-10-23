///@description spawn_obstacle(grid, dir, obj)

//Set variables
grid_pos = argument0*GRIDSIZE;
dir = argument1;
obj = argument2;

//Get the width of the sprite so that the spawner can spawn them in the correct places
image_width = sprite_get_width(object_get_sprite(obj));

//Set the side that the obstacle will spawn on
if(dir == "right"){
	side = room_width+image_width;
}else{
	side = -image_width*2;
}

//Create Obstacle
instance_create_layer(side,grid_pos,0, obj);
