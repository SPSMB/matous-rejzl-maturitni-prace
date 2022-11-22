obj_player_head.image_index=0;
if (
keyboard_check(ord("D"))&&keyboard_check(ord("W"))&&keyboard_check(ord("S"))&&keyboard_check(ord("A"))
) 
{
sprite_index = spr_player_idle;
obj_player_head.image_index=0;
}else
if (keyboard_check(ord("D"))&&keyboard_check(ord("W"))&&keyboard_check(ord("S"))) 
{
	sprite_index = spr_player_left;
	obj_player_head.image_index=2;
	image_xscale = 2.5;
	x = x + rychlost;
}else
if (keyboard_check(ord("D"))&&keyboard_check(ord("W"))&&keyboard_check(ord("A"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=4;
	image_xscale = 2.5;
	y = y + -rychlost;
}else
if (keyboard_check(ord("A"))&&keyboard_check(ord("W"))&&keyboard_check(ord("S"))) 
{
	sprite_index = spr_player_left;
	obj_player_head.image_index=6;
	image_xscale = -2.5;
	x = x + -rychlost;
}else
if (keyboard_check(ord("A"))&&keyboard_check(ord("S"))&&keyboard_check(ord("D"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=0;
	image_xscale = 2.5;
	y = y + rychlost;
}else
if (keyboard_check(ord("D"))&&keyboard_check(ord("W"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=4;
	image_xscale = 2.5;
	x = x + rychlost;
	y = y + -rychlost;
}else
if (keyboard_check(ord("A"))&&keyboard_check(ord("W"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=4;
	image_xscale = 2.5;
	x = x + -rychlost;
	y = y + -rychlost;
}else
if (keyboard_check(ord("D"))&&keyboard_check(ord("S"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=0;
	image_xscale = 2.5;
	x = x + rychlost;
	y = y + rychlost;
}else
if (keyboard_check(ord("A"))&&keyboard_check(ord("S"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=0;
	image_xscale = 2.5;
	x = x + -rychlost;
	y = y + rychlost;
}else
if (keyboard_check(ord("W"))&&keyboard_check(ord("S"))) 
{
sprite_index = spr_player_idle;
obj_player_head.image_index=0;
}else
if (keyboard_check(ord("D"))&&keyboard_check(ord("A"))) 
{
sprite_index = spr_player_idle;
obj_player_head.image_index=0;
}else
if (keyboard_check(ord("D"))) 
{
	sprite_index = spr_player_left;
	image_xscale = 2.5;
	obj_player_head.image_index=2;
	x = x + rychlost;
}else
if (keyboard_check(ord("A")))
{
	sprite_index = spr_player_left;
	obj_player_head.image_index=6;
	image_xscale = -2.5;
	x = x + -rychlost;
}else
if (keyboard_check(ord("W"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=4;
	y = y + -rychlost;
}else
if (keyboard_check(ord("S"))) 
{
	sprite_index = spr_player_up;
	obj_player_head.image_index=0;
	y = y + rychlost;
}else{
	sprite_index = spr_player_idle;
	obj_player_head.image_index=0;
}

xr=floor(x/1024);
yr=floor(y/768);

x = max (x, (xr*1024)+64+20);
x = min (x, (xr*1024)+1024-64-20);
y = max (y, (yr*768)+64+20);
y = min (y, (yr*768)+768-64-20);


if (keyboard_check(vk_right))
{
	//obj_player_head.image_index++;
	//alarm[0]=10;
	obj_player_head.image_index=2;
}
if (keyboard_check(vk_left))
{
obj_player_head.image_index=6;
}
if (keyboard_check(vk_up))
{
obj_player_head.image_index=4;
}
if (keyboard_check(vk_down))
{
obj_player_head.image_index=0;
}
if quad global_cd=max(global_cd,7) else global_cd=max(global_cd,5) 

hp_player=min(hp_player,18)
hp_player_max=min(hp_player_max,18)
rychlost=min(rychlost,30)

if (keyboard_check(vk_right)&&cooldown<1)
{	
	cooldown=global_cd;
	obj_player_head.image_index++;
	//alarm[0]=10;
	if(quad){
	instance_create_layer(x-10,y-20+37,"BulletsLayer",obj_bullet);
	instance_create_layer(x,y-20+14,"BulletsLayer",obj_bullet);
	instance_create_layer(x,y-20-14,"BulletsLayer",obj_bullet);
	instance_create_layer(x-10,y-20-37,"BulletsLayer",obj_bullet);
	}else if(double){
	instance_create_layer(x,y-20+12,"BulletsLayer",obj_bullet);
	instance_create_layer(x,y-20-12,"BulletsLayer",obj_bullet);
	}else{
	instance_create_layer(x,y-20,"BulletsLayer",obj_bullet);
	}
	
	
}
if (keyboard_check(vk_left)&&cooldown<1)
{
	//image_index=2;
	cooldown=global_cd;
	obj_player_head.image_index++;
		if(quad){
	instance_create_layer(x+10,y-20+37,"BulletsLayer",obj_bullet);
	instance_create_layer(x,y-20+14,"BulletsLayer",obj_bullet);
	instance_create_layer(x,y-20-14,"BulletsLayer",obj_bullet);
	instance_create_layer(x+10,y-20-37,"BulletsLayer",obj_bullet);
	}else if(double){
	instance_create_layer(x,y-20+12,"BulletsLayer",obj_bullet);
	instance_create_layer(x,y-20-12,"BulletsLayer",obj_bullet);
	}else{
	instance_create_layer(x,y-20,"BulletsLayer",obj_bullet);
	}
	
}
if (keyboard_check(vk_up)&&cooldown<1)
{
	//image_index=1;
	cooldown=global_cd;
	obj_player_head.image_index++;
	if(quad){
	instance_create_layer(x+37,y-20+10,"BulletsLayer",obj_bullet);
	instance_create_layer(x+14,y-20,"BulletsLayer",obj_bullet);
	instance_create_layer(x-14,y-20,"BulletsLayer",obj_bullet);
	instance_create_layer(x-37,y-20+10,"BulletsLayer",obj_bullet);
	}else if(double){
	instance_create_layer(x+12,y-20,"BulletsLayer",obj_bullet);
	instance_create_layer(x-12,y-20,"BulletsLayer",obj_bullet);
	}else{
	instance_create_layer(x,y-20,"BulletsLayer",obj_bullet);
	}
}
if (keyboard_check(vk_down)&&cooldown<1)
{
	//image_index=0;
	cooldown=global_cd;
	obj_player_head.image_index++;
	if(quad){
	instance_create_layer(x+37,y-20-10,"BulletsLayer",obj_bullet);
	instance_create_layer(x+14,y-20,"BulletsLayer",obj_bullet);
	instance_create_layer(x-14,y-20,"BulletsLayer",obj_bullet);
	instance_create_layer(x-37,y-20-10,"BulletsLayer",obj_bullet);
	}else if(double){
	instance_create_layer(x+12,y-20,"BulletsLayer",obj_bullet);
	instance_create_layer(x-12,y-20,"BulletsLayer",obj_bullet);
	}else{
	instance_create_layer(x,y-20,"BulletsLayer",obj_bullet);
	}
}
if (cooldown_hp!=0)
{
	if(cooldown_hp%3==0)
	{
	visible=false;
	obj_player_head.visible=false;
	}else{
	obj_player_head.visible=true;
	visible=true;
	}
	cooldown_hp=cooldown_hp-1;
    
}
cooldown=cooldown-1;

camera_set_view_pos(view_camera[0], x-(x%1024), y-(y%768) );

globalvar xxx;
globalvar yyy;
xxx=x-(x%1024);
yyy=y-(y%768);

with(obj_hp_all){

x=xxx;
y=yyy;
}
hp_prev=-1
with(obj_coin1){

x=xxx+800;
y=yyy+1000;
}


currx=(x-(x%1024))/1024;
curry=(y-(y%768))/768;

if(hp_player==0)
{
room_goto(rm_death);
}

if (keyboard_check(ord("R"))) 
{
	reset=true;
room_goto(rm_first);

}

  
if (keyboard_check(ord("O"))&&keyboard_check(ord("B"))) 
{
	global_cd--


}
  if (keyboard_check(ord("P"))&&keyboard_check(ord("B"))) 
{
	global_cd++

}
    if (keyboard_check(ord("I"))&&keyboard_check(ord("B"))) 
{
 global_coin++
}
    if (keyboard_check(ord("Y"))||keyboard_check(ord("Z"))&&keyboard_check(ord("B"))) 
{
 rychlost++
}


if (keyboard_check(vk_escape)) 
{
	reset=true;
room_goto(rm_menu);
}


var i;
var u=true;;
if(instance_exists(obj_enemy1)){
	//global_coin++
for (i = 0; i < instance_number(obj_enemy1); i += 1)
   {
   
   if point_in_rectangle(instance_find(obj_enemy1,i).x,instance_find(obj_enemy1,i).y, xxx,yyy, xxx+1024, yyy+768)
   {
	  global_door=false;
	  u=false;
	  break;
   }else{
   global_door=true;
   
   }
   }
}
if(u){
if(instance_exists(obj_enemy2)){
	
for (i = 0; i < instance_number(obj_enemy2); i += 1)
   {
   
   if point_in_rectangle(instance_find(obj_enemy2,i).x,instance_find(obj_enemy2,i).y, xxx,yyy, xxx+1024, yyy+768)
   {
	  global_door=false;
	  u=false;
	  break;
   }else{
   global_door=true; 
   }   
   }   
   }
   
   else{

}
}


if(u){
if(instance_exists(obj_enemy3)){
	
for (i = 0; i < instance_number(obj_enemy3); i += 1)
   {
   
   if point_in_rectangle(instance_find(obj_enemy3,i).x,instance_find(obj_enemy3,i).y, xxx,yyy, xxx+1024, yyy+768)
   {
	  global_door=false;
	  
	  break;
   }else{
   global_door=true; 
   }   
   }   
   }
   
   else{
global_door=true;
}
}
u=true;
obj_player_head.x=obj_player.x;
obj_player_head.y=obj_player.y-29;


