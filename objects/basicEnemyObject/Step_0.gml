// Inherit the parent event
event_inherited();

if (shotCooldown < 0){//This if statement is used to prevent overflow
	shotCooldown = 0;
}
//Reduce the cooldown each frame even while the character is not selected
shotCooldown--;

if (clicked){
	//The mouse controls to activate a shot
	//It activates if the cooldown is ready and if the mouse button is clicked
	if (shotCooldown <= 0 && mouse_check_button(mb_left)){
		instance_create_layer(x, y, layer, enemyBulletObject);
		shotCooldown = cooldownVal;
	}
}