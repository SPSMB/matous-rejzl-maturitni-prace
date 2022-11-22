audio_play_sound(snd_vase_death,1,0);
var count = random_range(4,6);
    for (var i = 0; i < count; i++) {
       instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5),"BloodLayer", obj_vase_sha);
    }
	
	i =irandom(100);
if i<20 instance_create_depth(x,y,"BulletsLayer",obj_coin)