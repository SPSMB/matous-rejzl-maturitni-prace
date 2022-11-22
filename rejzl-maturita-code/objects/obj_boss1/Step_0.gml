if(mobx==currx&&moby==curry)
{
if (instance_exists(obj_player)&&pes)
{

}

if (cooldown<1)
{
	
	cooldown=global_cd_mob;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);
	dir=dir+180-24;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);
}


pes=true;
image_angle=image_angle+10;

if(hp!=hpprev)
{
image_blend = c_red;
alarm[0]=3;

}
if(hp<=30*hp_multi)
{
image_index=1;

global_cd_mob=5;
}
if(hp<=0)
{
	//with(obj_score) thescore=thescore+5;
	instance_destroy();
	//if(thescore%10==0){
	//room_goto(rm_item);
	//}
}
if(hp<60*hp_multi&&kocka)
{
	cooldown=200;
	immune=true;
	image_blend=c_blue;
	hp--
	kocka=false;
}
if(cooldown==100)
{
	xx=floor(x/1024);
	yy=floor(y/768);
	instance_create_layer((xx*1024)+100,(yy*768)+100,"BulletsLayer",obj_enemy1);
	instance_create_layer((xx*1024)+100,(yy*768)-100+768,"BulletsLayer",obj_enemy1);
	instance_create_layer((xx*1024)-100+1024,(yy*768)-100+768,"BulletsLayer",obj_enemy1);
	instance_create_layer((xx*1024)-100+1024,(yy*768)+100,"BulletsLayer",obj_enemy1);
	image_blend=c_white;
	//image_blend=c_navy;
	immune=false;
}
cooldown=cooldown-1;
hpprev=hp;
//spider--;

}