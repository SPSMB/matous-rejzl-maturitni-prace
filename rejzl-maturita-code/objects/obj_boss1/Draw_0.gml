var pc;
pc = (hp / max_hp) * 100;
draw_self();

xx= x-(x%1024);
yy=y-(y%768);
draw_healthbar(xx+20, yy+768-40, xx+1024-24, yy+768-20, pc, c_black, c_red, c_lime, 0, true, true);