//Wraps the number around so that it stays within the bounds of the number of mobs
if (curIndex >= ds_list_size(mobList) - 1){
	curIndex = 0;
} else {
	curIndex++;
}