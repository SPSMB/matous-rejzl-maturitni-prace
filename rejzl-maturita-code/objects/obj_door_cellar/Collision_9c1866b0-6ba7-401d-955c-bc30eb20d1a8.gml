if(dotek&&odejit)
{
	level++
	hp_multi=hp_multi*1.1
room_goto(rm_first);
}
if(!dotek){
dotek=true;
alarm[0]=  30;
}
global_key=false;