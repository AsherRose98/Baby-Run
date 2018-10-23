var sound = argument0;

//stop the movement sound for literallly any other sound
audio_stop_sound(wav_move);
//play sound
audio_play_sound(sound,1,false);