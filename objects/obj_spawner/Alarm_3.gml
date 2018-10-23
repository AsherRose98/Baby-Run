///@description Spawn Bike
var spawn = Bike[SPAWN];
var dir = Bike[DIR];
var timer = Bike[TIMER];
spawn_obstacle(spawn[Level],dir[Level],obj_bike);
alarm[3] = timer[Level]*room_speed