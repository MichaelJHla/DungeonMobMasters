//If this character is the active clicked character
// then this block of code is available
if (clicked){
	image_blend =c_blue;
	//The keyboard controls of the character
	if (keyboard_check(ord("W"))){
		y -= 10;
	}
	if (keyboard_check(ord("S"))){
		y += 10;
	}
	if (keyboard_check(ord("A"))){
		x -= 10;
	}
	if (keyboard_check(ord("D"))){
		x += 10;
	}
}