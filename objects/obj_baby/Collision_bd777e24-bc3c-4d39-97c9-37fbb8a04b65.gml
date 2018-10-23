/// @description Collect Life

//Incrase health
health++;
//Destroy bottle
instance_destroy(instance_nearest(x,y,obj_life));
//Play one up sound
play_sound(wav_life_up);
//Add 100 points
Points+=100;