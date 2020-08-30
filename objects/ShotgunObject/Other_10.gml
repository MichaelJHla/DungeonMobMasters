/// @description Shotgun fire
//This overrides the parent function

//Calculation which offsets the bullets to their proper location when firing
var targetX = x + fireOffsetX * dcos(image_angle) + fireOffsetY * dsin(image_angle);
var targetY = y + fireOffsetY * dcos(image_angle) - fireOffsetX * dsin(image_angle);

//Loop which shoots the proper number of projectiles
for (var i = 0; i < numOfPellets; i++){
	bullet = instance_create_depth(targetX, targetY, 100, bulletType);
	bullet.direction = direction + random_range(pelletSpread * -1, pelletSpread);
}

//Resets the cooldown and indicates that the gun is not ready to fire
cooldown = maxCooldown;
readyToFire = false;