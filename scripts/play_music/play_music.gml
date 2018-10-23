//If music is not playing: play music
if(!audio_is_playing(mp3_background_music)){
	audio_play_sound(mp3_background_music,0,true);
}