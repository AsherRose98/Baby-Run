///@description Spawn Truck
var spawn = Truck[SPAWN];
var dir = Truck[DIR];
var timer = Truck[TIMER];
spawn_obstacle(spawn[Level],dir[Level],obj_truck);
alarm[2] = timer[Level]*room_speed