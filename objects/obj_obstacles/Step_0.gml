/// @description Drop Bottle
event_inherited();
//Check if car will drop bottle
if(drop_bottle&&!bottle_was_dropped){
	//Check that the car has moved past it's drop point
	if((dir="left"&&x>area_to_drop_bottle_at)||
		(dir="right"&&x<area_to_drop_bottle_at)){
		//Drop the bottle
		bottle_was_dropped = true;
		spawn_bottle();
	}
}
