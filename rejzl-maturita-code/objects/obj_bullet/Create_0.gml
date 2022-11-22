direction = point_direction(x,y,mouse_x,mouse_y);

if (keyboard_check(vk_right))
{
	direction = point_direction(x,y,x+1,y);
	
}
if (keyboard_check(vk_left))
{
	direction = point_direction(x,y,x-1,y);
	direction = point_direction(x,y,x-1,y);
	image_yscale=image_yscale*-1
	//image_xscale=image_xscale*-1
	
	
}
if (keyboard_check(vk_up))
{
	direction = point_direction(x,y,x,y-1);
	
}
if (keyboard_check(vk_down))
{
	direction = point_direction(x,y,x,y+1);
	
}
//direction = direction + random_range(-1,1);
speed = 16;
image_angle=direction;

audio_play_sound(snd_player_shot,1,0)