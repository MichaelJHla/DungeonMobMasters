//If this character is the active clicked character
// then this block of code is available
if (clicked){
	image_blend = c_olive;
	
	if (keyboard_check_released(ord("W")) || keyboard_check_released(ord("S"))){
		vertMult = 0;
	}
	if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D"))){
		horizMult = 0;
	}
	
	//The keyboard controls of the character, additionally it check for a collision with a solid sprite
	if (keyboard_check(ord("W")) && place_free(x, y - collisionSpd)){
		vertMult = -1;
	}
	if (keyboard_check(ord("S"))&& place_free(x, y + collisionSpd)){
		vertMult = 1;
	}
	if (keyboard_check(ord("A")) && place_free(x - collisionSpd, y)){
		horizMult = -1;
	}
	if (keyboard_check(ord("D")) && place_free(x + collisionSpd, y)){
		horizMult = 1;
	}
	
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