//Update the location of the object based on movement direction
if (horizMoveMult != 0 && vertMoveMult != 0){ //diagonal movement
	x += sqrt((spd*spd)/2)*horizMoveMult;
	y += sqrt((spd*spd)/2)*vertMoveMult;
} else { //Single direction movement
	x += horizMoveMult * spd;
	y += vertMoveMult * spd;
}

//Make the current weapon location in the hands of the character
weapons[currentWeapon].x = x;
weapons[currentWeapon].y = y;