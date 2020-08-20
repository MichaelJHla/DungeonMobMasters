//Do not allow for keyboard movement unless the mob is selected
if (selected){
	//Handles the vertical movement
	if (keyboard_check(ord("W"))){
		vertMoveMult = -1;
	} else if (keyboard_check(ord("S"))){
		vertMoveMult = 1;
	} else {
		vertMoveMult = 0;
	}
	
	//Handles the horizontal movement
	if (keyboard_check(ord("A"))){
		horizMoveMult = -1;
	} else if (keyboard_check(ord("D"))){
		horizMoveMult = 1;
	} else {
		horizMoveMult = 0;
	}
} else {
	//If the character is not selected, make the movement multiplier 0
	// to avoid unwanted movement
	horizMoveMult = 0;
	vertMoveMult = 0;
}

//Update the location of the object based on movement direction
x += horizMoveMult * spd;
y += vertMoveMult * spd;