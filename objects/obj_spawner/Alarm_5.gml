///@description Spawn Wagon2
var spawn = Wagon2[SPAWN];
var dir = Wagon2[DIR];
var timer = Wagon2[TIMER];
var odds = Wagon2[ODDS];
spawn_safezone(spawn[Level],dir[Level],obj_wagon2,odds[Level]);
alarm[5] = timer[Level]*room_speed