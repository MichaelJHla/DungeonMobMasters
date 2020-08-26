//This if statement is used to make the index proper based on what mob was killed
if (ds_list_find_index(LevelLogic.mobList, id) < LevelLogic.curIndex){
	LevelLogic.curIndex--;
}

//Delete the mob from the list
ds_list_delete(LevelLogic.mobList, ds_list_find_index(LevelLogic.mobList, id));

with (LevelLogic) { //Places the highlight on the proper character
	event_user(0);
}