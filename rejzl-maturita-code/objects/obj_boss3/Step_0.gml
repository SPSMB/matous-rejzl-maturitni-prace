if(mobx==currx&&moby==curry)
{
if (instance_exists(obj_player)&&pes)
{

}

if (cooldown==150)
{
	
	//cooldown=global_cd_mob;

	//var inst;
   //inst = instance_nearest(x, y, obj_player);
   //mp_potential_step(inst.x, inst.y,spd, false);
	
	sprite_index=spr_boss3_att
	
	direction = point_direction(x,y,obj_player.x,obj_player.y);

	speed = 20;



	
}
if cooldown>100&&cooldown<150{
	xr=floor(x/1024);
yr=floor(y/768);

if(x<(xr*1024)+64+60||x>(xr*1024)+1024-64-60) 
{
	
	direction=180-direction
	
}
if(y<(yr*768)+64+60||y>(yr*768)+768-64-50)
{
	
	direction=-direction
	
}

x = max (x, (xr*1024)+64+60);
x = min (x, (xr*1024)+1024-64-60);
y = max (y, (yr*768)+64+60);
y = min (y, (yr*768)+768-64-50);
}

if cooldown==100{

sprite_index=spr_boss3_idle
speed = 0;

}

if cooldown==0 cooldown=151;

cooldown=cooldown-1;

pes=true;

if obj_player.x>x image_xscale=-2 else image_xscale=2;



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
//spider--;

}