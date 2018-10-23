///@description Spawn Car
var spawn = Car[SPAWN];
var dir = Car[DIR];
var timer = Car[TIMER];
spawn_obstacle(spawn[Level],dir[Level],obj_car);
alarm[0] = timer[Level]*room_speed