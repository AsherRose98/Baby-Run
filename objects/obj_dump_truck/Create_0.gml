///@description Create Object Settings
Speed = Dump[SPEED];
Dir = Dump[DIR];
dumper = Dump[DUMPER];
dumper = dumper[Level];

is_dumping = false;
dumping_time = 2*room_speed;

//Randomly asign this to be a dumping dump truck or not
var try = round(random(dumper))
if(try==0){
	alarm[0] = dumping_time/2;
}

depth = 1;

event_inherited();
spawn_bottle_moving();