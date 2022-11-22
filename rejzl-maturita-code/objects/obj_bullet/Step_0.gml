xr=floor(x/1024);
yr=floor(y/768);

if(x<(xr*1024)+64||x>(xr*1024)+1024-64||y<(yr*768)+64||y>(yr*768)+768-64)
{
instance_destroy();
}

//x = max (x, (xr*1024)+64+20);
//x = min (x, (xr*1024)+1024-64-20);
//y = max (y, (yr*768)+64+20);
//y = min (y, (yr*768)+768-64-20);
