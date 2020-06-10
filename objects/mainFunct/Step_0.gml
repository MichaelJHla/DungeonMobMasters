//This for loop is designed to highlight the correct enemy object
for (i = 0; i < ds_list_size(global.enemyList); i++){
	curObj = ds_list_find_value(global.enemyList, i); //This is the current object in the list
	if (i == index){ //If this is the currently selected character, say it is clicked
		curObj.clicked = true;
	} else { //Otherwise say it is not clicked
		curObj.clicked = false;
	}
}