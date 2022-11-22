if instance_exists(obj_door_top2) obj_door_top2.image_index--;
if instance_exists(obj_door_bot2) obj_door_bot2.image_index--;
if instance_exists(obj_door_left2) obj_door_left2.image_index--;
if instance_exists(obj_door_right2) obj_door_right2.image_index--;
global_key=true;
instance_destroy();
audio_play_sound(snd_key_death,1,0)