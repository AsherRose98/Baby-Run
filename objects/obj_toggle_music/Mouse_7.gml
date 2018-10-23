/// @description Toggle Music

//Turn Music Off
if(music_on){
	image_index = 1;
	audio_sound_gain(mp3_background_music,0,1000)
//Turn Music On
}else{
	image_index = 0;
	audio_sound_gain(mp3_background_music,1,1000)
}