hp=floor(80*hp_multi);
max_hp=floor(80*hp_multi);
pes=true;
hpprev=hp;
mobx=(x-(x%1024))/1024;
moby=(y-(y%768))/768;
moveup=22;
moveleft=60;
spd=rychlost-1;
cooldown=200;
global_cd_mob=200;
spider=350;
image_xscale=2;
image_yscale=2;

globalvar dir;
dir=0;
aim=true
aimcd=0
immune=false;

xx= x-(x%1024);
yy=y-(y%768);
instance_create_layer(xx+8, yy+768-59,"EnemyBullets",obj_skulll);
instance_create_layer(xx+1024-44-8, yy+768-59,"EnemyBullets",obj_skullr);