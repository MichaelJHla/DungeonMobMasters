if (place_free(x, y - collisionSpd)){
	y -= spd;
}
if (place_free(x, y + collisionSpd)){
	y += spd;
}
if (place_free(x - collisionSpd, y)){
	x -= spd;
}
if (place_free(x + collisionSpd, y)){
	x += spd;
}

x -= spd;
y -= spd;