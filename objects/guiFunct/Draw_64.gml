//If all player objects are killed, this sprite is created
if (!instance_exists(playerObject)){
	draw_sprite(playersKilledSprite, -1, cameraFunct.cameraWidth/2, cameraFunct.cameraHeight/3);
}

//This draws the gui of the hotbar that shows the different characters that the user can control
guiBeginX = (cameraFunct.cameraWidth - sprite_get_width(hotswitchBarGui))/2;
guiBeginY = cameraFunct.cameraHeight - sprite_get_height(hotswitchBarGui);
draw_sprite(hotswitchBarGui, -1, guiBeginX, guiBeginY);

//This for loop draws the characters that go inside the GUI so that the user can know who is controlled
for (i = 0; i <ds_list_size(global.enemyList); i++){
	//This draws the box that tells the user who is being played
	if (mainFunct.index == i){
		draw_sprite(characterHighlightGui, -1, guiBeginX + 10 + (100*i), guiBeginY + 10);
	}
	//This draws the character
	draw_sprite(enemySprite, -1, guiBeginX + 50 + (100*i), guiBeginY + 50);
	//This draws the numbers
	draw_text(guiBeginX + 12 + (100*i), guiBeginY + 12, i+1);
	
	//TODO This will draw the health bars
}