///@description Spawn Dump Truck
var spawn = Dump[SPAWN];
var dir = Dump[DIR];
var timer = Dump[TIMER];
var odds = Dump[ODDS];
spawn_safezone(spawn[Level],dir[Level],obj_dump_truck,odds[Level]);
alarm[6] = timer[Level]*room_speed