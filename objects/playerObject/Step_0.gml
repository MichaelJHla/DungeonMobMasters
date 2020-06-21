// Inherit the parent event
event_inherited();

shotCooldown--;

if (shotCooldown <= 0){
	instance_create_layer(x, y, layer, playerBulletObject);
	shotCooldown = cooldownVal;
}