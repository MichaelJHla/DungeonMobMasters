//If this character is the active clicked character
// then this block of code is available
if (clicked){
	image_blend = c_olive;
	//The keyboard controls of the character
	if (keyboard_check(ord("W"))){
		y -= spd;
	}
	if (keyboard_check(ord("S"))){
		y += spd;
	}
	if (keyboard_check(ord("A"))){
		x -= spd;
	}
	if (keyboard_check(ord("D"))){
		x += spd;
	}
}