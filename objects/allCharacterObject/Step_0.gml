//This block of code decides the movement speed of the character based off if they are moving in a
// single direction or diagonally. If diagonal the character speed is then based off a calulation
// so the player does not go faster than the desired speed
if (horizMult != 0 && vertMult != 0){
	newXPos = x + sqrt((spd*spd)/2)*horizMult;
	newYPos = y + sqrt((spd*spd)/2)*vertMult;
} else {
	newXPos = x + spd*horizMult;
	newYPos = y + spd*vertMult;
}
	
//Checks the collision of the object
if (place_free(newXPos, newYPos - collisionSpd) && place_free(newXPos, newYPos + collisionSpd)){
	y = newYPos;
}
if (place_free(newXPos - collisionSpd, newYPos) && place_free(newXPos + collisionSpd, newYPos)){
	x = newXPos;
}

//Destroys the instance if the health goes below 0
if (hp <= 0){
	instance_destroy();
}