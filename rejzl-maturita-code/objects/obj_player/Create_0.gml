cooldown=0;

image_index=0;
image_xscale=2.5;
image_yscale=3.5;



wall_x_max = max (x, 80);
wall_x_min = min (x, room_width - 80);
wall_y_max = max (y, 0 + 160);
wall_y_min = min (y, room_height - 80);


instance_create_layer(x*50+view_xview[0],45+view_yview[0],"BulletsLayer",obj_hp_all);
instance_create_layer(xxx+900,yyy+20,"BulletsLayer",obj_coin1);
//instance_create_layer(x+60, y+230,"EnemyBullets", obj_coin);
//instance_create_layer(x+60+100, y+230,"EnemyBullets", obj_key);

xx=floor(x/1024);
yy=floor(y/768);

instance_create_layer(x,y,"EnemyBullets",obj_player_head);

//instance_create_layer(x+200,y,"EnemyBullets",obj_boss3);


//randomize()
//for(xx=0;xx<100000;xx++){
//	vv=floor(random_range(-1500,1500))
//	bb=floor(random_range(-1500,1500))
//    instance_create_layer(x+vv,y+bb,"EnemyBullets",obj_coin);
//}
//instance_create_layer(x,y,"EnemyBullets",obj_coin);


//instance_create_layer(x+100,y,"EnemyBullets",obj_enemy3);
//instance_create_layer(x-100,y,"EnemyBullets",obj_enemy3);
//instance_create_layer(x,y,"EnemyBullets",obj_boss1);
//instance_create_layer(x+200,y+100,"EnemyBullets",obj_item_rock);
//instance_create_layer(x+400,y+100,"EnemyBullets",obj_item_glasses);
//instance_create_layer(x+400,y-100,"EnemyBullets",obj_item_quad_eye);
//instance_create_layer(x+400,y-100,"EnemyBullets",obj_item_pops);
//instance_create_layer(x+200,y+100,"EnemyBullets",obj_enemy1);


instance_destroy(obj_item_rock)

kkamen=kamen
rot=360/kamen
for(c=kamen;c>0;c--){
	kamen=rot*c
 instance_create_layer(x+(200)*c,y-(200)*c,"EnemyBullets",obj_item_rock);

}
kamen=kkamen








if(reset){
	hp_multi =1;
	kamen=0
	if(char==0){
randomize();
globalvar thescore;
thescore =0;


globalvar hp_player;
hp_player=6;
globalvar hp_player_max;
hp_player_max=6;
globalvar hp_prev;
hp_prev =-1;


globalvar rychlost;
rychlost=10;
globalvar global_cd;
global_cd=14;
globalvar global_coin;
global_coin=0;
globalvar global_dmg;
global_dmg=1;

globalvar global_key;
global_key=false;

globalvar global_door;
global_door=false;


globalvar cooldown_hp;
cooldown_hp=0;




globalvar quad;
quad=false;
globalvar double;
double=false;
globalvar back;
back=false;



}

if(char==1){
randomize();
globalvar thescore;
thescore =0;


globalvar hp_player;
hp_player=4;
globalvar hp_player_max;
hp_player_max=4;
globalvar hp_prev;
hp_prev =-1;


globalvar rychlost;
rychlost=12;
globalvar global_cd;
global_cd=14;
globalvar global_coin;
global_coin=3;
globalvar global_dmg;
global_dmg=1.5;

globalvar global_key;
global_key=false;

globalvar global_door;
global_door=false;


globalvar cooldown_hp;
cooldown_hp=0;




globalvar quad;
quad=false;
globalvar double;
double=false;
globalvar back;
back=false;



}


if(char==2){
randomize();
globalvar thescore;
thescore =0;


globalvar hp_player;
hp_player=8;
globalvar hp_player_max;
hp_player_max=8;
globalvar hp_prev;
hp_prev =-1;


globalvar rychlost;
rychlost=8;
globalvar global_cd;
global_cd=14;
globalvar global_coin;
global_coin=0;
globalvar global_dmg;
global_dmg=1;

globalvar global_key;
global_key=false;

globalvar global_door;
global_door=false;


globalvar cooldown_hp;
cooldown_hp=0;




globalvar quad;
quad=false;
globalvar double;
double=false;
globalvar back;
back=false;



}
reset=false;
}
