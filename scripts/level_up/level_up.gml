//Reset the level back to zero if player reaches the end
//Otherwise move up a level
if(Level<MAXLEVEL){
	Level++;
}else{
	Level=0;
}

//Reload the character
reload()

//Set the baby and the houses back to default states
obj_baby.disable = false;
obj_houses.show_win_message = false;
obj_houses.is_full = false;

//Destroy any bottles left over in scene
instance_destroy(obj_life);

//show_debug_message("Level: "+string(Level+1));