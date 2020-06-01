//If this character is the active clicked character
// then this block of code is available
if (clicked){
	image_blend = c_olive;
	//The keyboard controls of the character, additionally it check for a collision with a solid sprite
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