if(mobx==currx&&moby==curry)
{
if (instance_exists(obj_player)&&pes)
{
	//move_towards_point(obj_player.x,obj_player.y,spd);
	var inst;
   inst = instance_nearest(x, y, obj_player);
   mp_potential_step(inst.x, inst.y,spd, false);
}

if (place_meeting(x,y,obj_enemy1))
{
	if(place_meeting(x+50,y,obj_enemy1))
	{
		x=x-3;	
	}
	if(place_meeting(x-50,y,obj_enemy1))
	{
		x=x+3;	
	}
	if(place_meeting(x,y-50,obj_enemy1))
	{
		y=y+3;	
	}
	if(place_meeting(x,y+50,obj_enemy1))
	{
		y=y-3;	
	}

}


pes=true;
image_angle= direction+90;

if(hp!=hpprev)
{
image_blend = c_red;
alarm[0]=4;

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