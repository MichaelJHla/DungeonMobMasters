//Wraps the number around so that it stays within the bounds of the number of mobs
if (curIndex <= 0){
	curIndex = ds_list_size(mobList) - 1;
} else {
	curIndex--;
}