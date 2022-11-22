if(mobx==currx&&moby==curry)
{
		
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
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot_aim);

}
cooldown=cooldown-1;

pes=true;


if(hp!=hpprev)
{
image_blend = c_red;
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