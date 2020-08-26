/// @description Fire
bullet = instance_create_depth(x, y, 100, bulletType); //Create the bullet when the gun is fired
bullet.direction = direction; //The direction fo the bullet is based on the direction of the gun

cooldown = maxCooldown;

readyToFire = false;