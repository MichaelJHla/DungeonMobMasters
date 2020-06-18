//If all player objects are killed, this sprite is created
if (!instance_exists(playerObject)){
	draw_sprite(playersKilledSprite, -1, cameraFunct.cameraWidth/2, cameraFunct.cameraHeight/3);
}