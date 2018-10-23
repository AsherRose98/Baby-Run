/// @description Dumping Animation

//Play sound only if another truck isn't already playing
if(!audio_is_playing(wav_chug)){
	play_sound(wav_chug);
}

/*
I know turning off the sound when another truck is on scene might not 
seem like a good idea but trust me - if you heard them all playing at 
once you would agree
*/

//Change the sprite to the drump truck animation
sprite_index = spr_dump_truck_dumping;
image_speed = 0.5;

//Reset back to normal
alarm[1] = 2*room_speed