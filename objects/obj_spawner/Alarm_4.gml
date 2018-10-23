///@description Spawn Wagon
var spawn = Wagon[SPAWN];
var dir = Wagon[DIR];
var timer = Wagon[TIMER];
var odds = Wagon[ODDS];
spawn_safezone(spawn[Level],dir[Level],obj_wagon,odds[Level]);
alarm[4] = timer[Level]*room_speed