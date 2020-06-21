//If this character is the active clicked character
// then this block of code is available
if (clicked){
	//If a key is released the movement multiplier is set to 0
	if (keyboard_check_released(ord("W")) || keyboard_check_released(ord("S"))){
		vertMult = 0;
	}
	if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D"))){
		horizMult = 0;
	}
	
	//The keyboard controls of the character, additionally it check for a collision with a solid sprite
	if (keyboard_check(ord("W"))){
		vertMult = -1;
	}
	if (keyboard_check(ord("S"))){
		vertMult = 1;
	}
	if (keyboard_check(ord("A"))){
		horizMult = -1;
	}
	if (keyboard_check(ord("D"))){
		horizMult = 1;
	}
	
	event_inherited();//Inherits the previous event in the proper location
} else {
	//Makes it so the enemy object movement multipliers are set to 0 when they are not selected
	// this way when the user returns to an object they do not move unintentionally
	horizMult = 0;
	vertMult = 0;
}

//Destroys the instance if the health goes below 0
if (hp <= 0){
	instance_destroy();
}