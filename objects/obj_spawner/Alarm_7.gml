///@description Spawn Wagon
var spawn = Wagon3[SPAWN];
var dir = Wagon3[DIR];
var timer = Wagon3[TIMER];
var odds = Wagon3[ODDS];
spawn_safezone(spawn[Level],dir[Level],obj_wagon3,odds[Level]);
alarm[7] = timer[Level]*room_speed