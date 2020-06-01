spd = 6;

vertSpd = 0;
horizSpd = 0;

if (keyboard_check(vk_up)){
	vertSpd = spd*-1;
}
if (keyboard_check(vk_down)){
	vertSpd = spd;
}
if (keyboard_check(vk_left)){
	horizSpd = spd*-1;
}
if (keyboard_check(vk_right)){
	horizSpd = spd;
}