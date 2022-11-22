if(global_coin>=3){
	
if(hp_player_max!=hp_player){
hp_player=hp_player+2;
global_coin=global_coin-3;

if(hp_player>hp_player_max){
hp_player=hp_player_max;
}

audio_play_sound(snd_heart_death,1,0);
instance_destroy();

}
}