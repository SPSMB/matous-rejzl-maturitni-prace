if(global_coin>=10){
	global_coin-=10;
hp_player_max=hp_player_max+2;
hp_player=hp_player+2;
hp_prev =-1;
instance_destroy();
audio_play_sound(snd_item_gain,1,0)

}
