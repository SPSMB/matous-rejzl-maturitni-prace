with(other)
{
	if(cooldown_hp<=0){
hp_player--;
cooldown_hp=30;
audio_play_sound(snd_player_hurt,1,0);

}
}
instance_destroy();