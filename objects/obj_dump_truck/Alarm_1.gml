/// @description Return dump truck to sitting position

//Play sound only if another truck isn't already playing
if(!audio_is_playing(wav_chug)){
	play_sound(wav_chug);
}

//Reverse the animation of the truck dumping
image_speed = -0.5;

//Get ready for next dump
alarm[0] = dumping_time
