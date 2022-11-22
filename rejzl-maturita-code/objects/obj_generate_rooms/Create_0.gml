var roomheight=20;
var roomwidht=20;
globalvar pole;
for(xx=0;xx<roomwidht;xx++)
{
	for(yy=0;yy<roomheight;yy++)
	{
		pole[xx,yy]=0;
	}

}
dungeonsize=12;

rmx=10;
rmy=10;
pole[rmx,rmy]=5;

for(xx=0;xx<dungeonsize;xx++)
{
	
smer=irandom(3);
	for(cc=0;cc<4;cc++)
	{
		
	if (smer == 0) rmy--;
	if (smer == 1) rmx++;
	if (smer == 2) rmy++;
	if (smer == 3) rmx--;
	if(pole[rmx,rmy]==1||pole[rmx,rmy]==5||rmx=0||rmy=0||rmx=19||rmy==19)
	{
		if (smer == 0) rmy++;
		if (smer == 1) rmx--;
		if (smer == 2) rmy--;
		if (smer == 3) rmx++;	
	}else{
	pole[rmx,rmy]=1;
	break;
	}
	smer++;
	if(smer==4) smer=smer-4;
	
	
	}

}
pole[rmx,rmy]=3;

pes=true;
while(pes){
intxrandom=random(19);
intyrandom=random(19);
if(pole[intxrandom,intyrandom]==1)
{
pes=false;
pole[intxrandom,intyrandom]=2;
}
}

pes=true;
while(pes){
intxrandom=random(19);
intyrandom=random(19);
if(pole[intxrandom,intyrandom]==1)
{
pes=false;
pole[intxrandom,intyrandom]=4;
}
}

pes=true;
while(pes){
intxrandom=random(19);
intyrandom=random(19);
if(pole[intxrandom,intyrandom]==1)
{
pes=false;
pole[intxrandom,intyrandom]=6;
}
}

pes=true;
while(pes){
intxrandom=random(19);
intyrandom=random(19);
if(pole[intxrandom,intyrandom]==1)
{
pes=false;
pole[intxrandom,intyrandom]=7;
}
}

