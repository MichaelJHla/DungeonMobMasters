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

weapons[0].active = false;
weapons[1].active = false;
if (selected){
	weapons[currentWeapon].active = true;
}

event_inherited();