var count = random_range(15, 25);
    for (var ii = 0; ii < count; ii++) {
       instance_create_layer(x + random_range(-20, 02), y + random_range(-20, 20),"BloodLayer", obj_blood);
    }
    
     //  instance_create_layer(x, y,"EnemyBullets", obj_coin);
	   
	   
	   
audio_play_sound(snd_enemy_1_death,1,0);	   

	i =irandom(100);
if i<20 instance_create_depth(x,y,"EnemyLayer",obj_coin)
if i>20&&i<30 instance_create_depth(x,y,"EnemyLayer",obj_hp_drop)
if i>30&&i<50 instance_create_depth(x,y,"EnemyLayer",obj_hp_drop_half)
