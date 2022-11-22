if(nahoru){
y++;
nahorux++;
if(nahorux>10)
{
nahoru=false;
nahorux=0;
}
}
if(!nahoru){
y--;
nahorux++;
if(nahorux>10)
{
nahoru=true;
nahorux=0;
}
}
visible=true;
xr=floor(x/1024);
yr=floor(y/768);
x = max (x, (xr*1024)+64+20);
x = min (x, (xr*1024)+1024-64-20);
y = max (y, (yr*768)+64+20);
y = min (y, (yr*768)+768-64-20);