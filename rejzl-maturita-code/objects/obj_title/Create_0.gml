image_alpha=0;
x=room_width/2;
y=room_height/2;
if !audio_is_playing(snd_background_1) audio_play_sound(snd_background_1,0,1);


if(reset){
	kamen=0
	if(char==0){
randomize();
globalvar thescore;
thescore =0;
globalvar hp_multi;
hp_multi =1;


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

globalvar quad;
quad=false;
globalvar double;
double=false;
globalvar back;
back=false;

globalvar cooldown_hp;
cooldown_hp=0;
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
rychlost=13;
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

globalvar quad;
quad=false;
globalvar double;
double=false;
globalvar back;
back=false;

globalvar cooldown_hp;
cooldown_hp=0;
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
rychlost=7;
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

globalvar quad;
quad=false;
globalvar double;
double=false;
globalvar back;
back=false;

globalvar cooldown_hp;
cooldown_hp=0;
}
reset=false;
}
globalvar currx;
currx =10;
globalvar curry;
curry =10;
globalvar kamen;
kamen=0
globalvar rm1;
globalvar rm2;
globalvar rm3;

rm1 = room_duplicate(rm_first);
rm2 = room_duplicate(rm_first);
rm3 = room_duplicate(rm_first);







globalvar food;
food = 5;
