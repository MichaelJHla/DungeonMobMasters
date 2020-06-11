//The speed a bullet flies
spd = 10;

//defaults to 0, but used to represent the direction the bullets will go
// these will be recorded as multipliers rather than as specefic values
vertMult = 0;
horizMult = 0;

//Checks what keys on the keyboard are being pressed to know the shot direction
//Changes the multiplier values accordingly
if (keyboard_check(vk_up)){
	vertMult = -1;
}
if (keyboard_check(vk_down)){
	vertMult = 1;
}
if (keyboard_check(vk_left)){
	horizMult = -1;
}
if (keyboard_check(vk_right)){
	horizMult = 1;
}

//If the shot is a diagonal shot, then a calculation is performed to make the speed similar to a 
// single direction shot
if (vertMult != 0 && horizMult != 0){
	spd = sqrt((spd*spd)/2);
}