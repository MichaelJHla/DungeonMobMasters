// Inherit the parent event
event_inherited();

//this boolean represents if the character is the active character
clicked = false;

//When any enemy is made, it is added to the list of enemies
ds_list_add(global.enemyList, id);