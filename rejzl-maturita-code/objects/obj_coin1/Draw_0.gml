//draw_text_outlined(x, y, outline color, string color, string)  
var xx,yy;  
xx = x+36;  
yy = y-26;  
pes="pes je pes je pes";
pes=string(global_coin)+"x";
//Outline  
draw_self();
draw_set_color(c_dkgray);  
draw_text_transformed(xx+2, yy+2, pes,2.5,2.5,0);  
draw_text_transformed(xx-1, yy-2, pes,2.5,2.5,0);  
draw_text_transformed(xx,   yy+2, pes,2.5,2.5,0);  
draw_text_transformed(xx+2,   yy, pes,2.5,2.5,0);  
draw_text_transformed(xx,   yy-2, pes,2.5,2.5,0);  
draw_text_transformed(xx-2,   yy, pes,2.5,2.5,0);  
draw_text_transformed(xx-2, yy+2, pes,2.5,2.5,0);  
draw_text_transformed(xx+2, yy-2, pes,2.5,2.5,0);  

//Text  
draw_set_color(c_white);  
draw_text_transformed(xx, yy, pes,2.5,2.5,0);  