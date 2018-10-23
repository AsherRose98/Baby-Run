/// @description Stop dump at the end of the animation

//If the animation for it dumping completes
if(!is_dumping){
	//Kill the player on contact (boolean)
	is_dumping = true;
	//Turn off the animation
	image_speed = 0;
	//Set the image index to the sitting position
	image_index = 4;
//If the animation for it returning to normal completes
}else{
	//Return the sprite index to normal
	sprite_index = spr_dump_truck;
	//Don't kill the player
	is_dumping = false;
}