for(xx=1;xx<roomwidht-1;xx++)
{
	for(yy=1;yy<roomheight-1;yy++)
	{
		if(pole[xx,yy]!=0)
		{
			if(pole[xx,yy]==1)
			{
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room);
				typ=irandom(9);
				
				
				if(typ==1){
					instance_create_layer((xx*1024)+512+160,(yy*768)+384+100,"BulletsLayer",obj_enemy1);
					instance_create_layer((xx*1024)+512-160,(yy*768)+384+100,"BulletsLayer",obj_enemy1);
					instance_create_layer((xx*1024)+512+160,(yy*768)+384-100,"BulletsLayer",obj_enemy1);
					instance_create_layer((xx*1024)+512-160,(yy*768)+384-100,"BulletsLayer",obj_enemy1);
				}else if(typ==0){
					instance_create_layer((xx*1024)+512-160,(yy*768)+384,"BulletsLayer",obj_enemy2);
					instance_create_layer((xx*1024)+512+160,(yy*768)+384,"BulletsLayer",obj_enemy2);
				}else if(typ==2){
					for(k=0;k<5;k++)
					{
					for(j=0;j<5;j++){
					instance_create_layer((xx*1024)+512+-64-64+(k*64),(yy*768)+384-64-64+(j*64),"BulletsLayer",obj_vase);
					
					}
					}	
				}
				else if(typ==3){
					for(k=0;k<3;k++)
					{
					for(j=0;j<3;j++){
					
						if(j==k&&j==1){
						instance_create_layer((xx*1024)+512+-64-+(k*64),(yy*768)+384-64+(j*64),"BulletsLayer",obj_enemy2);
						}else{
						instance_create_layer((xx*1024)+512+-64-+(k*64),(yy*768)+384-64+(j*64),"BulletsLayer",obj_vase);
						}
					}
					}	
				}
				else if(typ==4){
					
						instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer",obj_hp_drop);
					
				}else if(typ==5){
					
						instance_create_layer((xx*1024)+512+100,(yy*768)+384,"BulletsLayer",obj_enemy3);
						instance_create_layer((xx*1024)+512-100,(yy*768)+384,"BulletsLayer",obj_enemy3);
					
				}else if(typ==6){
					
						instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer",obj_enemy3);
						instance_create_layer((xx*1024)+512+100,(yy*768)+384,"BulletsLayer",obj_enemy1);
						instance_create_layer((xx*1024)+512-100,(yy*768)+384,"BulletsLayer",obj_enemy1);
					
				}else if(typ==7){
						instance_create_layer((xx*1024)+200,(yy*768)+200,"BulletsLayer",obj_enemy1);
						instance_create_layer((xx*1024)+1024-200,(yy*768)+200,"BulletsLayer",obj_enemy1);
						instance_create_layer((xx*1024)+200,(yy*768)+768-200,"BulletsLayer",obj_enemy1);
						instance_create_layer((xx*1024)+1024-200,(yy*768)+768-200,"BulletsLayer",obj_enemy1);
				
					
				}else if(typ==8){
					
						instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer",obj_coin);
						instance_create_layer((xx*1024)+512+100,(yy*768)+384,"BulletsLayer",obj_coin);
						instance_create_layer((xx*1024)+512-100,(yy*768)+384,"BulletsLayer",obj_coin);					
				}else if(typ==9){
						instance_create_layer((xx*1024)+200,(yy*768)+200,"BulletsLayer",obj_enemy3);
						instance_create_layer((xx*1024)+1024-200,(yy*768)+200,"BulletsLayer",obj_enemy3);
					
				
				
			}}
			if(pole[xx,yy]==3)
			{
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room_boss);
				if(level==0)
				{
					instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer",obj_boss3);
				}
				
				if(level==1)
				{
					instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer",obj_boss2);
				}
				if(level==2)
				{
					instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer",obj_boss1);
				}
				if(level>2)
				{
				obj = choose(obj_boss1,obj_boss2,obj_boss3);
				instance_create_layer((xx*1024)+512,(yy*768)+384,"BulletsLayer", obj);
				}
				
			}
			if(pole[xx,yy]==2)
			{
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room_item);
				instance_create_layer((xx*1024)+512,yy*768+384,"Instances",obj_item_random);
				
			}
			if(pole[xx,yy]==6)
			{
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room);
				instance_create_layer((xx*1024)+512,yy*768+384,"Instances",obj_key);
				
				instance_create_layer((xx*1024)+512-100,yy*768+384-100,"Instances",obj_enemy2);
				instance_create_layer((xx*1024)+512-100,yy*768+384+100,"Instances",obj_enemy2);
				instance_create_layer((xx*1024)+512+100,yy*768+384+100,"Instances",obj_enemy2);
				instance_create_layer((xx*1024)+512+100,yy*768+384-100,"Instances",obj_enemy2);
				
				
			}
			if(pole[xx,yy]==4)
			{
				globalvar prefobj;
				prefobj=-1;
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room_shop);
				instance_create_layer((xx*1024)+512-200,yy*768+514,"Instances",obj_item_random_shop);
				instance_create_layer((xx*1024)+512-200,yy*768+514-320,"Instances",obj_hp_drop_half_shop);
				instance_create_layer((xx*1024)+512+200,yy*768+514,"Instances",obj_item_random_shop);
				instance_create_layer((xx*1024)+512+200,yy*768+514-320,"Instances",obj_hp_drop_shop);
					
					
			}
			if(pole[xx,yy]==5)
			{
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room_start);
			}
			if(pole[xx,yy]==7)
			{
				instance_create_layer((xx*1024),yy*768,"Instances",obj_room_item_dmg);
				instance_create_layer((xx*1024)+512,yy*768+384,"Instances",obj_spike);
				
			}
			
			
			
			
			if(pole[xx,yy-1]==3&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top2);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
				
			}
			if(pole[xx,yy+1]==3&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot2);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==3&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right2);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==3&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left2);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
			
			
			if(pole[xx,yy-1]==2&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top1);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
			}
			if(pole[xx,yy+1]==2&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot1);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==2&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right1);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==2&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left1);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
			
			
			if(pole[xx,yy-1]==6&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
			}
			if(pole[xx,yy+1]==6&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==6&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==6&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
			
			
			
			if(pole[xx,yy-1]==1&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
			}
			if(pole[xx,yy+1]==1&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==1&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==1&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
			
			if(pole[xx,yy-1]==4&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top3);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
			}
			if(pole[xx,yy+1]==4&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot3);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==4&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right3);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==4&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left3);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
			
			
			if(pole[xx,yy-1]==5&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
			}
			if(pole[xx,yy+1]==5&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==5&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==5&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
			
			
			
			
			if(pole[xx,yy-1]==7&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,yy*768,"BulletsLayer",obj_door_top4);
				instance_create_layer((xx*1024)+512-32,yy*768,"EnemyLayer",obj_door_chain_top);
			}
			if(pole[xx,yy+1]==7&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"BulletsLayer",obj_door_bot4);
				instance_create_layer((xx*1024)+512-32,(yy*768)+768-64,"EnemyLayer",obj_door_chain_bot);
			}
			if(pole[xx+1,yy]==7&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"BulletsLayer",obj_door_right4);
				instance_create_layer((xx*1024)+1024-64,(yy*768)+384-32,"EnemyLayer",obj_door_chain_right);
			}
			if(pole[xx-1,yy]==7&&pole[xx,yy]!=3)
			{
				instance_create_layer((xx*1024),(yy*768)+384-32,"BulletsLayer",obj_door_left4);
				instance_create_layer((xx*1024),(yy*768)+384-32,"EnemyLayer",obj_door_chain_left);
			}
			
			
		}
	}

}
instance_create_layer((10*1024)+512,(10*768)+384,"EnemyLayer",obj_player);