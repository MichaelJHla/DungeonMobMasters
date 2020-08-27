/// @description Shotgun fire
//This overrides the parent function

//Loop which shoots the proper number of projectiles
for (var i = 0; i < numOfPellets; i++){
	bullet = instance_create_depth(x, y, 100, bulletType);
	bullet.direction = direction + random_range(pelletSpread * -1, pelletSpread);
}

//Resets the cooldown and indicates that the gun is not ready to fire
cooldown = maxCooldown;
readyToFire = false;