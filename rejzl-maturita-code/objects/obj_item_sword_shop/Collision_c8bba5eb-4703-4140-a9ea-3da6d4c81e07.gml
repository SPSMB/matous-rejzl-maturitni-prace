if(global_coin>=10){
	global_coin-=10;
	global_dmg=global_dmg+0.5;
instance_destroy();
audio_play_sound(snd_item_gain,1,0)

}
