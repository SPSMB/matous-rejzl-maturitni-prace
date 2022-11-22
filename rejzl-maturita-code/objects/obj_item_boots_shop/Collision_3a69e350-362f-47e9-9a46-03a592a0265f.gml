if(global_coin>=10){
	global_coin-=10;
	rychlost=rychlost+2;
instance_destroy();
audio_play_sound(snd_item_gain,1,0)

}
