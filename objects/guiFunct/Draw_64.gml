//If all player objects are killed, this sprite is created
if (!instance_exists(playerObject)){
	draw_sprite(playersKilledSprite, -1, cameraFunct.cameraWidth/2, cameraFunct.cameraHeight/3);
}

//This draws the gui of the hotbar that shows the different characters that the user can control
draw_sprite(hotswitchBarGui, -1, (cameraFunct.cameraWidth - sprite_get_width(hotswitchBarGui))/2, 800);