image_alpha = min(image_alpha+0.005,1);

if (keyboard_check(ord("R"))) 
{
	reset=true;
	audio_stop_sound(snd_you_died);
	room_goto(rm_menu);
}

if (keyboard_check(vk_escape)) 
{
	reset=true;
	room_goto(rm_menu);
		audio_stop_sound(snd_you_died);
}
if (keyboard_check(vk_enter)) 
{
	reset=true;
	room_goto(rm_menu);
	audio_stop_sound(snd_you_died);
}

