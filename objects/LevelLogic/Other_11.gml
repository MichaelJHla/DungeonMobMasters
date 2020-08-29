/// @description Place mob highlight
//This statement changes the index of current mob in order to account for certain destroyed instances
if (curIndex >= ds_list_size(mobList)){//Safety check to make sure the index is not too high
	curIndex--;
}
event_user(0);//Rehighlights the proper mob