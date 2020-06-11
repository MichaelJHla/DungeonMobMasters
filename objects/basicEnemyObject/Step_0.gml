// Inherit the parent event
event_inherited();

if (clicked){
	//Reduce the cooldown each frame
	shotCooldown--;
	
	//The keyboard controls to activate a shot
	if (shotCooldown <= 0 && mouse_check_button(mb_left)){
		instance_create_layer(x, y, layer, bulletObject);
		shotCooldown = cooldownVal;
	}
}