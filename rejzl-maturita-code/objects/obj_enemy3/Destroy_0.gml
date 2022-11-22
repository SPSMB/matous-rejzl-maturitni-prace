var count = random_range(15, 40);
    for (var i = 0; i < count; i++) {
       instance_create_layer(x + random_range(-20, 02), y + random_range(-20, 20),"BloodLayer", obj_blood);
    }
    
i =irandom(100);

instance_create_depth(x,y,"EnemyLayer",obj_hp_drop_half)
	   
	   
	   
audio_play_sound(snd_enemy_2_death,1,0);	  	   