
if(hp_prev!=hp_player)
{

instance_destroy(obj_hp);
instance_destroy(obj_hp_empty);
instance_destroy(obj_hp_half);

xx=0;
for(x=0;x<(hp_player-1)/2;x++)
{
//instance_create(30,30*x,obj_hp)
instance_create_layer((x*50)+50-10+xxx,35+yyy,"BulletsLayer",obj_hp);
xx++;
}
if(hp_player%2==1)
{
	xx++;
instance_create_layer((xx*50)+xxx-10,35+yyy,"BulletsLayer",obj_hp_half);
}

for(x=3+hp_player;x<hp_player_max+2;x=x+2)
{
	xx++;
//instance_create(30,30*x,obj_hp)
instance_create_layer((xx*50)+xxx-10,35+yyy,"BulletsLayer",obj_hp_empty);
}
hp_prev=hp_player;
}
