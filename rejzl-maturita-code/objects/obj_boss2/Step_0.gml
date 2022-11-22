if(mobx==currx&&moby==curry)
{
if (instance_exists(obj_player)&&pes)
{

}

if (cooldown<1&&aim)
{
	
	cooldown=global_cd_mob;
	instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot_aim);
	
}
if (cooldown<1&&!aim)
{
	aimcd++
	if(aimcd==10){
	cooldown=20
	aimcd=0
	}else{
	cooldown=global_cd_mob;
	}
	dir=90+180-24;
	//instance_create_layer(x,y,"EnemyBullets",obj_enemy_shot);
	y=y-50
	if(moveleft<0){
	dir=90+180-24-90;
	instance_create_layer(x-75,y,"EnemyBullets",obj_enemy_shot);
	dir=90+180-24-90;
	instance_create_layer(x-65,y+60,"EnemyBullets",obj_enemy_shot);
	dir=90+180-24;
	instance_create_layer(x+10,y+100,"EnemyBullets",obj_enemy_shot);
	}else{
		dir=90+180-24+90;
	instance_create_layer(x+80,y,"EnemyBullets",obj_enemy_shot);
		dir=90+180-24+90;
	instance_create_layer(x+70,y+60,"EnemyBullets",obj_enemy_shot);
	dir=90+180-24;
	instance_create_layer(x-10,y+100,"EnemyBullets",obj_enemy_shot);
	
	}

	
	y=y+50
	
}

cooldown=cooldown-1;

pes=true;


if(hp!=hpprev)
{
image_blend = c_red;
alarm[0]=3;




}
if(hp<=60*hp_multi&&hp>40*hp_multi)
{
image_index=1;
if(moveup>0){
y=y-10
moveup--
immune=true;
if moveup==0 immune=false
}

global_cd_mob=10;
}
if(hp<=40*hp_multi)
{
image_index=2;
aim=false
global_cd_mob=5;
if(moveleft>0){
x=x-7
moveleft--
}else{
x=x+7
moveleft--
if(moveleft==-120)moveleft=120
}
}

if(hp<=0)
{
	instance_destroy();
}
hpprev=hp;
//spider--;

}