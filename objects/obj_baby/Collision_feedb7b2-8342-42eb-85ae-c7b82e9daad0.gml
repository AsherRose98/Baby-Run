/// @description Check for Dump Truck Dumping

var truck = instance_place(x,y,obj_dump_truck);

if(truck.is_dumping){
	death();
}