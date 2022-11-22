if(hp_player_max!=hp_player){
hp_player=hp_player+1;

if(hp_player>hp_player_max){
hp_player=hp_player_max;
}
audio_play_sound(snd_heart_death,1,0);
instance_destroy();


}