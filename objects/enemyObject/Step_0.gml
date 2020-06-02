//If this character is the active clicked character
// then this block of code is available
if (clicked){
	image_blend = c_olive; //Allows a visual queue of what character is selected
	
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
	
	//Checks the collision of the object
	if (!place_free(x, y - collisionSpd) || !place_free(x, y + collisionSpd)){
		vertMult = 0;
	}
	if (!place_free(x - collisionSpd, y) || !place_free(x + collisionSpd, y)){
		horizMult = 0;
	}
	
	//This block of code decides the movement speed of the character based off if they are moving in a
	// single direction or diagonally. If diagonal the character speed is then based off a calulation
	// so the player does not go faster than the desired speed
	if (horizMult != 0 && vertMult != 0){
		x+=sqrt((spd*spd)/2)*horizMult;
		y+=sqrt((spd*spd)/2)*vertMult;
	} else {
		x+=spd*horizMult;
		y+=spd*vertMult;
	}
	
	//Reduces the cooldown each frame
	shotCooldown--;
	
	//The keyboard controls to activate a shot
	if (keyboard_check(vk_up)||keyboard_check(vk_down)||keyboard_check(vk_left)||keyboard_check(vk_right)){
		if (shotCooldown <= 0){
			instance_create_layer(x, y, layer, bulletObject);
			shotCooldown = cooldownVal;
		}
	}
}