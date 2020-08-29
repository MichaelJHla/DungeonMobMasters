if (active){
	//Point the gun towards the mouse
	direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle = direction;
} 

cooldown--;

if (cooldown <= 0){
	cooldown = 0;
	readyToFire = true;
}