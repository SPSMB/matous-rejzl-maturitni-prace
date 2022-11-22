if(global_coin>=10){
	global_coin-=10;
	kamen++
instance_destroy(obj_item_rock)

kkamen=kamen
rot=360/kamen
for(c=kamen;c>0;c--){
	kamen=rot*c
 instance_create_layer(x+(200)*c,y-(200)*c,"EnemyBullets",obj_item_rock);

}
kamen=kkamen
audio_play_sound(snd_item_gain,1,0)
instance_destroy();


}
