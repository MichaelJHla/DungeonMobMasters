// Inherit the parent event
event_inherited();

if (clicked){
	//Reduce the cooldown each frame
	shotCooldown--;
	
	//The mouse controls to activate a shot
	//It activates if the cooldown is ready and if the mouse button is clicked
	if (shotCooldown <= 0 && mouse_check_button(mb_left)){
		instance_create_layer(x, y, layer, bulletObject);
		shotCooldown = cooldownVal;
	}
}