if(mobx==currx&&moby==curry)
{
if cooldown%10==0 {
	direction=random(359)

}
	speed=3
	
	
	
	if(nahoru){
image_xscale=image_xscale+0.04;
image_yscale=image_yscale-0.02;
nahorux++;
if(nahorux>15)
{
nahoru=false;
nahorux=0;
}
}
if(!nahoru){
image_xscale=image_xscale-0.04;
image_yscale=image_yscale+0.02;
nahorux++;
if(nahorux>15)
{
nahoru=true;
nahorux=0;
}
}

	
if (instance_exists(obj_player)&&pes)
{

}

if (cooldown<1)
{
	
	cooldown=global_cd_mob;
	dir=dir+66;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);
		dir=dir+66;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);
		dir=dir+66;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);
		dir=dir+66;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);

}
cooldown=cooldown-1;

pes=true;


if(hp!=hpprev)
{
image_blend = c_black;
alarm[0]=3;

}



if(hp<=0)
{
	//with(obj_score) thescore=thescore+5;
	instance_destroy();
	//if(thescore%10==0){
	//room_goto(rm_item);
	//}
}
hpprev=hp;

}
x = max (x, (xr)+64+60);
x = min (x, (xr)+1024-64-60);
y = max (y, (yr)+64+60);
y = min (y, (yr)+768-64-60);