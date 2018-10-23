/// @description Randomly assign dropping bottle or not

//Get Parent Event(Moving Objects)
event_inherited();

//Set drop_bottle to false unless 1:75 chance of bottle dropping
drop_bottle = false;
//Boolean to check if bottle has already been dropped
bottle_was_dropped = false;
//Randomly assign car to drop a bottle or not
if(round(random(BOTTLEODDS))==0){
	drop_bottle = true;
	//Choose a location to drop the bottle withing the movement of the baby
	area_to_drop_bottle_at = random_range(GRIDSIZE*2,room_width-GRIDSIZE*2)
}