// Inherit the parent event
event_inherited();

if (clicked){
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