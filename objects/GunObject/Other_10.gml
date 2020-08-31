/// @description Fire

//Calculation which offsets the bullets to their proper location when firing
var targetX = x + fireOffsetX * dcos(image_angle) + fireOffsetY * dsin(image_angle);
var targetY = y + fireOffsetY * dcos(image_angle) - fireOffsetX * dsin(image_angle);

//Create the bullet when the gun is fired
bullet = instance_create_depth(targetX, targetY, 100, bulletType); 
bullet.direction = direction; //The direction fo the bullet is based on the direction of the gun

cooldown = maxCooldown;

readyToFire = false;