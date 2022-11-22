if (cooldown_hp<=0)
{
hp_player=hp_player-1;
cooldown_hp=30;
audio_play_sound(snd_player_hurt,1,0);
}