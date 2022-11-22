instance_destroy(obj_skulll);
instance_destroy(obj_skullr);
var count = random_range(200, 250);
    for (var i = 0; i < count; i++) {
       instance_create_layer(x + random_range(-60,60), y + random_range(-60, 60),"BloodLayer", obj_blood);
    }
var count = random_range(5, 10);
    for (var i = 0; i < count; i++) {
          instance_create_layer(x+ random_range(-70, 70), y+ random_range(-70, 70),"EnemyBullets", obj_coin);
   }    
instance_create_layer(xx+512, yy+200,"Instances", obj_door_cellar);

audio_play_sound(snd_boss_1_death,1,0);	  