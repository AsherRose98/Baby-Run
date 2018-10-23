/// @description Slide Camera Back/Level Up message

//Check to see that the house is filled
//and that the program needs to move the camera back
if(slide_camera){
	//Get camera variables
	var camera = view_get_camera(0);
	var camera_y = camera_get_view_y(camera);
	var camera_height = camera_get_view_height(camera);
	var camera_x = camera_get_view_x(camera);
	
	//Check that the camera hasn't reached the end of the screen
	if(camera_y+camera_height<room_height){
		camera_set_view_pos(camera,camera_x,camera_y+10)
	}else{
	//If it has then turn off the slide camera
	//And set it back to the baby
		camera_set_view_target(camera, obj_baby);
		slide_camera = false
	}
}

/*
The camera sliding back is a reward system.  If the baby dies it is harshly 
teleported back and the camera is jerked into possition, jarring the player,
but when the house is full and the player succeeds they are reward with a
smooth transition back to the begining, giving a subconcious trigger that they
want this.

Also it looks hecka cool.
*/


//If the player is ready to level up
//Level them up on any key stroke
if(show_win_message){
	if(keyboard_check_pressed(vk_anykey)){
		level_up();
	}
}