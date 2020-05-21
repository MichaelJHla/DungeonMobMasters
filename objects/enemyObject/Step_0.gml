//If this character is the active clicked character
// then this block of code is available
if (clicked){
	image_blend = c_olive;
	//The keyboard controls of the character
	if (keyboard_check(ord("W")) && place_free(x, y - collisionSpd)){
		y -= spd;
	}
	if (keyboard_check(ord("S"))&& place_free(x, y + collisionSpd)){
		y += spd;
	}
	if (keyboard_check(ord("A")) && place_free(x - collisionSpd, y)){
		x -= spd;
	}
	if (keyboard_check(ord("D")) && place_free(x + collisionSpd, y)){
		x += spd;
	}
}