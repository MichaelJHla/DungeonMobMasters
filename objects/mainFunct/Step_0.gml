for (i = 0; i < ds_list_size(global.enemyList); i++){
	curObj = ds_list_find_value(global.enemyList, i);
	if (i == index){
		curObj.clicked = true;
	} else {
		curObj.clicked = false;
	}
}