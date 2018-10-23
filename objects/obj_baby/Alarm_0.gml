///@description Death Animation

//If the health hasn't run out
//Reload the character
//Otherwise trigger game over
if(health>0){
	reload()
}else{
	game_over = true;
}