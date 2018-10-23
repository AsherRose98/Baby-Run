///@description Spawn Car2
var spawn = Car2[SPAWN];
var dir = Car2[DIR];
var timer = Car2[TIMER];
spawn_obstacle(spawn[Level],dir[Level],obj_car2);
alarm[1] = timer[Level]*room_speed